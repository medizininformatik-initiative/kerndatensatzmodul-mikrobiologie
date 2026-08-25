# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-patrickwerner-IdeaProjects-kerndatensatzmodul-mikrobiologie/a759b1ea-352c-4c43-b7b4-77c7c89c0da5/scratchpad/source-unmigrated` |
| target repo | `.` |
| routing table | `/Users/patrickwerner/IdeaProjects/kerndatensatzmodul-mikrobiologie/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/patrickwerner/IdeaProjects/kerndatensatzmodul-mikrobiologie/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (103 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-25T15:12:15Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/modulmikrobio-2027`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `modulmikrobio-2027` | MII IG Mikrobiologie DE v2027 | 2027 | 2027.0.0-alpha.5 | - | 43 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `modulmikrobio-2027`** - highest version overall - sushi-config states no `language:`, so the language criterion of spec 5.1a #1 could not be applied: modulmikrobio-2027 (directory version 2027, guide.yaml version 2027.0.0-alpha.5).

The module's narrative language read from `sushi-config.yaml` `language:` is **not stated**.

- sushi-config states no `language:`; the narrative language could not be determined, so only the version decided.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/modulmikrobio-2027/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 5 | 12% |
| 2 | 8 | 19% |
| 3 | 7 | 16% |
| 4 | 23 | 53% |
| **total** | **43** | 100% |

Maximum depth used: **4**. Total words across the 43 source pages: **10085**. Pages in `input/pagecontent/`: **0**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Beschreibung.page.md` exists on disk but is **not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Operations.page.md` exists on disk but is **not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-REST.page.md` exists on disk but is **not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Search.page.md` exists on disk but is **not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulMikrobiologie/Index.page.md`
   |- Changelog  `MIIIGModulMikrobiologie/Changelog.page.md`
   |- Beschreibung Modul Mikrobiologie  `MIIIGModulMikrobiologie/Beschreibung-Modul-Mikrobiologie.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulMikrobiologie/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md`
   |- Referenzen  `MIIIGModulMikrobiologie/Referenzen.page.md`
   |- Index  `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-der-Module.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md`
   |  `- UML  `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/UML.page.md`
   `- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md`
      |- Profilauswahl und Abgrenzung  `MIIIGModulMikrobiologie/Technische-Implementierung/Profilauswahl-und-Abgrenzung.page.md`
      |- CapabilityStatement  `MIIIGModulMikrobiologie/Technische-Implementierung/CapabilityStatement.page.md`
      |- Terminologien  `MIIIGModulMikrobiologie/Technische-Implementierung/Terminologien.page.md`
      `- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md`
         |- Diagnostic Report  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Diagnostic-Report.page.md`
         |- Probe  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Probe.page.md`
         |- FQL-Beschreibung  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Beschreibung.page.md`
         |- FQL-Capability-Operations  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Operations.page.md`
         |- FQL-Capability-REST  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-REST.page.md`
         |- FQL-Capability-Search  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Search.page.md`
         |- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md`
         |  |- Allgemeine Kultur  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Allgemeine-Kultur.page.md`
         |  |- Spezifische Kultur  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md`
         |  |- Mikroskopie  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Mikroskopie.page.md`
         |  |- Barlett Score  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Barlett-Score.page.md`
         |  |- Nugent Score  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Nugent-Score.page.md`
         |  |- Keimzahl  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Keimzahl.page.md`
         |  `- Empfindlichkeit  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md`
         |- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Index.page.md`
         |  |- Allgemeine Bestimmung  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md`
         |  |- Spezifische Bestimmung  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md`
         |  `- Ct-Wert  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/CT-Wert.page.md`
         |- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Index.page.md`
         |  |- Antigen Antikoerper Tests  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Antigen-Antikoerper-Quantitativ.page.md`
         |  |- Titer  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Titer.page.md`
         |  `- Molekulare Pathogenlast  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Molekulare-Pathogenlast.page.md`
         `- Index  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Index.page.md`
            |- Virulenz  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Virulenzfaktor.page.md`
            |- Resistenzmechanismus  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzmechanismen-Determinanten.page.md`
            |- MRGN Klasse  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/MRGN-Klasse.page.md`
            |- Voraussichtliche Empfindlichkeit  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Voraussichtliche-Empfindlichkeit.page.md`
            |- Resistenzkategorie Status  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzkategorie-Status.page.md`
            `- Aviditaet  `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Aviditaet.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-kerndatensatzmodul-mikrobiologie.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 567 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 148 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 325 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 121 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 130 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 32 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 484 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2198 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 104 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 77 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3933 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3933 words > 2500 |
