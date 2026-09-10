ValueSet: MII_VS_Mikrobio_Organismen_SNOMEDCT
Id: mii-vs-mikrobio-organismen-snomedct
Title: "MII VS Mikrobio Organismen [SNOMED CT]"
Description: "Organismen-ValueSet: die SNOMED-CT-Hierarchien, aus denen ein identifizierter Erreger stammen kann. Wird nicht direkt gebunden, sondern in die Ergebnis-ValueSets der Bestimmung eingebunden."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// Die neun Wurzeln folgen der ECL-Spalte des Blattes "Phenotypic
// Identification" (Zeile 36), deren Kommentarspalte sie benennt. Bis 2026-09-10
// standen hier nur die ersten sechs.
* include codes from system $sct where concept is-a #409822003 // Dominion Bacteria
* include codes from system $sct where concept is-a #414561005 // Kingdom Fungi
* include codes from system $sct where concept is-a #417396000 // Kingdom Protozoa
// Das Blatt selbst setzt hinter diese Wurzel "Slime mold ??? To be confirmed".
// Die Unsicherheit stammt also nicht von uns; sie ist hier festgehalten, damit
// sie beim Uebernehmen nicht verschwindet.
* include codes from system $sct where concept is-a #243565002 // Slime mold
* include codes from system $sct where concept is-a #84676004 // Prion
* include codes from system $sct where concept is-a #49872002 // Virus
// MEHRZELLIGE PARASITEN, ergaenzt am 2026-09-10. Ohne sie war die Parasitologie
// auf der Ergebnisseite nicht abbildbar — kein Wurmei, keine Kraetzmilbe, keine
// Myiasis-Larve, keine Kopflaus —, obwohl Stuhlparasitologie und Ektoparasiten
// Routinediagnostik sind.
//
// Auf der TESTCODE-Seite bleibt die Luecke bestehen: Das Blatt fuehrt "Parasite
// identified in specimen" als "missing", der LOINC-Code existiert also nicht.
// Bis dahin wird ein solcher Befund ueber den allgemeinen Code 41852-5
// berichtet, mit dem Parasiten als Ergebnis.
* include codes from system $sct where concept is-a #441649000 // Cestoda / Trematoda / Nemata
* include codes from system $sct where concept is-a #76222001 // Arachnid
* include codes from system $sct where concept is-a #106763003 // Class insecta