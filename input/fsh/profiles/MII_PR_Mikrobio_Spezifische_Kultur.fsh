Profile: MII_PR_Mikrobio_Spezifische_Kultur
Parent: MII_PR_Labor_Laboruntersuchung
Id: mii-pr-mikrobio-spezifische-kultur
Title: "MII PR Mikrobio Spezifische Kultur"
Description: "Spezifische Kultur beschreibt das Ergebnis einer zielgerichteten kulturbasierten Untersuchung, die prüft, ob ein vordefinierter Mikroorganismus in der Probe wächst. Das gesuchte Ziel ist bereits im Untersuchungscode benannt; das Ergebnis ist die Aussage über Wachstum."
* insert MIKRO_OBSERVATION_COMMON
* ^purpose = "Dieses Profil beschreibt die zielgerichtete Kulturdiagnostik."
* code from MII_VS_Mikrobio_Spezifische_Kultur_Tests_LOINC (extensible)
* code ^short = "Erregerspezifischer Kulturnachweis. Es werden bevorzugt LOINC-Codes ohne präkoordinierte Specimentype-Angabe verwendet (System = XXX); der Specimentype wird separat über Specimen.type kodiert."
* value[x] only CodeableConcept
* valueCodeableConcept
* valueCodeableConcept from MII_VS_Mikrobio_Kultur_Ergebnis_SNOMED (required)
* valueCodeableConcept ^short = "Wachstum oder kein Wachstum des im Code benannten Mikroorganismus. Ein unbestimmbares Ergebnis wird über dataAbsentReason abgebildet."
* method from MII_VS_Mikrobio_Spezifische_Kultur_Methode_SNOMED (extensible)
