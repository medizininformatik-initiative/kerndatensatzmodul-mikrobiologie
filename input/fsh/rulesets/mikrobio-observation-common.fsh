RuleSet: MIKRO_OBSERVATION_COMMON
* insert PR_CS_VS_Version
* insert Publisher
// MODULTHEMA. Die Profile erben die Wurzel-Extensions ihres Parents, und der
// Labor-Parent traegt dort artifact-topic mit C36292 "Laboratory Test Result"
// und C25294 "Laboratory Procedure" — 21 unserer 22 Profile deklarierten damit
// bis zum 2026-09-11 ausschliesslich LABOR-Themen, waehrend die IG-Ressource
// Mikrobiologie deklariert. Die beiden Inserts ersetzen sie durch die Themen
// dieses Moduls; der Laborbezug bleibt ueber C25294 an der IG-Ressource. Zur
// Adressierung ueber die URL siehe den Kommentar an CRMIArtifactTopic.
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C16851)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C217438)
* extension contains $observation-triggeredBy-r5 named triggeredBy-r5 0..*
* extension[triggeredBy-r5] MS
* extension[triggeredBy-r5].extension[observation] ^short = "Triggering observation."
* extension[triggeredBy-r5].extension[type] ^short = "Beschreibt die Art der Auslösung einer Untersuchung im diagnostischen Zusammenhang; insbesondere kennzeichnet der Wert „reflex“ eine durch das Ergebnis einer vorangegangenen Untersuchung ausgelöste Folgediagnostik." 
// Kein eigenes Slicing auf `category`: das macht der Parent (pattern auf
// `$this`, offen, unveraendert bis laborbefund@2027.0.0-ballot.rc4). Eine zweite
// Deklaration muesste exakt uebereinstimmen — SUSHI schluckt Abweichungen, der
// IG Publisher bricht beim Snapshot ab —, also nur `contains`: ein Slice, ein
// fester Wert, keine Coding-Ebene. Weitere Codings bleiben zulaessig (Slicing
// offen, `category` ist 1..*), nur nicht vorgeschrieben.
//
// Der Parent-Slice traegt `laboratory`, dieser `MB`. Beide Codes in EINEM
// CodeableConcept trafen beide Patterns ("matches more than one slice"), die
// Kategorien brauchen also getrennte category-Eintraege.
* category contains mibi-category 1..1 MS
* category[mibi-category] = $v2-0074#MB
* category[mibi-category] ^short = "Mikrobiologie-Kategorie"
* category[mibi-category] ^definition = "Kategorie-Slice für mikrobiologische Laboruntersuchungen."
// Das Zielprofil war bis 2026-09-10 offen: `specimen 1..` verlangte eine Probe,
// liess aber jede beliebige zu.
* specimen 1.. MS
* specimen only Reference(MII_PR_Mikrobio_Probe)
// Ein unbestimmbares Ergebnis wird nicht ueber value[x], sondern hier abgebildet
* dataAbsentReason from MII_VS_Mikrobio_Data_Absent_Reason (extensible)
