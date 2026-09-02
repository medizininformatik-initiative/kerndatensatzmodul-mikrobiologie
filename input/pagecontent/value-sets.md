<!-- markdownlint-disable MD041 -->
<!-- Split from the former terminology.md per the TF-KDS-agreed menu structure (one
     page per artifact type); SNOMED CT version policy from the meta wiki page
     "Terminology Version Policy". The table is GENERATED from the ValueSets' own
     descriptions and from the profile bindings that use them — regenerate it when
     ValueSets are added or their bindings change.
     German mirror: input/translations/de/pagecontent/value-sets.md. -->
### Value Sets

This page lists the ValueSets of the **Microbiology** module (naming convention
`MII_VS_<Module>_<Name>`). Each row names what the set is for; follow the link for
its codes and expansion. The code systems they draw from are described on the
[Code Systems](code-systems.html) page; for general guidance on using codes see
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html).

{:.bg-info}
**Expansions:** ValueSet expansions in this guide are produced by a FHIR
terminology server — SU-TermServ if the client certificate is configured,
otherwise the public HL7 server `tx.fhir.org` (in which case some KDS-specific
ValueSets may not expand completely).

<!-- Die Tabelle wird beim Build aus `site.data.resources` erzeugt, also aus den
     ValueSets selbst. Neue ValueSets erscheinen ohne Zutun; der Zweck stammt aus
     ihrer `description`. Die eckigen Klammern in Titeln wie "… [SNOMED]" wuerden
     den Markdown-Link zerbrechen, daher das `replace`.
     Die Descriptions sind DEUTSCH (bewusste Entscheidung 2026-09-02, Konsistenz
     mit den uebrigen Ressourcen) und lassen sich nicht uebersetzen: package.db
     kennt keine Sprachspalte, und ein ValueSet-`.po` wird vom Publisher
     ignoriert (docs/recipes/add-translation.md). Sie stehen daher in beiden
     Sprachfassungen gleich. -->

| ValueSet | Purpose |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'ValueSet/mii-vs-' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
