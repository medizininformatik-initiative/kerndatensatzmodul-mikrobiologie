<!-- markdownlint-disable MD041 -->
<!-- Tabelle GENERIERT aus den SearchParameter-Ressourcen. -->
### Search Parameters

Das Modul **Mikrobiologie** definiert die folgenden Suchparameter über die
FHIR-Basisparameter hinaus. Alle gelten für `Observation`.

<!-- Beim Build aus `site.data.resources` erzeugt — siehe die ausfuehrliche
     Begruendung in value-sets.md. -->

| Parameter | Zweck |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'SearchParameter/' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
