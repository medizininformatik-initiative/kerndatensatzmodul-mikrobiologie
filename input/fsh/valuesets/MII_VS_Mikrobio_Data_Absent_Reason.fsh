ValueSet: MII_VS_Mikrobio_Data_Absent_Reason
Id: mii-vs-mikrobio-data-absent-reason
Title: "MII VS Mikrobio Data Absent Reason"
Description: "Gruende fuer ein fehlendes Untersuchungsergebnis. Ergaenzt die FHIR-Basiscodes um das unbestimmbare Ergebnis, das zuvor ueber value[x] kodiert wurde."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset http://hl7.org/fhir/ValueSet/data-absent-reason
* $sct#82334004 "Indeterminate (qualifier value)"
