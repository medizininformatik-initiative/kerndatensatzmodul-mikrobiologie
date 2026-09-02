<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Weitere-Eigenschaften/MRGN-Klasse.page.md  -->
MRGN-Klasse beschreibt die Einstufung multiresistenter gramnegativer Erreger entsprechend der RKI-Kategorisierung.

Das Profil klassifiziert ein bereits identifiziertes gramnegatives Isolat und ist kein Nachweistest. Das negative Ergebnis eines zielgerichteten Erregernachweises wird nicht hierüber abgebildet, sondern über Spezifische Bestimmung bzw. Spezifische Kultur. Wurde das Isolat anhand der Empfindlichkeitsbefunde bewertet und ist keiner Klasse zuzuordnen, wird der Wert `keine-mrgn-klasse` verwendet — ein solcher Negativwert ist hier sinnvoll, weil ein konkretes Klassifikationsschema vorliegt.

MRGN ist eine echte Klassifikation mit eigenem Schema: Der Wert ist die konkrete Klasse.

Der [Resistenzkategorie-Status](StructureDefinition-mii-pr-mikrobio-resistenzkategorie-status.html) steht gleichrangig daneben und bewertet grampositive Erreger (MRSA, VRE, LRE, LVRE). Die beiden Profile überschneiden sich nicht: Eine MRGN-Klassifikation geht in keine der derzeit festgelegten Resistenzkategorien ein. Zur Abgrenzung siehe [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html).

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-mrgn-klasse](Observation-mii-exa-mikrobio-mrgn-klasse.html)

