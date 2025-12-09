## Befund - DiagnosticReport

-------------

### Bestehende Profile Kerndatensatz Medizininformatik-Initiative

**Modul Labor**

Durch den Kerndatensatz der Medizininformatik Initative wird bereits das Konzept des "Laborbefunds" im Modul Labor definiert. Diese Spezifikation wird im Rahmen dieses Moduls wiederverwendet. In diesem Modul enthält das Element DiagnosticReport.category.coding jedoch zwei zusätzliche mikrobiologiespezifische Slices.

Siehe Profil ["MI-Initiative - Laborprofile - DiagnosticReport"](https://simplifier.net/medizininformatikinitiative-modullabor/diagnosticreportlab).

Canonical URL: ``https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab``

Es ist zu beachten, dass alle weiteren Vorgaben und Pflichtfelder des Kerndatensatz Moduls einzuhalten sind. Weitere Informationen finden sich im Abschnitt des [ImplementationGuides - Modul Labor](https://simplifier.net/MedizininformatikInitiative-modullabor/~guides).

-------------



-------------

**Beschreibung**

Das vorliegende abgeleitete Profil beschreibt einen Befund (DiagnosticReport) im Modul Mikrobiologie. 
@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report, diff}}

---


---


-------------

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((12 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report, snapshot}}

-------------
