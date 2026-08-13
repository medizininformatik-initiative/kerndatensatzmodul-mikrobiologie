---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten kulturbasierten Untersuchung, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst. Das gesuchte Ziel ist bereits im Untersuchungscode benannt; das Ergebnis ist die Aussage über Wachstum (`Organism growth` bzw. `No growth`).

Damit bildet dieses Profil auch das negative Ergebnis eines kulturell durchgeführten zielgerichteten Erregernachweises ab, etwa einen negativen VRE- oder MRSA-Nachweis. Ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation siehe [Profilauswahl und Abgrenzung](../../Profilauswahl-und-Abgrenzung.page.md).

Der nicht kulturbasierte zielgerichtete Nachweis wird über [Spezifische Bestimmung](../Bestimmung/Spezifische-Bestimmung.page.md) abgebildet.

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

{{json:mii-exa-mikrobio-spezifische-kultur}}

Negativer VRE-Nachweis:

{{json:mii-exa-mikrobio-spezifische-kultur-vre-negativ}}
