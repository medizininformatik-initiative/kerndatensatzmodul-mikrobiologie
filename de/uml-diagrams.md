# UML-Diagramme - MII Implementation Guide Microbiology v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **UML-Diagramme**

## UML-Diagramme

UML-Übersichten der Datenmodelle des Moduls **Mikrobiologie** und ihrer Beziehungen. Editierbare Quellen (z. B. PlantUML) gehören nach `input/images-source/`, die gerenderten Bilder nach `input/images/`.

Als abstraktere Version des Informationsmodells und zur besseren Verdeutlichung von Beziehungen der fachlichen Konzepte untereinander wurden UML-Klassendiagramme erstellt. Diese dienen nur zur Abbildung der Datenelemente und deren Beschreibungen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt.

### Übersicht

Der mikrobiologische Befund fasst Untersuchungen zusammen. Alle Untersuchungen teilen sich eine gemeinsame Basisklasse, die von der Laboruntersuchung des Labor-Moduls abgeleitet ist; die fachlichen Ausprägungen sind in vier Gruppen gegliedert.

Informationsmodell des Moduls Mikrobiologie: Befund, die abstrakte Untersuchung und die vier Gruppen der Untersuchungsarten.
Das Diagramm ist eine Vektorgrafik und skaliert verlustfrei; seine [Quelle](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-informationsmodell.plantuml) liegt im Repository.

### Untersuchungsarten

Die einzelnen Untersuchungsarten mit dem jeweils verwendeten Untersuchungscode, dem Ergebnis und dem Verfahren. Die gemeinsamen Angaben aus der Basisklasse **Untersuchung** sind hier nicht wiederholt.

Untersuchungsarten im Modul Mikrobiologie, jeweils mit Untersuchungscode, Ergebnis und Verfahren.
Das Diagramm ist eine Vektorgrafik und skaliert verlustfrei; seine [Quelle](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/input/images-source/mii-mikrobio-untersuchungsarten.plantuml) liegt im Repository.

