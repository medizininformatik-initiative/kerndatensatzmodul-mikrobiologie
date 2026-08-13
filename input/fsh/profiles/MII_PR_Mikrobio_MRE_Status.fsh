Profile: MII_PR_Mikrobio_MRE_Status
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-mre-status
Title: "MII PR Mikrobio MRE Status"
Description: "MRE-Status gibt an, ob ein untersuchtes Isolat anhand der vorliegenden mikrobiologischen Befunde als multiresistenter Erreger (MRE) einzustufen ist."
// Loest das bisherige Profil mii-pr-mikrobio-mre-klasse ab. Dort war der Wert der konkrete
// resistente Organismus (z. B. MRSA, VRE) aus dem SNOMED-Unterbaum "antimicrobial resistant
// organism". Das dupliziert Erreger- und Resistenzinformationen, die bereits ueber
// Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet sind, und ist
// semantisch breiter als "MRE": Nicht jeder antimikrobiell resistente Organismus ist ein
// multiresistenter Erreger - 838510005 "Linezolid resistant Enterococcus" beschreibt
// zunaechst eine Einzelsubstanzresistenz.
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil bildet den aus den zugrunde liegenden mikrobiologischen Befunden abgeleiteten MRE-Status eines Isolats ab. Es wiederholt nicht die Erreger- und Resistenzinformationen, die bereits über Identifikation, Empfindlichkeit, Resistenzmechanismen und MRGN-Klassifikation abgebildet sind. Welche Kategorien zu einem positiven MRE-Status führen, legt der Implementierungsleitfaden fest; die Zuordnung wird nicht implizit aus einer Terminologiehierarchie abgeleitet."
* code = MII_CS_Mikrobio_Untersuchungscode#mre-status
* code ^short = "MRE-Status des Isolats. Es existiert kein passender LOINC- oder SNOMED-CT-Code für diese Fragestellung; SNOMED CT 1285113001 fragt nach dem Typ des resistenten Organismus und ist für eine Ja/Nein-Aussage ungeeignet."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_MRE_Status_SNOMED (required)
* valueCodeableConcept ^short = "Yes: Das Isolat wurde anhand der erforderlichen mikrobiologischen Befunde bewertet und erfüllt die Kriterien mindestens einer im Implementierungsleitfaden festgelegten MRE-Kategorie. No: Das Isolat wurde hinsichtlich der relevanten MRE-Kriterien vollständig bewertet und erfüllt keine dieser Kategorien. Ist keine ausreichende Bewertung möglich, wird nicht 'No' angegeben, sondern dataAbsentReason verwendet."
// Der MRE-Status ist eine abgeleitete Aussage: Er entsteht durch fachliche Bewertung
// mehrerer Befunde, nicht durch eine ausgeloeste Folgeuntersuchung. Deshalb derivedFrom und
// nicht die triggeredBy-Extension. Mindestens ein Eingangsbefund ist gefordert, weil die
// Aussage ohne Bewertungsgrundlage nicht nachvollziehbar ist.
* derivedFrom 1.. MS
* derivedFrom ^short = "Befunde, aus denen der MRE-Status abgeleitet wurde: Erregeridentifikation, Empfindlichkeitsbefunde, Resistenzmechanismen/Determinanten und ggf. eine vorliegende MRGN-Klassifikation."
* extension[triggeredBy-r5] ^short = "Nur für eine tatsächlich ausgelöste Folgediagnostik. Die fachliche Ableitung des MRE-Status wird nicht hierüber, sondern über derivedFrom abgebildet."
