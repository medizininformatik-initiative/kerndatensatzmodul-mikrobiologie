// Der Titer wird als Ratio abgebildet (MII_PR_Mikrobio_Titer): Zaehler fest 1,
// Nenner die Verduennungsstufe. Der Basis-Suchparameter Observation-value-quantity
// deckt nur "(Observation.value as Quantity) | (Observation.value as SampledData)" ab
// und greift damit nicht auf Ratio. Ohne diesen Parameter ist ein Titer nicht suchbar.
//
// Indiziert wird ausschliesslich der Nenner. Da der Zaehler fest 1 ist, entspricht ein
// groesserer Nenner einem hoeheren Titer: ?titer=gt160 findet Titer oberhalb von 1:160.
Instance: mii-sp-mikrobio-observation-titer
InstanceOf: SearchParameter
Usage: #definition
* insert Version
* insert SP_Publisher
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/SearchParameter/Observation-titer"
* name = "MII_SP_Mikrobio_Observation_Titer"
* status = #active
* experimental = false
* description = "Search by the dilution step of a titre. Indexes the denominator of the Ratio value of MII_PR_Mikrobio_Titer; the numerator is fixed at 1 there. A larger denominator means a higher titre, e.g. ?titer=gt160 finds all titres above 1:160."
* code = #titer
* base = #Observation
* type = #quantity
* expression = "Observation.value.ofType(Ratio).denominator"
