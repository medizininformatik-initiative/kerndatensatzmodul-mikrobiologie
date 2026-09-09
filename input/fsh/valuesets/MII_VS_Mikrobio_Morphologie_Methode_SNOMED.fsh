ValueSet: MII_VS_Mikrobio_Morphologie_Methode_SNOMED
Id: mii-vs-mikrobio-morphologie-methode-snomed
Title: "MII VS Mikrobio Morphologie Methode [SNOMED]"
Description: "Methoden-ValueSet für die Mikroskopie: mikroskopische Verfahren einschließlich der eingesetzten Färbetechnik."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from system $sct where concept is-a #278289002
* include codes from system $sct where concept is-a #703857004
