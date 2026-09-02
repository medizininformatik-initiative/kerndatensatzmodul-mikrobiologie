<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/value-sets.md. Die Tabelle ist
     GENERIERT aus den Descriptions der ValueSets und aus den Profil-Bindungen,
     die sie verwenden — bei neuen ValueSets oder geänderten Bindungen neu
     erzeugen. -->
### Value Sets

Diese Seite listet die ValueSets des Moduls **Mikrobiologie** (Namenskonvention
`MII_VS_<Modul>_<Name>`). Jede Zeile nennt den Zweck; die Codes und die
Expansion stehen hinter dem Link. Die zugrunde liegenden CodeSysteme sind auf der
Seite [Code Systems](code-systems.html) beschrieben, allgemeine Hinweise zur
Verwendung von Codes unter
[FHIR Terminology](http://hl7.org/fhir/R4/terminologies.html).

{:.bg-info}
**Expansionen:** Die Expansionen in diesem Leitfaden erzeugt ein
FHIR-Terminologieserver — SU-TermServ, sofern das Client-Zertifikat konfiguriert
ist, sonst der öffentliche HL7-Server `tx.fhir.org` (dann expandieren manche
KDS-spezifischen ValueSets möglicherweise unvollständig).

<!-- Die Tabelle wird beim Build aus `site.data.resources` erzeugt, also aus den
     ValueSets selbst. Neue ValueSets erscheinen ohne Zutun; der Zweck stammt aus
     ihrer `description`. Die eckigen Klammern in Titeln wie "… [SNOMED]" wuerden
     den Markdown-Link zerbrechen, daher das `replace`.
     Die Descriptions sind DEUTSCH (bewusste Entscheidung 2026-09-02, Konsistenz
     mit den uebrigen Ressourcen) und lassen sich nicht uebersetzen: package.db
     kennt keine Sprachspalte, und ein ValueSet-`.po` wird vom Publisher
     ignoriert (docs/recipes/add-translation.md). Sie stehen daher in beiden
     Sprachfassungen gleich. -->

| ValueSet | Zweck |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'ValueSet/mii-vs-' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
