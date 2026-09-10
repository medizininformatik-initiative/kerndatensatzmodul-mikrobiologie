Probe beschreibt das mikrobiologisch untersuchte Material. Das Profil leitet von
[MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)
ab, einem Basisprofil, das dafür geschrieben ist, dass Module davon ableiten
statt es direkt zu implementieren. `Observation.specimen` jedes
Untersuchungsprofils dieses Moduls verweist darauf.

{:.bg-warning}
**Ballotfrage 1 — können Sie zu jedem Befund eine Specimen-Ressource liefern?**
Jedes Untersuchungsprofil hier verlangt `Observation.specimen`. Das europäische
Whitepaper hält fest, dass die Probe immer ausdrücklich in einer
Specimen-Ressource abzubilden ist, auch wenn der LOINC-Code sie bereits trägt —
die Frage ist also die Erfüllbarkeit, nicht der Grundsatz. Aus der deutschen
Laborpraxis kommt die Rückmeldung, dass sie häufig nicht erzeugt wird. Die Frage
steht vollständig auf [Probe](probe.html).

{:.bg-warning}
**Ballotfrage 3 — Pflicht-Temperaturbedingungen an `Specimen.processing`.**
Das Basisprofil verlangt die Extension `temperaturbedingungen` an jedem
`Specimen.processing`-Element. Für die mikrobiologische Aufarbeitung trägt sie
keine Aussage, und ein abgeleitetes Profil kann sie nicht lockern. Die Frage
steht vollständig auf [Probe](probe.html).

### Probenart

`Specimen.type.coding:sct` behält die geerbte Bindung an das Probenart-ValueSet
der Biobank. Es ist `descendent-of 123038009 |Specimen|` und trifft damit die
mikrobiologischen Probenarten; ein eigenes ValueSet wäre eine Teilmenge ohne
zusätzliche Aussage. Eine Lücke bleibt: Der Wurzelcode `123038009` selbst ist
ausgeschlossen, „Probe, nicht näher bestimmt" also nicht ausdrückbar. Die Bindung
ist extensible, der Fall bleibt damit eine Warnung und kein Fehler.
