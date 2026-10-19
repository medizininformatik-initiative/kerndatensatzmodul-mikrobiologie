Instance: ObservationInterpretation
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation"
* insert Version
* name = "ObservationInterpretation"
* status = #active
* description = "Search by the interpretation of a microbiological Observation."
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"
