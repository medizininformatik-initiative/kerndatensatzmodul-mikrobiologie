---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung.

Das Profil klassifiziert ein bereits identifiziertes gramnegatives Isolat und ist kein Nachweistest. Das negative Ergebnis eines zielgerichteten Erregernachweises wird nicht hierüber abgebildet, sondern über Spezifische Bestimmung bzw. Spezifische Kultur. Wurde das Isolat anhand der Empfindlichkeitsbefunde bewertet und ist keiner Klasse zuzuordnen, wird der Wert `keine-mrgn-klasse` verwendet — ein solcher Negativwert ist hier sinnvoll, weil ein konkretes Klassifikationsschema vorliegt.

MRGN bleibt eine eigenständige Klassifikation mit der konkreten Klasse als Wert. Ein MRGN-Ergebnis kann zugleich Eingangsgröße für den abgeleiteten [MRE-Status](MRE-Status.page.md) sein. Siehe [Nachweis, Empfindlichkeit und Klassifikation](../Nachweis-Empfindlichkeit-Klassifikation.page.md).

### Metadaten

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

</br>

### Beispiele

Beispiel (minimal):

{{json:mii-exa-mikrobio-mrgn-klasse}}
