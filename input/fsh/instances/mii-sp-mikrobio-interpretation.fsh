Instance: mii-sp-mikrobio-interpretation
InstanceOf: SearchParameter
Usage: #definition
* insert Version
* insert SP_Publisher
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-norm-kategorie"
* name = "MII_SP_Mikrobio_NormKategorie"
* status = #active
* experimental = false
* date = "2026-04-02"
* description = "Suchparameter für die Normkategorie der Empfindlichkeitsextension"
* code = #norm-kategorie
* base = #Observation
* type = #token
* expression = "Observation.interpretation.extension('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm').value.ofType(CodeableConcept)"
