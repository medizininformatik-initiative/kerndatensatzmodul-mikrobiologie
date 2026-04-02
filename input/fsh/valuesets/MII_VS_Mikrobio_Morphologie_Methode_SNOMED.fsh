ValueSet: MII_VS_Mikrobio_Morphologie_Methode_SNOMED
Id: mii-vs-mikrobio-morphologie-methode-snomed
Title: "MII VS Mikrobio Morphologie Methode [SNOMED]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^compose.include[+].system = "http://snomed.info/sct"
* ^compose.include[=].filter[0].property = #concept
* ^compose.include[=].filter[0].op = #is-a
* ^compose.include[=].filter[0].value = "278289002"
* ^compose.include[+].system = "http://snomed.info/sct"
* ^compose.include[=].filter[0].property = #concept
* ^compose.include[=].filter[0].op = #is-a
* ^compose.include[=].filter[0].value = "703857004"
