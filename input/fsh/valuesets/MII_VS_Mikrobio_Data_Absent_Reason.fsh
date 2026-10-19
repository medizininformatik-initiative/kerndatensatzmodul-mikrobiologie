ValueSet: MII_VS_Mikrobio_Data_Absent_Reason
Id: mii-vs-mikrobio-data-absent-reason
Title: "MII VS Microbiology Data Absent Reason"
Description: "Reasons for a missing investigation result. Supplements the FHIR base codes with the indeterminable result that was previously coded via value[x]."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* include codes from valueset http://hl7.org/fhir/ValueSet/data-absent-reason
* $sct#82334004 "Indeterminate (qualifier value)"
