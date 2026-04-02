RuleSet: MIKRO_OBSERVATION_COMMON
* insert PR_CS_VS_Version
* insert Publisher
* obeys mii-lab-2
* id MS
* meta MS
  * source MS
  * profile MS
* identifier MS
* status MS
* category 1.. MS
  * coding MS
  * coding contains loinc-microbiology-studies 1..1 MS
  * coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* code MS
* subject 1.. MS
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
  * obeys mii-lab-1
* issued MS
* value[x] MS
* dataAbsentReason MS
* note MS
* bodySite ..0
* method MS
* specimen 1.. MS
  * reference MS
  * identifier MS
* device MS
* referenceRange MS
* component ..0
