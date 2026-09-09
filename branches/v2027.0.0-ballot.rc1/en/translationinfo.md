# Translation Information - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Translation Information**

## Translation Information

This guide is written in **English** (the default language); **German** is the translation. English is therefore both the base rendering of the guide and the `/en/` rendering; use the language switcher at the top right to move between `/en/` and `/de/`.

Translated pages live under `input/translations/de/pagecontent/` (same file name as the English page); resource translations are `.po` files under `input/translations/de/`. Details: [`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-translation.md) in this repository.

### What is translated

| | |
| :--- | :--- |
| Narrative pages | **23 of 23**mirrored under`input/translations/de/pagecontent/` |
| IG page titles, guide title, publisher | **26 of 26**units translated in`ImplementationGuide-mii-ig-mikrobiologie.po` |
| Descriptions of the conformance resources | **not translated — they are written in German** |

The last row is the one to know about. The MII naming conventions ask for German in a conformance resource's `description`, `name` and `title`, so the guide carries them in German in **both** renderings: 22 profiles, 42 value sets, 3 code systems, 4 search parameters and the capability statement. Three artefacts differ — the two extensions are described in English, and the logical model `mii-lm-mikrobio-untersuchung` marks its German description with `[DE]`.

Supplying English descriptions through the `.po` mechanism is only partly possible: translation units are honoured for `StructureDefinition` and `CodeSystem` descriptions, but **silently ignored for `ValueSet` texts**. The 42 value sets could therefore not be translated this way even if the texts existed.

