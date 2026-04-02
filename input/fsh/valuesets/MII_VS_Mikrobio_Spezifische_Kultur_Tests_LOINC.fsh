ValueSet: MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC
Id: mii-vs-mikrobio-spezifische-kultur-tests-loinc
Title: "MII VS Mikrobio Spezifische Kultur Tests [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^compose.include[+].system = "http://loinc.org"
* ^compose.include[=].filter[0].property = #PROPERTY
* ^compose.include[=].filter[0].op = #=
* ^compose.include[=].filter[0].value = "LP6850-4"
* ^compose.include[=].filter[1].property = #SYSTEM
* ^compose.include[=].filter[1].op = #=
* ^compose.include[=].filter[1].value = "LP7735-6"
* ^compose.include[=].filter[2].property = #METHOD_TYP
* ^compose.include[=].filter[2].op = #=
* ^compose.include[=].filter[2].value = "LP6429-7"
* ^compose.include[=].filter[3].property = #CLASS
* ^compose.include[=].filter[3].op = #=
* ^compose.include[=].filter[3].value = "LP7819-8"
* ^compose.include[=].filter[4].property = #STATUS
* ^compose.include[=].filter[4].op = #=
* ^compose.include[=].filter[4].value = "ACTIVE"
