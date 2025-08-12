Profile: MII_PR_Mikrobio_Mikroskopie
Parent: Observation
Id: mii-pr-mikrobio-mikroskopie
Title: "MII PR Mikrobio Mikroskopie"
Description: "This profile describes a microscopy test in microbiology"
* ^version = "2025.0.0"
* ^experimental = false
* ^publisher = "https://www.Medizininformatik-Initiative.de"
* ^purpose = "Dieses Profil beschreibt ein Mikroskopie Test der Medizininformatik-Initiative."
* obeys mii-lab-2
* id MS
* meta MS
  * source MS
  * profile MS
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* identifier contains analyseBefundCode 1..1 MS
* identifier[analyseBefundCode]
  * type 1.. MS
  * type = $v2-0203#OBI
    * coding MS
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
    * coding contains observationInstanceV2 1..1 MS
    * coding[observationInstanceV2]
      * system 1.. MS
      * system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
      * code 1.. MS
      * code = #OBI (exactly)
  * system 1.. MS
  * value 1.. MS
  * assigner 1.. MS
* status MS
* category 1.. MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      loinc-observation 1..1 MS and
      observation-category 1..1 MS and
      loinc-microbiology-studies 1..1 MS
  * coding[loinc-observation] = $loinc#26436-6
  * coding[observation-category] = $observation-category#laboratory
  * coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies"
* code = $sct#117259009
* code MS
* code from MII_VS_Mikrobio_Mikroskopie_Tests_LOINC (extensible)
  * ^label = "Mikroskopie"
* subject 1.. MS
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
  * obeys mii-lab-1
  * extension contains MII_EX_Labor_Quelle_Klinisches_Bezugsdatum named QuelleKlinischesBezugsdatum 0..1 MS
* issued MS
* value[x] only CodeableConcept
* value[x] MS
* valueCodeableConcept 1.. MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Qualitative_Labor_Ergebnisse_SNOMEDCT (required)
  * ^sliceName = "valueCodeableConcept"
* dataAbsentReason MS
* interpretation ..1 MS
* note MS
* bodySite ..0
* method 1.. MS
* method from MII_VS_Mikrobio_Mikroskopiemethoden_SNOMEDCT (required)
* specimen 1.. MS
  * reference MS
  * identifier MS
* device MS
* referenceRange MS
* hasMember only Reference(MII_PR_Mikrobio_Keimzahl or MII_PR_Mikrobio_Empfindlichkeit or MII_PR_Mikrobio_MRE_Klasse or MII_PR_Mikrobio_MRGN_Klasse)
* hasMember MS
* component MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* component contains
    Morphologie 0..* and
    NugentScore 0..* and
    BarlettScore 0..* and
    NameMikroorganismus 0..1
* component[Morphologie] ^label = "Morphologie"
  * code ^label = "Morphologie"
    * ^patternCodeableConcept.text = "Morphologie Beschreibung"
  * value[x] only CodeableConcept
  * value[x] from MII_VS_Mikrobio_Morphologie_SNOMEDCT (required)
* component[NugentScore]
  * code = $loinc#101433-1
  * value[x] only integer
* component[BarlettScore]
  * code = $loinc#75371-5
  * value[x] only CodeableConcept
  * value[x] from MII_VS_Mikrobio_Barlett_Score_LOINC (required)
* component[NameMikroorganismus]
  * code = $loinc#89248-9
  * value[x] only CodeableConcept
  * value[x] from MII_VS_Mikrobio_Organismen_SNOMEDCT (required)