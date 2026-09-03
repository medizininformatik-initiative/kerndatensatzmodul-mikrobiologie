<!-- markdownlint-disable MD041 -->
<!-- Table GENERATED from the CodeSystems and their descriptions.
     German mirror: input/translations/de/pagecontent/code-systems.md. -->
### Code Systems

This page lists the code systems the **Microbiology** module defines itself
(naming convention `MII_CS_<Module>_<Name>`). They cover what the international
terminologies do not.

<!-- Beim Build aus `site.data.resources` erzeugt — siehe die ausfuehrliche
     Begruendung in value-sets.md. -->

| CodeSystem | Purpose |
|---|---|
{%- for r in site.data.resources %}
{%- if r[0] contains 'CodeSystem/mii-cs-' %}
| [{{ r[1].title | replace: '[', '' | replace: ']', '' }}]({{ r[1].path }}) | {{ r[1].description | default: '&mdash;' }} |
{%- endif %}
{%- endfor %}
