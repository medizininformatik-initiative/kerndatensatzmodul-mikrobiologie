# Extensions - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Inhaltsverzeichnis**](toc.md)
* **Extensions**

## Extensions

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Extensions

Das Modul definiert **eine** eigene Extension nach der MII-Namenskonvention `MII_EX_<Modul>_<Name>` und führt **eine** HL7-Cross-Version-Extension mit, die es bisher nicht aus einem Paket beziehen kann. Die Profile, die sie verwenden, stehen auf der Seite [Profile](profiles.md).

#### MII EX Mikrobio Empfindlichkeit Norm

[mii-ex-mikrobio-empfindlichkeit-norm](StructureDefinition-mii-ex-mikrobio-empfindlichkeit-norm.md) benennt das Normsystem, auf dessen Grenzwerten eine Empfindlichkeitskategorie beruht — `EUCAST`, `CLSI` oder `Andere`, aus [MII VS Mikrobio Susceptibility Norm](ValueSet-mii-vs-mikrobio-susceptibility-norm.md).

Ihr Kontext ist `Observation.interpretation`, nicht die Observation, und genau darauf kommt es an: Eine Kategorie ist ohne die zugrunde liegenden Grenzwerte bedeutungslos, und dieselbe MHK ist unter der einen Norm sensibel und unter der anderen resistent. An der Bewertung hängend kann eine einzige gemessene MHK eine EUCAST- und eine CLSI-Kategorie nebeneinander tragen, jede mit ihrer eigenen Norm. [Empfindlichkeit](StructureDefinition-mii-pr-mikrobio-empfindlichkeit.md) verlangt sie je Bewertung genau einmal (`1..1 MS`). Die Begründung steht unter [Interpretation](interpretation.md), einschließlich des offenen Punktes, dass die **Version** der Norm bisher nicht ausdrückbar ist.

#### R5: Triggering observation(s)

[ext-R5-Observation.triggeredBy](StructureDefinition-ext-R5-Observation.triggeredBy.md) ist **keine** MII-Extension. Sie ist eine Kopie der HL7-Cross-Version-Extension `http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy`, die das R5-Element `Observation.triggeredBy` nach R4 zurückportiert, mitgeführt unter ihrer ursprünglichen Canonical, ihrem Publisher und ihrer Work Group.

Sie wird mitgeführt, weil Simplifier die `xver`-Pakete nicht unterstützte, was die Snapshot-Generierung brach. Sobald das Modul wieder von dem Paket abhängen kann, entfällt diese Kopie und die Abhängigkeit kommt zurück — die Canonical ändert sich dabei nicht, Konsumenten sind also nicht betroffen.

Das Modul bildet damit die Reflexkette ab: Eine Untersuchung hält fest, welche Untersuchung sie ausgelöst hat, mit `type = reflex`. Die Modellierung steht unter [FHIR-Profile - Modellierungshinweise](fhir-profile.md), die daraus entstehende Kette unter [Profilauswahl und Abgrenzung](profilauswahl-und-abgrenzung.md). Der Suchparameter [mii-sp-mikrobio-observation-triggered-by](SearchParameter-mii-sp-mikrobio-observation-triggered-by.md) macht die Kette suchbar.

