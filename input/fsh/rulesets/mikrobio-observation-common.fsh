RuleSet: MIKRO_OBSERVATION_COMMON
* insert PR_CS_VS_Version
* insert Publisher
* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5] MS
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik." 
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains mibi-category 1..1 MS
* category[mibi-category] ^patternCodeableConcept.coding[+] = $v2-0074#MB // "Microbiology"
* category[mibi-category] ^short = "Mikrobiologie-Kategorie"
* category[mibi-category] ^definition = "Kategorie-Slice für mikrobiologische Laboruntersuchungen."
// TODO: after: https://github.com/medizininformatik-initiative/kerndatensatzmodul-labor/issues/66 is applied, the loinc codings will be removed
* category[mibi-category].coding[loinc-observation] = $loinc#26436-6
* category[mibi-category].coding[observation-category] = $observation-category#laboratory
* category[mibi-category].coding contains loinc-microbiology-studies 1..1 MS
* category[mibi-category].coding[loinc-microbiology-studies] = $loinc#18725-2 // "Mikrobiologie"
* specimen 1.. MS
