// Gemeinsames Subject aller mikrobiologischen Beispiele dieses Moduls.
//
// Patient wird fachlich vom Personen-Modul verantwortet; dieses Beispiel bildet
// es NICHT nach und beansprucht kein Profil. Es existiert allein, damit die
// `subject`-Referenzen der Beispiele auflösbar sind — vorher liefen 26 Beispiele
// gegen `Patient/example`, das nichts auflöste (26 Fehler im QA-Report).
//
// Bewusst minimal: nur ein Identifier, keine Demografie. Wer ein realistisches
// Patientenbeispiel braucht, findet es im Personen-Modul; hier wäre es
// Doppelpflege.
Instance: mii-exa-mikrobio-patient
InstanceOf: Patient
Usage: #example
Title: "MII EXA Microbiology Patient"
Description: "Minimal subject for the examples of this module. No profile, no demographics — Patient is the responsibility of the Person module."
* identifier[0].system = "https://example.org/fhir/sid/test-patient"
* identifier[0].value = "111"
