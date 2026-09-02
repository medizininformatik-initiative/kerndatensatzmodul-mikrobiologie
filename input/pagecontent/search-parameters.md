<!-- markdownlint-disable MD041 -->
<!-- Table GENERATED from the SearchParameter resources.
     German mirror: input/translations/de/pagecontent/search-parameters.md. -->
### Search Parameters

The **Microbiology** module defines the following search parameters beyond the
FHIR base set. All of them apply to `Observation`.

<!-- Beim Build aus `site.data.resources` erzeugt — siehe die ausfuehrliche
     Begruendung in value-sets.md. -->

| Parameter | Purpose |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'SearchParameter/' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
