#!/usr/bin/env bash
# build-local.sh — build the IG locally with EXACTLY the toolchain CI pins.
#
# WHY THIS EXISTS
#   `_build.sh` (the HL7 stock script) downloads
#   `fhir-ig-publisher/releases/latest/download/publisher.jar`. So a local build
#   silently uses whatever HL7 released most recently, while CI pins a fixed
#   version — measured 2026-09-01: the tree was rendered by 2.3.3 while
#   ig-publisher.yml pinned 2.2.11. `npx sushi` drifts the same way (3.20.1 vs
#   the pinned 3.20.0). Two different toolchains produce two different qa.txt
#   error counts, so a local "11 errors" says nothing about what CI will report.
#
#   The upstream recipe (docs/recipes/first-build-in-devcontainer.md in
#   ig-template-mii-kds) documents the pinned download as a curl + sha256sum
#   the reader retypes, and warns that its copy of the numbers drifts from CI.
#   This script removes that failure mode by READING the pins from the workflow
#   instead of restating them: there is no fourth copy to drift.
#
# SOURCE OF TRUTH
#   .github/workflows/ig-publisher.yml `env:` — PUBLISHER_VERSION,
#   PUBLISHER_SHA256, SUSHI_VERSION. go-publish.yml and module-release.yml carry
#   identical blocks (a workflow cannot read another's env:); they are kept in
#   step by scripts/toolchain-pins.test.mjs, which fails the build when they
#   drift. Bump the pins there, never here.
#
# USAGE
#   scripts/build-local.sh [--sushi-only] [--tx <url>] [-- <extra publisher args>]
#     --sushi-only   run the pinned SUSHI and stop (fast FSH check)
#     --tx <url>     terminology server (default: the public HL7 server, which
#                    is also CI's fallback when the SU-TermServ cert is absent)
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "${repo_root}"

WORKFLOW=".github/workflows/ig-publisher.yml"
TX="https://tx.fhir.org"
SUSHI_ONLY="false"
extra_args=()
while [ $# -gt 0 ]; do
  case "$1" in
    --sushi-only) SUSHI_ONLY="true"; shift ;;
    --tx) TX="${2:?--tx needs a URL}"; shift 2 ;;
    --) shift; extra_args=("$@"); break ;;
    -h|--help) sed -n '2,33p' "$0"; exit 0 ;;
    *) echo "unknown argument: $1" >&2; exit 2 ;;
  esac
done

# Read one `KEY: "value"` pin out of the workflow's env: block. Deliberately
# strict: an unreadable pin is an error, never a silent fallback to "latest" —
# that fallback is the whole defect this script exists to prevent.
read_pin() {
  local key="$1" value
  value="$(sed -n -E "s/^[[:space:]]*${key}:[[:space:]]*\"?([^\"[:space:]]+)\"?[[:space:]]*$/\1/p" "${WORKFLOW}" | head -1)"
  [ -n "${value}" ] || { echo "ERROR: no ${key} pin in ${WORKFLOW}" >&2; exit 1; }
  printf '%s' "${value}"
}

PUBLISHER_VERSION="$(read_pin PUBLISHER_VERSION)"
PUBLISHER_SHA256="$(read_pin PUBLISHER_SHA256)"
SUSHI_VERSION="$(read_pin SUSHI_VERSION)"
echo "Pins from ${WORKFLOW}: publisher=${PUBLISHER_VERSION} sushi=${SUSHI_VERSION}"

# sha256, portably: macOS ships shasum, Linux runners sha256sum.
sha256_of() {
  if command -v sha256sum >/dev/null 2>&1; then sha256sum "$1" | cut -d' ' -f1
  else shasum -a 256 "$1" | cut -d' ' -f1; fi
}

# --- SUSHI, pinned -----------------------------------------------------------
# `npx fsh-sushi@<version>` resolves the exact version; a bare `npx sushi` takes
# the latest. CI installs globally and calls `sushi .` — same binary, same args.
echo "==> SUSHI ${SUSHI_VERSION}"
npx --yes "fsh-sushi@${SUSHI_VERSION}" .

if [ "${SUSHI_ONLY}" = "true" ]; then
  echo "--sushi-only: stopping before the IG Publisher."
  exit 0
fi

# --- IG Publisher, pinned and checksum-verified ------------------------------
# Cached in input-cache/ so repeat builds do not re-download. The checksum is
# verified on every run, not only after a download: it is what catches a jar
# left behind by _build.sh or by an earlier pin.
jar="input-cache/publisher.jar"
mkdir -p input-cache
if [ -f "${jar}" ] && [ "$(sha256_of "${jar}")" = "${PUBLISHER_SHA256}" ]; then
  echo "==> IG Publisher ${PUBLISHER_VERSION} (cached, checksum ok)"
else
  if [ -f "${jar}" ]; then
    echo "==> cached jar is NOT the pinned ${PUBLISHER_VERSION} — replacing it"
  fi
  url="https://github.com/HL7/fhir-ig-publisher/releases/download/${PUBLISHER_VERSION}/publisher.jar"
  echo "==> downloading IG Publisher ${PUBLISHER_VERSION}"
  curl --fail --location --progress-bar "${url}" --output "${jar}.tmp"
  actual="$(sha256_of "${jar}.tmp")"
  if [ "${actual}" != "${PUBLISHER_SHA256}" ]; then
    rm -f "${jar}.tmp"
    echo "ERROR: checksum mismatch for publisher ${PUBLISHER_VERSION}" >&2
    echo "  expected ${PUBLISHER_SHA256}" >&2
    echo "  actual   ${actual}" >&2
    echo "  A version bumped without its checksum is the mistake this catches;" >&2
    echo "  fix both together in ${WORKFLOW}." >&2
    exit 1
  fi
  mv "${jar}.tmp" "${jar}"
fi

echo "==> IG Publisher build (-tx ${TX})"
java -Xmx6g -jar "${jar}" -ig ig.ini -tx "${TX}" "${extra_args[@]}"

test -s output/index.html
echo "Build complete — output/index.html"
