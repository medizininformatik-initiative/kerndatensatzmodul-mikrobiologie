RuleSet: MIKRO_OBSERVATION_COMMON
* insert PR_CS_VS_Version
* insert Publisher
* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5] MS
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik." 
* category.coding contains loinc-microbiology-studies 1..1 MS
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Mikrobiologie"
* specimen 1.. MS
