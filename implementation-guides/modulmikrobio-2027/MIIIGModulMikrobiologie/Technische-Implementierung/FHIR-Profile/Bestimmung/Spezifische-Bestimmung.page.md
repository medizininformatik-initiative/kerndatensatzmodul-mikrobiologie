---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

Spezifische Bestimmung beschreibt den gezielten qualitativen Nachweis eines vordefinierten mikrobiellen Ziels (z. B. Mikroorganismus, Nukleinsäure, Antigen, Antikörper oder biochemischer Marker) in einer Probe mittels direkter molekularer, immunologischer oder biochemischer Nachweismethoden sowie mittels methodenneutral kodierter Nachweistests. Der kulturbasierte zielgerichtete Nachweis wird über [Spezifische Kultur](../Kultur/Spezifische-Kultur.page.md) abgebildet.

Das Ergebnis ist die Aussage über den Nachweis des im Code benannten Ziels (`Detected` bzw. `Not detected`); ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Damit bildet dieses Profil auch das negative Ergebnis eines zielgerichteten Erregernachweises ab, etwa einen negativen VRE-Nachweis.

Die verwendete Methode soll grundsätzlich über `Observation.method` angegeben werden, sofern sie bekannt ist. Enthält der verwendete LOINC-Code bereits eine präkoordinierte Methode, kann `Observation.method` ergänzend befüllt werden. **Enthält der LOINC-Code keine Methodenangabe, MUSS `Observation.method` befüllt werden.** 

Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation sowie zur Codeauswahl siehe [Profilauswahl und Abgrenzung](../../Profilauswahl-und-Abgrenzung.page.md).

Untersuchungen ohne vordefiniertes Ziel, bei denen das Ergebnis die Nennung des identifizierten Erregers ist, werden über [Allgemeine Bestimmung](Allgemeine-Bestimmung.page.md) abgebildet.

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
