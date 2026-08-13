---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung.

Das Profil klassifiziert ein bereits identifiziertes gramnegatives Isolat und ist kein Nachweistest. Das negative Ergebnis eines zielgerichteten Erregernachweises wird nicht hierüber abgebildet, sondern über Spezifische Bestimmung bzw. Spezifische Kultur. Wurde das Isolat anhand der Empfindlichkeitsbefunde bewertet und ist keiner Klasse zuzuordnen, wird der Wert `keine-mrgn-klasse` verwendet — ein solcher Negativwert ist hier sinnvoll, weil ein konkretes Klassifikationsschema vorliegt.

MRGN ist eine echte Klassifikation mit eigenem Schema: Der Wert ist die konkrete Klasse.

Der [Resistenzkategorie-Status](Resistenzkategorie-Status.page.md) steht gleichrangig daneben und bewertet grampositive Erreger (MRSA, VRE, LRE, LVRE). Die beiden Profile überschneiden sich nicht: Eine MRGN-Klassifikation geht in keine der derzeit festgelegten Resistenzkategorien ein. Zur Abgrenzung siehe [Profilauswahl und Abgrenzung](../../Profilauswahl-und-Abgrenzung.page.md).

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
