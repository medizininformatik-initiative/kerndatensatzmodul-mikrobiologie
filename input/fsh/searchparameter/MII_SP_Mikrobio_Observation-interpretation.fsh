Instance: ObservationInterpretation
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-interpretation"
* insert Version
* name = "ObservationInterpretation"
* status = #active
* description = "Suche nach der Interpretation einer mikrobiologischen Observation."
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"
