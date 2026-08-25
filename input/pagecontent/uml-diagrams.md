<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/uml-diagrams.md.
     German mirror: input/translations/de/pagecontent/uml-diagrams.md. -->

UML overviews of the data models of the **Microbiology** module and their relationships. Editable sources (e.g. PlantUML) belong in `input/images-source/`, the rendered images in `input/images/`.

<!-- DERIVED:no-source source=MIIIGModulMikrobiologie/Anwendungsfaelle-Informationsmodell/UML.page.md gate=C -->
> **Written during migration - review before release.** TODO:REVIEW - this English text is a
> machine translation of the German source page named above; the German mirror carries the
> original wording verbatim.
{: .ig-highlight .ig-highlight-blue}

As a more abstract version of the information model, and to make the relations between the domain concepts clearer, UML class diagrams were produced. They serve only to represent the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; that is settled conclusively by the FHIR profiles.

### Overview

The microbiological report summarises investigations. All investigations share a common base class derived from the laboratory investigation of the Laboratory module; the domain variants are grouped into four families.

![Information model of the Microbiology module](mii-mikrobio-informationsmodell.png)

For better legibility, the full diagram is also available [here](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images/mii-mikrobio-informationsmodell.png).

### Investigation types

The individual investigation types with the investigation code used, the result and the method. The common statements from the base class *Investigation* are not repeated here.

![Investigation types in the Microbiology module](mii-mikrobio-untersuchungsarten.png)

For better legibility, the full diagram is also available [here](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images/mii-mikrobio-untersuchungsarten.png).
