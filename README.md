# mii-kds-module-template

A **GitHub template repository** for building an **MII Kerndatensatz (KDS) module
Implementation Guide**. Click *Use this template* and you get a working IG project
— FHIR tooling, CI, bilingual previews and the MII release process already wired
up — so you can start with profiles and content instead of setup.

The MII look comes from the separate IG template
[`ig-template-mii-kds`](https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds),
which this scaffold references (and keeps up to date automatically).

See what it renders as before you start:
<https://forschungsgruppe-digital-health.github.io/mii-kds-module-template/> — the
demo module of the current release, plus two real MII KDS modules migrated onto
this template.

> **Status: prototype.** Usable and released, but pending discussion in the MII
> Taskforce Kerndatensatz — see [docs/project-status.md](docs/project-status.md).

> **⚠️ When you click *Use this template*, tick “Include all branches”.**
> Otherwise you get `main` only, without the `dev` branch this scaffold works
> with. The first-run bootstrap in step 2 creates `dev` for you if you forgot.

## Quickstart

1. **Create your repo** — *Use this template*, tick *Include all branches*.
2. **Run the first-run bootstrap** — `bash scripts/first-run-bootstrap.sh` (dry
   run), then `--apply`. It protects both branches and removes the template's
   own SemVer release automation, which a CalVer module must not carry. Run it
   even if you ticked *Include all branches*.
3. **Open it in the dev container** (VS Code → *Reopen in Container*). It brings
   Java, Node, SUSHI, Jekyll and Graphviz.
   → [details](docs/recipes/first-build-in-devcontainer.md)
4. **Fill in your module's values** — start in `sushi-config.yaml`, whose header
   lists all 19 placeholders and the files each one occurs in, then work through
   `ig.ini`, `publication-request.json`, `.github/workflows/go-publish.yml`,
   `qc/custom.rules.yaml`, `tests/`, the pages and the FSH sources. **Also rename the three
   placeholder-NAMED files** to your IG's id — the IG-level catalogue
   `input/translations/de/ImplementationGuide-mii-ig-mikrobiologie.po` (the
   publisher ignores it silently if it does not match) and the
   ImplementationGuide intro page `ImplementationGuide-mii-ig-mikrobiologie.md`
   in `input/pagecontent/` and its German mirror (the build fails on the
   `pages:` entry if they do not match).
   [Create a new module](docs/recipes/create-a-new-module.md) step 5 has the two
   sweeps that prove you missed none.
5. **Write a profile** in `input/fsh/` (an example is included to copy) and
   replace the English starter pages in `input/pagecontent/` (and their German
   counterparts in `input/translations/de/pagecontent/`).
   → [add a profile](docs/recipes/add-a-profile.md)
6. **Build it**: `sushi .`, then run the IG Publisher, then read `output/qa.html`.
   Or push a branch — CI builds it and comments the preview URL on your PR
   (one-time: enable GitHub Pages and set `PAGES_ACTIONS_ENABLED` to match the
   Pages mode you chose — [first-run setup](docs/recipes/first-run-setup.md),
   checklist item 2 — else every preview URL 404s).
7. **Release** with CalVer via the MII Module Release Workflow.
   → [cut a release](docs/recipes/cut-a-release.md)

The full walkthrough is [create a new module](docs/recipes/create-a-new-module.md).
Unfamiliar terms are in the [glossary](docs/glossary.md).

## Where things live

| Path | What it is |
| --- | --- |
| `sushi-config.yaml` | Your module's metadata — the file you edit first |
| `input/fsh/` | Profiles, extensions, value sets (FHIR Shorthand) |
| `input/pagecontent/` | The narrative pages — English, the IG's default language |
| `input/translations/de/` | German translations of pages, menu and resources |
| `input/includes/menu.xml` | The navigation menu (one file per language) |
| `qc/custom.rules.yaml`, `advisor.json` | What the MII reusable validation reads: naming-convention rules and tolerated validator messages |
| `ig-template/` | The MII IG template, mirrored automatically — don't edit |
| `docs/` | Guides and step-by-step recipes |
| `tests/` | FHIR validation test cases the build runs — see [tests/README.md](tests/README.md) |
| `scripts/` | Helper scripts (first-run bootstrap, template sync, convention check, …) — see [scripts/README.md](scripts/README.md) |
| `skills/` | Reusable instructions for recurring maintenance tasks — see [`AGENTS.md`](AGENTS.md) |
| `.github/workflows/` | CI: build, preview, validation, release — see [docs/workflows.md](docs/workflows.md) |

## Documentation

**[docs/](docs/README.md) is the index** — every guide, with a reading order for
newcomers. The three you are most likely to want first:

- [Recipes](docs/recipes/) — step-by-step for the common tasks
- [Create a new module](docs/recipes/create-a-new-module.md) — the path from *Use this template* to a module that builds
- [Project status](docs/project-status.md) — prototype; what that means in practice

Contributing and policies: [CONTRIBUTING.md](CONTRIBUTING.md) ·
[CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) · [SECURITY.md](SECURITY.md)

## Getting help

- **FHIR and profiling questions** — HL7 FHIR Zulip <https://chat.fhir.org>,
  stream `german/mi-initiative`. Free to join; this is where the MII KDS IGs
  point their readers.
- **MII coordination** — MII Zulip <https://mii.zulipchat.com/>, stream
  `MII-Kerndatensatz`. Access via the MII Geschäftsstelle
  (<office@medizininformatik-initiative.de>).
- **Problems with this template** — open an [issue](../../issues).

## Licence

[CC-BY-4.0](LICENSE), matching MII IG content.
