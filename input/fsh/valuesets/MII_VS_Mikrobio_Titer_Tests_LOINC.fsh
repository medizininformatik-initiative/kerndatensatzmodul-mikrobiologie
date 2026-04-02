ValueSet: MII_VS_Mikrobio_Titer_Tests_LOINC
Id: mii-vs-mikrobio-titer-tests-loinc
Title: "MII VS Mikrobio Titer Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^compose.include[+].system = "http://loinc.org"
* ^compose.include[=].filter[0].property = #PROPERTY
* ^compose.include[=].filter[0].op = #=
* ^compose.include[=].filter[0].value = "LP6881-9"
* ^compose.include[=].filter[1].property = #CLASS
* ^compose.include[=].filter[1].op = #=
* ^compose.include[=].filter[1].value = "MICRO"
* ^compose.include[=].filter[2].property = #STATUS
* ^compose.include[=].filter[2].op = #=
* ^compose.include[=].filter[2].value = "ACTIVE"
