// Abstrakte Basisklasse aller mikrobiologischen Untersuchungen.
// Enthält die Angaben, die MII_PR_Labor_Laboruntersuchung und der RuleSet MIKRO_OBSERVATION_COMMON
// für jede mikrobiologische Untersuchung festlegen. Die fachlichen Ausprägungen erben hiervon
// (siehe MII_LM_Mikrobio_Untersuchungsarten).
Logical: MII_LM_Mikrobio_Untersuchung
Parent: Element
Id: mii-lm-mikrobio-untersuchung
Title: "MII LM Microbiology Investigation"
Description: "Common information of all microbiological investigations"
* insert PR_CS_VS_Version
* insert Publisher
* ^abstract = true
// Erlaubt Bezüge auf eine Untersuchung als Reference (Befund, auslösende und zugrunde liegende Untersuchung)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics].valueCode = #can-be-target
* . ^short = "Microbiological investigation"
* . ^definition = "Abstract base of a microbiological investigation. The specialisations (culture, determination, further properties, quantitative tests) derive from this class and add their specific attributes."

* Identifikation 1..* Identifier "Identification" "Unique identifier of the investigation."
* Status 1..1 code "Status" "Status of the investigation (e.g. preliminary, final, corrected)."
* Patient 1..1 Reference(Patient) "Patient" "Patient from whom the examined specimen material originates."
* Probenmaterial 1..1 Reference(Specimen) "Specimen" "Specimen examined. The specimen type is represented via the specimen and not via pre-coordinated investigation codes."
* Untersuchungszeitpunkt 1..1 dateTime "Investigation time" "Clinically relevant time of the investigation."
* QuelleUntersuchungszeitpunkt 0..1 Coding "Source of the investigation time" "Indicates what the investigation time refers to, e.g. time of specimen collection or receipt in the laboratory."
* Dokumentationszeitpunkt 0..1 dateTime "Documentation time" "Time at which the investigation result was made available."
* InterpretationsbeeinflussendeEigenschaft 0..* Coding "Property affecting interpretation" "Property of the investigation or the specimen that restricts or changes the interpretation of the result, e.g. haemolysis, lipaemia or insufficient specimen quantity. The information changes the meaning of the result and must not be ignored."
* Hinweis 0..* string "Note" "Free-text comment on the investigation."
* AusloesendeUntersuchung 0..* BackboneElement "Triggering investigation" "Preceding investigation that triggered this investigation, e.g. follow-up diagnostics initiated by a prior result (reflex testing)."
  * Untersuchung 1..1 Reference(MII_LM_Mikrobio_Untersuchung) "Investigation" "The triggering investigation."
  * Art 1..1 code "Type" "Type of trigger: reflex | repeat | re-run."
  * Grund 0..1 string "Reason" "Reason why this investigation was triggered."
