<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/translationinfo.md; the
     mechanism is documented in docs/recipes/add-translation.md. German mirror:
     input/translations/de/pagecontent/translationinfo.md. -->

This guide is written in **English** (the default language); **German** is the
translation. English is therefore both the base rendering of the guide and the
`/en/` rendering; use the language switcher at the top right to move between
`/en/` and `/de/`.

Translated pages live under `input/translations/de/pagecontent/` (same file name
as the English page); resource translations are `.po` files under
`input/translations/de/`. Details:
[`docs/recipes/add-translation.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-translation.md) in this repository.

### What is translated

| Layer | State |
|---|---|
| Narrative pages | **23 of 23** mirrored under `input/translations/de/pagecontent/` |
| IG page titles, guide title, publisher | **26 of 26** units translated in `ImplementationGuide-mii-ig-mikrobiologie.po` |
| Descriptions of the conformance resources | **English on this review branch** (`review/2027.0.0-ballot2-en`): titles, descriptions, element shorts/definitions, logical-model labels and search-parameter descriptions were translated in place. The published ballot carries them in German. |

The last row is the one to know about. The MII naming conventions ask for German
in a conformance resource's `description`, `name` and `title`, so the published
ballot carries them in German in **both** renderings: 22 profiles, 42 value sets,
3 code systems, 4 search parameters and the capability statement. **This review
branch deviates from that convention on purpose**: it replaces the German text
with English in the FSH sources so that external reviewers can read the
conformance resources without German. Ids, names, canonical URLs, code system
concept displays and the German page mirrors are unchanged, so review comments
map one-to-one onto the ballot artefacts. The branch is a review aid and is not
merged back.

Supplying English descriptions through the `.po` mechanism is only partly
possible: translation units are honoured for `StructureDefinition` and
`CodeSystem` descriptions, but **silently ignored for `ValueSet` texts**. The 42
value sets could therefore not be translated this way even if the texts existed.
