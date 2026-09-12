# UML Diagrams - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **UML Diagrams**

## UML Diagrams

UML overviews of the data models of the **Microbiology** module and their relationships. The editable sources are `input/images-source/*.plantuml`; the IG Publisher renders them to SVG during the build, so no rendered image is checked in.

As a more abstract version of the information model, and to make the relations between the domain concepts clearer, UML class diagrams were produced. They serve only to represent the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding; that is settled conclusively by the FHIR profiles.

### Overview

The microbiological report summarises investigations. All investigations share a common base class derived from the laboratory investigation of the Laboratory module; the domain variants are grouped into four families.

Information model of the Microbiology module: report, the abstract investigation and the four families of investigation types.
The diagram is vector graphics and scales without loss; its [source](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-informationsmodell.plantuml) is in the repository.

### Investigation types

The individual investigation types with the investigation code used, the result and the method. The common statements from the base class **Investigation** are not repeated here.

Investigation types in the Microbiology module, each with its investigation code, result and method.
The diagram is vector graphics and scales without loss; its [source](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-untersuchungsarten.plantuml) is in the repository.

