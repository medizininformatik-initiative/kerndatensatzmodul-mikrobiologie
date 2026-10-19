ValueSet: MII_VS_Mikrobio_Resistenzkategorie_Status_Ergebnis
Id: mii-vs-mikrobio-resistenzkategorie-status-ergebnis
Title: "MII VS Microbiology Resistance Category Status Result"
Description: "Result of assessing a detected pathogen with regard to the resistance category given in Observation.code."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
// Positive: Der bewertete Erreger erfuellt die Kriterien der in Observation.code
// angegebenen Kategorie.
// Negative: Der Erreger wurde anhand der fuer diese Kategorie relevanten Untersuchungen
// ausreichend bewertet und erfuellt die Kriterien nicht.
//
// Negative bedeutet NICHT: negativer zielgerichteter Erregernachweis, keine Resistenz
// vorhanden, Erreger nicht nachgewiesen oder keine ausreichende Diagnostik durchgefuehrt.
// Kann die Kategorie nicht ausreichend bewertet werden, wird nicht Negative angegeben,
// sondern dataAbsentReason gesetzt oder gar keine Status-Observation erzeugt.
* $sct#10828004 "Positive"
* $sct#260385009 "Negative"
