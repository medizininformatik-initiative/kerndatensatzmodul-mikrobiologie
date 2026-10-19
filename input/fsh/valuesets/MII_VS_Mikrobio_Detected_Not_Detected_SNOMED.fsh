ValueSet: MII_VS_Mikrobio_Detected_Not_Detected_SNOMED
Id: mii-vs-mikrobio-detected-not-detected-snomed
Title: "MII VS Microbiology Detected Not Detected [SNOMED]"
Description: "Result ValueSet for targeted qualitative detections: detected or not detected. An indeterminable result is represented not here but via Observation.dataAbsentReason."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* $sct#260373001 "Detected (qualifier value)"
* $sct#260415000 "Not detected (qualifier value)"
