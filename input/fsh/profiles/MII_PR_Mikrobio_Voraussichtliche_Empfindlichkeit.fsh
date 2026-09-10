Profile: MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-voraussichtliche-empfindlichkeit
Title: "MII PR Mikrobio Voraussichtliche Empfindlichkeit"
Description: "Voraussichtliche Empfindlichkeit beschreibt die aus genotypischen Resistenznachweisen abgeleitete erwartete Suszeptibilität oder Resistenz gegenüber antimikrobiellen Substanzen."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die voraussichtliche Empfindlichkeit." 
* code from MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC (extensible)
* code ^short = "Ein Code mit der Methode 'Genotyping', z. B. 103958-5 'Ofloxacin [Susceptibility] by Genotype'. ABGRENZUNG zur gemessenen Empfindlichkeit: Dieses Profil verlangt KEIN Grenzwert-Regelwerk, weil eine Vorhersage auf einem Genotyp und nicht auf Grenzwerten beruht. MII_PR_Mikrobio_Empfindlichkeit verlangt es dagegen verpflichtend — dort ist ein 'by Genotype'-Code deshalb fehl am Platz, unabhaengig davon, dass die Bindung ihn formal zulaesst."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Voraussichtliche_Empfindlichkeit (required)
