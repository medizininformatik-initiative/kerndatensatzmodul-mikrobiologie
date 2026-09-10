// INTERIMS-CODESYSTEM. Der eine Code hier ersetzt einen LOINC-Code, den es noch
// nicht gibt, und verschwindet, sobald er existiert.
//
// Das EU-Datenmodell fordert ihn im Blatt "Microscopy" selbst an: Zeile 13
// traegt "new LOINC" mit dem Konzept "Semiquantitive value for microscopy
// finding". Solange er fehlt, ist der haeufigste Grambefund ueberhaupt nicht
// abbildbar — "wenig grampositive Kokken" braucht die Morphologie UND die
// Menge, und value[x] kann nur eine von beiden tragen.
//
// Sobald Regenstrief den Code veroeffentlicht: component[menge].code auf ihn
// umstellen, dieses CodeSystem auf retired setzen und eine ConceptMap oder
// einen Migrationshinweis in changes.md hinterlassen. Der Punkt steht in
// docs/release-checklist.md.
CodeSystem: MII_CS_Mikrobio_Mikroskopie_Komponenten
Id: mii-cs-mikrobio-mikroskopie-komponenten
Title: "MII CS Mikrobio Mikroskopie Komponenten"
Description: "Interims-CodeSystem für Komponenten des mikroskopischen Befunds, für die noch kein LOINC-Code existiert. Der enthaltene Code wird ersetzt, sobald der im EU-Datenmodell angeforderte LOINC-Code verfügbar ist."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^caseSensitive = true
* #semiquantitative-menge "Semiquantitative Menge" "Die semiquantitative Menge, in der der im Ergebnis benannte mikroskopische Befund gesehen wurde. INTERIMSCODE: ersetzt den im EU-Datenmodell (Blatt 'Microscopy', Zeile 13) angeforderten LOINC-Code 'Semiquantitive value for microscopy finding', solange dieser nicht existiert."
