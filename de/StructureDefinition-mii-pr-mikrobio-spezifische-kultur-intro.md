<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Kultur/Spezifische-Kultur.page.md  -->
Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten kulturbasierten Untersuchung, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst. Das gesuchte Ziel ist bereits im Untersuchungscode benannt; das Ergebnis ist die Aussage über Wachstum (`Organism growth` bzw. `No growth`).

Damit bildet dieses Profil auch das negative Ergebnis eines kulturell durchgeführten zielgerichteten Erregernachweises ab, etwa einen negativen VRE- oder MRSA-Nachweis. Ein unbestimmbares Ergebnis wird nicht über `value`, sondern über `dataAbsentReason` angegeben. Zur Abgrenzung gegenüber Empfindlichkeitstestung und Klassifikation siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

Der nicht kulturbasierte zielgerichtete Nachweis wird über [Spezifische Bestimmung](StructureDefinition-mii-pr-mikrobio-spezifische-bestimmung.html) abgebildet.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-spezifische-kultur](Observation-mii-exa-mikrobio-spezifische-kultur.html)

Negativer VRE-Nachweis:

[mii-exa-mikrobio-spezifische-kultur-vre-negativ](Observation-mii-exa-mikrobio-spezifische-kultur-vre-negativ.html)

