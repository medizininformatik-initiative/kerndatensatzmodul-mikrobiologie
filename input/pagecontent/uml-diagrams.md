<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/uml-diagrams.md.
     German mirror: input/translations/de/pagecontent/uml-diagrams.md. -->

UML overviews of the data models of the **Microbiology** module and their relationships. The editable sources are `input/images-source/*.plantuml`; the IG Publisher renders them to SVG during the build, so no rendered image is checked in.

As a more abstract version of the information model, and to make the relations between the domain concepts clearer, UML class diagrams were produced. They serve only to represent the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; that is settled conclusively by the FHIR profiles.

### Overview

The microbiological report summarises investigations. All investigations share a common base class derived from the laboratory investigation of the Laboratory module; the domain variants are grouped into four families.

<figure>
{% include mii-mikrobio-informationsmodell.svg %}
<figcaption>Information model of the Microbiology module: report, the abstract investigation and the four families of investigation types.</figcaption>
</figure>

The diagram is vector graphics and scales without loss; its [source](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-informationsmodell.plantuml) is in the repository.

### Investigation types

The individual investigation types with the investigation code used, the result and the method. The common statements from the base class *Investigation* are not repeated here.

<figure>
{% include mii-mikrobio-untersuchungsarten.svg %}
<figcaption>Investigation types in the Microbiology module, each with its investigation code, result and method.</figcaption>
</figure>

The diagram is vector graphics and scales without loss; its [source](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-untersuchungsarten.plantuml) is in the repository.
