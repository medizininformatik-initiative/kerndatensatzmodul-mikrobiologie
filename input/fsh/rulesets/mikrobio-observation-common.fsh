RuleSet: MIKRO_OBSERVATION_COMMON
* insert PR_CS_VS_Version
* insert Publisher
* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5] MS
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik." 
// Kein eigenes Slicing auf `category`: der Parent slict dort seit
// laborbefund@2027.0.0-ballot.rc3 selbst (pattern auf `$this`, offen). Eine
// zweite Deklaration ist nicht nur redundant, sie muss exakt uebereinstimmen —
// SUSHI schluckt eine Abweichung, der IG Publisher bricht beim Snapshot ab.
// `contains` allein genuegt, weil das Slicing des Parents offen ist.
// Ein Slice, ein fester Wert, keine Coding-Ebene — genau wie der Parent seinen
// eigenen Slice fuehrt (laborbefund@2027.0.0-ballot.rc3). Die frueher hier
// geslicten Codings sind entfallen: 26436-6 und observation-category#laboratory
// gehoerten nie in diesen Slice (sie sind die LABOR-Kategorie und liegen jetzt im
// Parent-Slice), und LOINC 18725-2 war ein optionales Zweit-Coding, dessen
// Slicing-Ebene mehr Reibung erzeugte als Nutzen. Das Slicing des Parents ist
// offen und `category` ist 1..*, weitere Codings im selben Eintrag bleiben also
// zulaessig — sie sind nur nicht mehr vorgeschrieben.
//
// Disjunktheit: der Parent-Slice traegt `laboratory`, dieser `MB`. Ein
// CodeableConcept mit BEIDEN Codes traefe beide Patterns und wuerde als
// "matches more than one slice" gemeldet — die Kategorien gehoeren daher in
// getrennte category-Eintraege.
* category contains mibi-category 1..1 MS
* category[mibi-category] = $v2-0074#MB
* category[mibi-category] ^short = "Mikrobiologie-Kategorie"
* category[mibi-category] ^definition = "Kategorie-Slice für mikrobiologische Laboruntersuchungen."
* specimen 1.. MS
// Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern hier abgebildet
* dataAbsentReason from MII_VS_Mikrobio_Data_Absent_Reason (extensible)
