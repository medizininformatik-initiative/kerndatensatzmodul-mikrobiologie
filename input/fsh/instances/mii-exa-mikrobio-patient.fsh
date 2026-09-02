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
Title: "MII EXA Mikrobio Patient"
Description: "Minimales Subject für die Beispiele dieses Moduls. Kein Profil, keine Demografie — Patient wird vom Personen-Modul verantwortet."
* identifier[0].system = "https://example.org/fhir/sid/test-patient"
* identifier[0].value = "111"
