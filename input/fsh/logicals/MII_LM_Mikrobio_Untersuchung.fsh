// Abstrakte Basisklasse aller mikrobiologischen Untersuchungen.
// Enthält die Angaben, die MII_PR_Labor_Laboruntersuchung und der RuleSet MIKRO_OBSERVATION_COMMON
// für jede mikrobiologische Untersuchung festlegen. Die fachlichen Ausprägungen erben hiervon
// (siehe MII_LM_Mikrobio_Untersuchungsarten).
Logical: MII_LM_Mikrobio_Untersuchung
Parent: Element
Id: mii-lm-mikrobio-untersuchung
Title: "MII LM Mikrobio Untersuchung"
Description: "Gemeinsame Angaben aller mikrobiologischen Untersuchungen [DE]"
* insert PR_CS_VS_Version
* insert Publisher
* ^abstract = true
// Erlaubt Bezüge auf eine Untersuchung als Reference (Befund, auslösende und zugrunde liegende Untersuchung)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics].valueCode = #can-be-target
* . ^short = "Mikrobiologische Untersuchung"
* . ^definition = "Abstrakte Basis einer mikrobiologischen Untersuchung. Die fachlichen Ausprägungen (Kultur, Bestimmung, Weitere Eigenschaften, Quantitative Tests) leiten von dieser Klasse ab und ergänzen sie um ihre jeweils spezifischen Attribute."

* Identifikation 1..* Identifier "Identifikation" "Eindeutiger Identifikator der Untersuchung."
* Status 1..1 code "Status" "Status der Untersuchung (z. B. vorläufig, final, korrigiert)."
* Patient 1..1 Reference(Patient) "Patient" "Patient, von dem das untersuchte Probenmaterial stammt."
* Probenmaterial 1..1 Reference(Specimen) "Probenmaterial" "Untersuchtes Probenmaterial. Die Probenart wird über das Probenmaterial abgebildet und nicht über präkoordinierte Untersuchungscodes."
* Untersuchungszeitpunkt 1..1 dateTime "Untersuchungszeitpunkt" "Klinisch relevanter Zeitpunkt der Untersuchung."
* QuelleUntersuchungszeitpunkt 0..1 Coding "Quelle des Untersuchungszeitpunkts" "Gibt an, worauf sich der Untersuchungszeitpunkt bezieht, z. B. Zeitpunkt der Probenentnahme oder Laboreingang."
* Dokumentationszeitpunkt 0..1 dateTime "Dokumentationszeitpunkt" "Zeitpunkt, zu dem das Untersuchungsergebnis verfügbar gemacht wurde."
* InterpretationsbeeinflussendeEigenschaft 0..* Coding "Interpretationsbeeinflussende Eigenschaft" "Eigenschaft der Untersuchung oder der Probe, die die Interpretation des Ergebnisses einschränkt oder verändert, z. B. Hämolyse, Lipämie oder unzureichende Probenmenge. Die Angabe verändert die Bedeutung des Ergebnisses und darf nicht ignoriert werden."
* Hinweis 0..* string "Hinweis" "Freitextliche Kommentierung der Untersuchung."
* AusloesendeUntersuchung 0..* BackboneElement "Auslösende Untersuchung" "Vorangegangene Untersuchung, die diese Untersuchung ausgelöst hat, z. B. eine durch ein Vorergebnis angestoßene Folgediagnostik (Reflextestung)."
  * Untersuchung 1..1 Reference(MII_LM_Mikrobio_Untersuchung) "Untersuchung" "Die auslösende Untersuchung."
  * Art 1..1 code "Art" "Art der Auslösung: reflex | repeat | re-run."
  * Grund 0..1 string "Grund" "Begründung, warum diese Untersuchung ausgelöst wurde."
