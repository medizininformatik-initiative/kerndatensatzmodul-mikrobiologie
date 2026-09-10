ValueSet: MII_VS_Mikrobio_Allgemeine_Kultur_Methode_SNOMED
Id: mii-vs-mikrobio-allgemeine-kultur-methode-snomed
Title: "MII VS Mikrobio Allgemeine Kultur Methode [SNOMED]"
Description: "Methoden-ValueSet für die allgemeine Kultur: Kulturverfahren ohne Einschränkung auf einen vordefinierten Erreger, einschließlich aerober und anaerober Bebrütung."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#703750006 "Aerobic culture technique (qualifier value)"
* $sct#703751005 "Anaerobic culture technique (qualifier value)"
// Der oberbegriffliche Code fuer Labore, die aerob und anaerob nicht
// unterscheiden. Notwendig geworden mit 41852-5: Der methodenneutrale Code
// verlangt eine Methode (Invariant allgemeine-kultur-method-with-neutral-code),
// und ohne 702658000 gaebe es fuer diesen Fall keine.
//
// Das EU-Datenmodell fuehrt ihn im Blatt "Culture General" (Zeile 18) mit dem
// Kommentar "Not necessary as repeates the meaning of the code." Der stammt aus
// der Zeit, als 11475-1 "Preferred" war und der Code "by Culture" sagte; mit der
// Umkehr auf 41852-5 ist er stehengeblieben. An die Gruppe zurueckzumelden.
* $sct#702658000 "Microbial culture technique (qualifier value)"
