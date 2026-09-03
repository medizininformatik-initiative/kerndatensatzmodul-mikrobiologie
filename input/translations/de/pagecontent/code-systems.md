<!-- markdownlint-disable MD041 -->
<!-- Tabelle GENERIERT aus den CodeSystems und ihren Descriptions. -->
### Code Systems

Diese Seite listet die CodeSysteme, die das Modul **Mikrobiologie** selbst
definiert (Namenskonvention `MII_CS_<Modul>_<Name>`). Sie decken ab, wofür in
internationalen Terminologien kein passender Code existiert.

<!-- Beim Build aus `site.data.resources` erzeugt — siehe die ausfuehrliche
     Begruendung in value-sets.md. -->

| CodeSystem | Zweck |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'CodeSystem/mii-cs-' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