| `researcher-guidance.md` | 111 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 112 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 178 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 548 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3933 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artifacts) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 11 | -1 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulMikrobiologie/Index.page.md` | 1 | 6 | 360 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulMikrobiologie/Changelog.page.md` | 1 | 0 | 5187 | 3 merge into agreed page | changes.md <br>_(source page is 5187 words > 2500 - merging it trips the host's size gate on its own (rule 5))_ | menu label 'Changelog' points at changes.html |
| 3 | `MIIIGModulMikrobiologie/Beschreibung-Modul-Mikrobiologie.page.md` | 1 | 0 | 64 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `MIIIGModulMikrobiologie/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md` | 1 | 0 | 82 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulMikrobiologie/Referenzen.page.md` | 1 | 0 | 84 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Index.page.md` | 2 | 3 | 58 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 7 | `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-der-Module.page.md` | 2 | 0 | 105 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md` | 2 | 0 | 263 | 3 merge into agreed page | logical-models.md | semantic match 'datensaetze' -> logical-models (routing-table) |
| 9 | `MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/UML.page.md` | 2 | 0 | 125 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 10 | `MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md` | 2 | 4 | 8 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 4 child page(s) |
| 11 | `MIIIGModulMikrobiologie/Technische-Implementierung/Profilauswahl-und-Abgrenzung.page.md` | 2 | 0 | 665 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 12 | `MIIIGModulMikrobiologie/Technische-Implementierung/CapabilityStatement.page.md` | 2 | 0 | 83 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 13 | `MIIIGModulMikrobiologie/Technische-Implementierung/Terminologien.page.md` | 2 | 0 | 162 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 14 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Diagnostic-Report.page.md` | 3 | 0 | 219 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-diagnostic-report-intro.md | compact match on mii-pr-mikrobio-diagnostic-report (1 candidate artefact) |
| 15 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Probe.page.md` | 3 | 0 | 110 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 16 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md` | 3 | 10 | 128 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 10 child page(s) |
| 17 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Beschreibung.page.md` | 3 | 0 | 45 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry) <br>_(on disk but not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 18 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Operations.page.md` | 3 | 0 | 23 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry) <br>_(on disk but not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 19 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-REST.page.md` | 3 | 0 | 23 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry) <br>_(on disk but not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 20 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Search.page.md` | 3 | 0 | 25 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry) <br>_(on disk but not listed in MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/toc.yaml)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 21 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md` | 4 | 7 | 23 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 7 children, 7 anchoring distinct artefacts (StructureDefinition) |
| 22 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Allgemeine-Kultur.page.md` | 4 | 0 | 80 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-allgemeine-kultur-intro.md | compact match on mii-pr-mikrobio-allgemeine-kultur (9 candidate artefacts) |
| 23 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md` | 4 | 0 | 145 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-spezifische-kultur-intro.md | compact match on mii-pr-mikrobio-spezifische-kultur (10 candidate artefacts) |
| 24 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Mikroskopie.page.md` | 4 | 0 | 74 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-mikroskopie-intro.md | compact match on mii-pr-mikrobio-mikroskopie (1 candidate artefact) |
| 25 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Barlett-Score.page.md` | 4 | 0 | 73 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-barlett-score-intro.md | compact match on mii-pr-mikrobio-barlett-score (3 candidate artefacts) |
| 26 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Nugent-Score.page.md` | 4 | 0 | 65 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-nugent-score-intro.md | compact match on mii-pr-mikrobio-nugent-score (3 candidate artefacts) |
| 27 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Keimzahl.page.md` | 4 | 0 | 69 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-keimzahl-intro.md | compact match on mii-pr-mikrobio-keimzahl (3 candidate artefacts) |
| 28 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md` | 4 | 0 | 116 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-empfindlichkeit-intro.md | compact match on mii-pr-mikrobio-empfindlichkeit (7 candidate artefacts) |
| 29 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Index.page.md` | 4 | 3 | 11 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 30 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md` | 4 | 0 | 168 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung-intro.md | compact match on mii-pr-mikrobio-allgemeine-bestimmung (9 candidate artefacts) |
| 31 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md` | 4 | 0 | 207 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung-intro.md | compact match on mii-pr-mikrobio-spezifische-bestimmung (10 candidate artefacts) |
| 32 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/CT-Wert.page.md` | 4 | 0 | 66 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-ct-wert-intro.md | compact match on mii-pr-mikrobio-ct-wert (2 candidate artefacts) |
| 33 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Index.page.md` | 4 | 3 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 34 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Antigen-Antikoerper-Quantitativ.page.md` | 4 | 0 | 69 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ-intro.md | compact match on mii-pr-mikrobio-antigen-antikoerper-quantitativ (4 candidate artefacts) |
| 35 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Titer.page.md` | 4 | 0 | 147 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-titer-intro.md | compact match on mii-pr-mikrobio-titer (4 candidate artefacts) |
| 36 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Molekulare-Pathogenlast.page.md` | 4 | 0 | 70 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast-intro.md | compact match on mii-pr-mikrobio-molekulare-pathogenlast (4 candidate artefacts) |
| 37 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Index.page.md` | 4 | 6 | 20 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 6 children, 6 anchoring distinct artefacts (StructureDefinition) |
| 38 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Virulenzfaktor.page.md` | 4 | 0 | 64 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-virulenzfaktor-intro.md | compact match on mii-pr-mikrobio-virulenzfaktor (1 candidate artefact) |
| 39 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzmechanismen-Determinanten.page.md` | 4 | 0 | 68 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten-intro.md | compact match on mii-pr-mikrobio-resistenzmechanismen-determinanten (3 candidate artefacts) |
| 40 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/MRGN-Klasse.page.md` | 4 | 0 | 169 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-mrgn-klasse-intro.md | compact match on mii-pr-mikrobio-mrgn-klasse (3 candidate artefacts) |
| 41 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Voraussichtliche-Empfindlichkeit.page.md` | 4 | 0 | 67 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit-intro.md | compact match on mii-pr-mikrobio-voraussichtliche-empfindlichkeit (7 candidate artefacts) |
| 42 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzkategorie-Status.page.md` | 4 | 0 | 410 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status-intro.md | compact match on mii-pr-mikrobio-resistenzkategorie-status (4 candidate artefacts) |
| 43 | `MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Aviditaet.page.md` | 4 | 0 | 72 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-mikrobio-aviditaet-intro.md | compact match on mii-pr-mikrobio-aviditaet (3 candidate artefacts) |

