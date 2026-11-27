ValueSet: MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC
Id: mii-vs-mikrobio-empfindlichkeit-genotyp-loinc
Title: "MII VS Mikrobio Empfänglichkeit Genotyp [LOINC]"
Description: "Tests-ValueSet für die voraussichtliche Empfindlichkeit: LOINC-Codes für die aus dem Genotyp abgeleitete erwartete Wirksamkeit einer antimikrobiellen Substanz."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^date = "2023-03-02T00:00:00Z"
// WARUM DER FILTER AUF GENOTYPING BEGRENZT BLEIBT — am 2026-09-10 gegen LOINC
// gemessen, nachdem hier ein TODO eine Weitung auf immunologische Verfahren
// vorschlug. Es gibt nichts zu weiten:
//
//   CLASS = ABXBACT, PROPERTY = Susc, METHOD_TYP =
//     LP28723-2  Genotyping           99 Codes
//     LP217197-5 Immunoassay           0
//     LP217198-3 Rapid immunoassay     0
//     LP6404-0   Molgen                0
//     LP150045-5 Sequencing            0
//
// Einen Code "X [Susceptibility] by Immunoassay" gibt es nicht. Eine Weitung
// haette null Codes hinzugefuegt und die Bindung nur scheinbar geoeffnet.
//
// Folge fuer die Profilbeschreibung: Ein Proteinnachweis — PBP2a per
// Lateral-Flow — begruendet dieselbe Erwartung wie ein per PCR gefundenes mecA,
// ist als EMPFINDLICHKEITSVORHERSAGE aber nicht kodierbar. Der Nachweis selbst
// ist es sehr wohl, ueber
// MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC; nur der Schritt zur
// abgeleiteten Empfindlichkeit fehlt terminologisch. Der Bedarf ist an die
// europaeische Gruppe gemeldet.
//
// Name und Title bleiben deshalb bei "Genotyp": Der Begriff trifft die 99 Codes
// genau. (Eine Umbenennung waere ohnehin folgenlos gewesen — die Canonical haengt
// an der Id, nicht am Namen.)
* include codes from system $loinc
    where CLASS = "LP7755-4" and
    PROPERTY = "LP6870-2" and
    METHOD_TYP = "LP28723-2"
