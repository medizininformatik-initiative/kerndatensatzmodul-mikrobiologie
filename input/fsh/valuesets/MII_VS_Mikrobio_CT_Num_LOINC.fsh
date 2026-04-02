ValueSet: MII_VS_Mikrobio_CT_Num_LOINC
Id: mii-vs-mikrobio-ct-num-loinc
Title: "MII VS Mikrobio Ct Num [LOINC]"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^compose.include[+].system = "http://loinc.org"
* ^compose.include[=].filter[0].property = #PROPERTY
* ^compose.include[=].filter[0].op = #=
* ^compose.include[=].filter[0].value = "LP188772-0"
* ^compose.include[=].filter[1].property = #SYSTEM
* ^compose.include[=].filter[1].op = #=
* ^compose.include[=].filter[1].value = "LP7735-6"
* ^compose.include[=].filter[2].property = #CLASS
* ^compose.include[=].filter[2].op = #=
* ^compose.include[=].filter[2].value = "LP7819-8"
* ^compose.include[=].filter[3].property = #STATUS
* ^compose.include[=].filter[3].op = #=
* ^compose.include[=].filter[3].value = "ACTIVE"
