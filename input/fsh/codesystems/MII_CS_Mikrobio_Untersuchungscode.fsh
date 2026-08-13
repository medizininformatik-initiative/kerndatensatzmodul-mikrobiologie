CodeSystem: MII_CS_Mikrobio_Untersuchungscode
Id: mii-cs-mikrobio-untersuchungscode
Title: "MII CS Mikrobio Untersuchungscode"
Description: "CodeSystem für Untersuchungscodes (Observation.code), für die in LOINC und SNOMED CT kein passendes Konzept existiert."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Recherchestand: LOINC enthaelt keinen generischen Code fuer den MRE-Status eines Isolats,
// sondern nur erregerspezifische Presence-Tests (z. B. 63480-8, 107596-9) und die
// MRGN-Klassifikation 99780-9. In der SNOMED-CT-Hierarchie "Observable entity"
// (363787002) ist 1285113001 "Type of antimicrobial resistant organism" das einzige
// einschlaegige Konzept; es fragt nach dem TYP des resistenten Organismus und ist fuer
// eine Ja/Nein-Aussage ungeeignet.
* #mre-status "MRE-Status" "Ist das untersuchte Isolat anhand der vorliegenden mikrobiologischen Befunde als multiresistenter Erreger (MRE) einzustufen? Die Kriterien, die zu einem positiven MRE-Status führen, sind im Implementierungsleitfaden festgelegt und werden nicht implizit aus einer Terminologiehierarchie abgeleitet."
