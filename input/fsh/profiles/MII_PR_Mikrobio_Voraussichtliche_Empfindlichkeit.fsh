Profile: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Parent: Observation
Id: mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Title: "MII PR Mikrobio Voraussichtliche Empfindlichkeit"
Description: "This profile describes the expected susceptibility test in microbiology"
* ^version = "2025.0.0"
* ^experimental = false
* ^publisher = "https://www.Medizininformatik-Initiative.de"
* ^purpose = "Dieses Profil beschreibt  die voraussichtliche Empfindlichkeit in der Medizininformatik-Initiative Modul Mikrobiologie."
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
* code MS
* code from $mii-vs-mikrobio-empfindlichkeit-genotyp-loinc (required)
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
* valueCodeableConcept from MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit_SNOMEDCT (required)
  * ^sliceName = "valueCodeableConcept"
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite ..0
* method MS
* specimen 1.. MS
  * reference MS
  * identifier MS
* device MS
* referenceRange MS