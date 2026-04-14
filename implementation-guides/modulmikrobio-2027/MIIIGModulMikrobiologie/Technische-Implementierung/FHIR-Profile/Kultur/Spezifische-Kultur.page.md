---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten mikrobiologischen Kultur zum Nachweis eines vordefinierten Organismus oder einer Organismengruppe in einer Probe.

Bei zielgerichteten Einzelkulturen werden die Ergebnisse als positiv, kein Wachstum oder unklar angegeben. Wird ein unerwarteter Erreger nachgewiesen, wird dieser konkret benannt.
Bei Mehrzielkulturen oder auf eine Organismengruppe ausgerichteten Untersuchungen – beispielsweise im Rahmen einer weiterführenden Typisierung – erfolgt die Ergebnisangabe durch die Nennung des identifizierten Erregers.

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
