---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Dieses Profil bildet das Ergebnis einer einzelnen mikrobiologischen Untersuchung als Observation ab.

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
  <tab title="Beschreibung">{{page:FQL-Beschreibung}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

</br>

### Constraints/Invarianten
<fql headers="true">
from StructureDefinition where url = %canonical for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
</fql>

### RestFul API

<tabs>
    <tab title="Interaktionen">
        {{page:FQL-Capability-REST}}
    </tab>
    <tab title="Suchparameter">
        {{page:FQL-Capability-Search}}
    </tab>
    <tab title="Operationen">
        {{page:FQL-Capability-Operations}}
    </tab>
    <tab title="Link">
        {{link:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata}}
    </tab>
</tabs>

### Beispiele

Beispiel (minimal):

{{json:mii-exa-mikrobio-molekulare-pathogenlast}}
