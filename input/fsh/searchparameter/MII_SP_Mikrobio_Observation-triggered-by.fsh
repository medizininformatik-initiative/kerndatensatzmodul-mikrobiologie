Instance: mii-sp-mikrobio-observation-triggered-by
InstanceOf: SearchParameter
Usage: #definition
* insert Version
* insert SP_Publisher
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-triggered-by"
* name = "MII_SP_Mikrobio_Observation_TriggeredBy"
* status = #active
* experimental = false
* description = "Suche nach der Observation, die eine mikrobiologische Observation ausgelöst hat."
* code = #triggered-by
* base = #Observation
* type = #reference
* expression = "Observation.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy').extension('observation').value"