Branch totals: 1 intro-note = 20, 2 section on index page = 4, 3 merge into agreed page = 10, 4 own page = 9.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Index.page.md - nested under MIIIGModulMikrobiologie/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md - nested under MIIIGModulMikrobiologie/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/Profilauswahl-und-Abgrenzung.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Probe.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Beschreibung.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Operations.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-REST.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Search.page.md - nested under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3933 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulMikrobiologie/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulMikrobiologie/Changelog.page.md	branch=3	changes.md	menu label 'Changelog' points at changes.html
5.4c page-routing	MIIIGModulMikrobiologie/Beschreibung-Modul-Mikrobiologie.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Kontext-im-Gesamtprojekt-Bezuege-zu-anderen-Modulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Beschreibung-von-Szenarien-fuer-die-Anwendung-der-Module.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/Datensaetze-inkl-Beschreibungen.page.md	branch=3	logical-models.md	semantic match 'datensaetze' -> logical-models (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 4 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/Profilauswahl-und-Abgrenzung.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Diagnostic-Report.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-diagnostic-report-intro.md	compact match on mii-pr-mikrobio-diagnostic-report (1 candidate artefact)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Probe.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 10 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Beschreibung.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Operations.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-REST.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/FQL-Capability-Search.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Index.page.md	branch=2	h3/h4 section on profiles.md	7 children, 7 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Allgemeine-Kultur.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-allgemeine-kultur-intro.md	compact match on mii-pr-mikrobio-allgemeine-kultur (9 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-spezifische-kultur-intro.md	compact match on mii-pr-mikrobio-spezifische-kultur (10 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Mikroskopie.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-mikroskopie-intro.md	compact match on mii-pr-mikrobio-mikroskopie (1 candidate artefact)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Barlett-Score.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-barlett-score-intro.md	compact match on mii-pr-mikrobio-barlett-score (3 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Nugent-Score.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-nugent-score-intro.md	compact match on mii-pr-mikrobio-nugent-score (3 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Keimzahl.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-keimzahl-intro.md	compact match on mii-pr-mikrobio-keimzahl (3 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Empfindlichkeit.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-empfindlichkeit-intro.md	compact match on mii-pr-mikrobio-empfindlichkeit (7 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Allgemeine-Bestimmung.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-allgemeine-bestimmung-intro.md	compact match on mii-pr-mikrobio-allgemeine-bestimmung (9 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/Spezifische-Bestimmung.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung-intro.md	compact match on mii-pr-mikrobio-spezifische-bestimmung (10 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/CT-Wert.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-ct-wert-intro.md	compact match on mii-pr-mikrobio-ct-wert (2 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Antigen-Antikoerper-Quantitativ.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-antigen-antikoerper-quantitativ-intro.md	compact match on mii-pr-mikrobio-antigen-antikoerper-quantitativ (4 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Titer.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-titer-intro.md	compact match on mii-pr-mikrobio-titer (4 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Quantitative-tests/Molekulare-Pathogenlast.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-molekulare-pathogenlast-intro.md	compact match on mii-pr-mikrobio-molekulare-pathogenlast (4 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Index.page.md	branch=2	h3/h4 section on profiles.md	6 children, 6 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Virulenzfaktor.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-virulenzfaktor-intro.md	compact match on mii-pr-mikrobio-virulenzfaktor (1 candidate artefact)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzmechanismen-Determinanten.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-resistenzmechanismen-determinanten-intro.md	compact match on mii-pr-mikrobio-resistenzmechanismen-determinanten (3 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/MRGN-Klasse.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-mrgn-klasse-intro.md	compact match on mii-pr-mikrobio-mrgn-klasse (3 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Voraussichtliche-Empfindlichkeit.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-voraussichtliche-empfindlichkeit-intro.md	compact match on mii-pr-mikrobio-voraussichtliche-empfindlichkeit (7 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Resistenzkategorie-Status.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status-intro.md	compact match on mii-pr-mikrobio-resistenzkategorie-status (4 candidate artefacts)
5.4c page-routing	MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/Aviditaet.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-mikrobio-aviditaet-intro.md	compact match on mii-pr-mikrobio-aviditaet (3 candidate artefacts)
5.4c page-routing	map rows=43 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **43** total - 43 routed source pages (43 from the primary tree, 0 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.3 Coverage validation

Universe re-derived from disk: **43** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 43 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 2 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 4 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 42 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 3 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._

