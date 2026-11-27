<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/FHIR-Profile/Bestimmung/CT-Wert.page.md  -->
CT-Wert beschreibt die Quantifizierung des Zyklusschwellenwerts bei Nukleinsäurenachweisen (z. B. Echtzeit-PCR) in einer Probe.

### Stellung in der diagnostischen Kette

Ein Ct-Wert ist ohne Test und Gerät nicht interpretierbar. Der Bezug zum
Nachweis ist optional; wird er angegeben, trägt ihn der Nachweis:
`derivedFrom` auf den Ct-Wert.

`derivedFrom` ist an diesem Profil dennoch Must Support, für den Fall, dass ein
Ct-Wert selbst aus einer vorangegangenen Untersuchung entsteht. Das Paar zeigt
[mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv](Observation-mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv.html),
das auf das Ct-Wert-Beispiel verweist: `49524-2` und `74039-9` unterscheiden sich
nur in Property und Scale — dieselbe Komponente, dasselbe probenneutrale System,
dieselbe Methode. Eine Untersuchung, aus der zwei Aussagen berichtet werden.
[Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.html) zeigt die Kette
im Ganzen.

### Beispiele

Beispiel (minimal):

[mii-exa-mikrobio-ct-wert](Observation-mii-exa-mikrobio-ct-wert.html)

