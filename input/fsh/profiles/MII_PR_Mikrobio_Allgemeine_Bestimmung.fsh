Profile: MII_PR_Mikrobio_Allgemeine_Bestimmung
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-allgemeine-bestimmung
Title: "MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)"
Description: "Allgemeine Bestimmung beschreibt die Identifikation eines Mikroorganismus oder infektiösen Agens in einer Probe, ohne Einschränkung auf ein vordefiniertes Ziel."
* insert MIKRO_OBSERVATION_COMMON
* code from MII_VS_Mikrobio_Allgemeine_Bestimmung_Tests_LOINC (extensible)
* code ^short = "Bevorzugt 41852-5 'Microorganism or agent identified in Specimen'. Benennt das Labor die Erregergruppe (Bakterien, Pilze, Viren) oder das Sequenzierziel (16S, 18S rRNA) im Code, sind die entsprechenden Codes gleichwertig zulaessig. Es werden bevorzugt LOINC-Codes ohne praekoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat ueber Specimen.type kodiert."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Allgemeine_Bestimmung_Ergebnis_SNOMED (extensible)
* valueCodeableConcept ^short = "Identifizierter Mikroorganismus oder 'Not detected', wenn die Identifizierung keinen Erreger ergab. Waechst in der Kultur nichts, ist das 'No growth' in der Allgemeinen Kultur. Unbestimmbar: dataAbsentReason."
* method from MII_VS_Mikrobio_Allgemeine_Bestimmung_Methode_SNOMED (extensible)
// KEIMZAHL DES ERREGERS (Ballotkommentierung, 2026-11-26): Die Identifizierung
// referenziert sie ueber hasMember. Keine Komponente, weil Zaehlung und
// Identifizierung zwei Schritte mit eigener Methode sind; nicht triggeredBy,
// weil nicht wegen der Identifizierung gezaehlt wird. Keine Typeinschraenkung und
// kein Must Support: hasMember bleibt fuer weitere zusammengehoerige Befunde offen.
* hasMember ^short = "Keimzahl des identifizierten Erregers"
* hasMember ^comment = "Die Keimzahl ist eine eigene Observation (MII_PR_Mikrobio_Keimzahl) und keine Komponente: Sie hat eine eigene Methode und oft einen eigenen Zeitpunkt. Die Identifizierung verweist mit hasMember auf sie; bei mehreren Erregern aus einer Probe ist das die Zuordnung der Zahl zu ihrem Erreger und Pflicht."
// MENGE BEI MIKROSKOPISCHER IDENTIFIZIERUNG (Ballotkommentierung, 2026-11-26):
// Eine am Mikroskop erkannte Spezies ist eine Allgemeine Bestimmung (method <
// 278289002); ihre Menge stammt aus demselben Praeparat und demselben Schritt,
// deshalb eine Komponente wie bei der Mikroskopie (Komponente bei gleichem
// Schritt, hasMember bei eigenem Schritt). Must Support kommt aus dem RuleSet.
* insert MIKRO_MENGE_KOMPONENTE
* component[menge] ^short = "Nur bei mikroskopischer Identifizierung: wie viel des Erregers gesehen wurde, z. B. 441517005 'Present two plus out of three plus'."
