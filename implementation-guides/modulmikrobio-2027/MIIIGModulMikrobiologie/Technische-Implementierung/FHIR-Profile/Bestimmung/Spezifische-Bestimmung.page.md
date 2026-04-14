---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Spezifische Bestimmung beschreibt den gezielten qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Mikroorganismus, Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe mittels kulturbasierter oder anderer zielgerichteter Nachweismethoden.

Bei zielgerichteten Einzeluntersuchungen werden die Ergebnisse in der Regel als positiv, kein Nachweis oder unklar angegeben. Wird dabei ein unerwarteter Erreger nachgewiesen, wird dieser konkret benannt.

Bei Mehrzieluntersuchungen oder auf Organismengruppen ausgerichteten Verfahren erfolgt die Ergebnisdarstellung durch die Nennung des identifizierten Erregers.

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

{{json:mii-exa-mikrobio-spezifische-bestimmung}}
