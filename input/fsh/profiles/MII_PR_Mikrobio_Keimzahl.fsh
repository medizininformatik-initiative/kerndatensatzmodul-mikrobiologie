Profile: MII_PR_Mikrobio_Keimzahl
Parent: Observation
Id: mii-pr-mikrobio-keimzahl
Title: "MII PR Mikrobio Keimzahl"
Description: "This profile describes a colony count test in miobiology."
* ^version = "2025.0.0"
* ^experimental = false
* ^publisher = "https://www.Medizininformatik-Initiative.de"
* ^purpose = "Dieses Profil beschreibt ein Keimzahl Test der Medizininformatik-Initiative."
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
  * coding[loinc-microbiology-studies] = $loinc#18725-2
* code MS
* code from MII_VS_Mikrobio_Keimzahl_LOINC (required)
* subject 1.. MS
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
  * obeys mii-lab-1
  * extension contains MII_EX_Labor_Quelle_Klinisches_Bezugsdatum named QuelleKlinischesBezugsdatum 0..1 MS
* issued MS
* value[x] only Quantity or CodeableConcept
* value[x] MS
* valueQuantity only Quantity
* valueQuantity MS
  * ^sliceName = "valueQuantity"
  * ^short = "Quantiatives Ergebnis"
  * value 1.. MS
  * unit 1.. MS
  * system 1.. MS
  * system = "http://unitsofmeasure.org" (exactly)
  * code 1.. MS
  * code from MII_VS_Mikrobio_Keimzahl_Einheiten_UCUM (required)
    * ^comment = "The mandatory system is UCUM."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from MII_VS_Labor_Laborergbenis_Semiquantitativ (required)
  * ^sliceName = "valueCodeableConcept"
  * ^binding.description = "Häufigkeit"
* dataAbsentReason MS
* interpretation ..1 MS
* note MS
* bodySite ..0
* method MS
* specimen 1.. MS
  * reference MS
  * identifier MS
* device MS
* referenceRange MS
* component.value[x] only CodeableConcept