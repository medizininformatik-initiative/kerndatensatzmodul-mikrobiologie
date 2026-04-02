ValueSet: MII_VS_Mikrobio_Resistenzmechanismen_Determinanten_LOINC
Id: mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc
Title: "MII VS Mikrobio Resistenzmechanismen Determinanten [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^compose.include[+].system = "http://loinc.org"
* ^compose.include[=].filter[0].property = #PROPERTY
* ^compose.include[=].filter[0].op = #=
* ^compose.include[=].filter[0].value = "LP217195-9"
* ^compose.include[=].filter[1].property = #CLASS
* ^compose.include[=].filter[1].op = #=
* ^compose.include[=].filter[1].value = "ABXBACT"
* ^compose.include[=].filter[2].property = #STATUS
* ^compose.include[=].filter[2].op = #=
* ^compose.include[=].filter[2].value = "ACTIVE"
