## {{page-title}}

Als abstraktere Version des Informationsmodells und zur besseren Verdeutlichung von Beziehungen der fachlichen Konzepte untereinander wurden UML-Klassendiagramme erstellt. Diese dienen nur zur Abbildung der Datenelemente und deren Beschreibungen. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt.

### Übersicht

Der mikrobiologische Befund fasst Untersuchungen zusammen. Alle Untersuchungen teilen sich eine gemeinsame Basisklasse, die von der Laboruntersuchung des Labor-Moduls abgeleitet ist; die fachlichen Ausprägungen sind in vier Gruppen gegliedert.

{{render:implementation-guides-modulmikrobio-2027-images-mii-mikrobio-informationsmodell}}

Zur besseren Lesbarkeit findet sich das vollständige Diagramm nochmal [hier](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/implementation-guides/modulmikrobio-2027/images/mii-mikrobio-informationsmodell.png)

### Untersuchungsarten

Die einzelnen Untersuchungsarten mit dem jeweils verwendeten Untersuchungscode, dem Ergebnis und dem Verfahren. Die gemeinsamen Angaben aus der Basisklasse *Untersuchung* sind hier nicht wiederholt.

{{render:implementation-guides-modulmikrobio-2027-images-mii-mikrobio-untersuchungsarten}}

Zur besseren Lesbarkeit findet sich das vollständige Diagramm nochmal [hier](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/implementation-guides/modulmikrobio-2027/images/mii-mikrobio-untersuchungsarten.png)
