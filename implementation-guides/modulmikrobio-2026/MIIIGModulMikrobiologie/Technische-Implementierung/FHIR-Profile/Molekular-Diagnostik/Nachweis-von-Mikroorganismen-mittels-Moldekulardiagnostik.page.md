## {{page-title}}

---

**Beschreibung**


Dieses Profil beschreibt den Nachweis und die Identifizierung eines Mikroorganismus mit Hilfe der Molekulardiagnostik.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.value|Nachweis des Organismus  |
|Observation.component:NameMikroorganismus|Name des Organismus  |
|Observation.component:PCRQuantitativesErgebnisViruslast  |Quantitatives Ergebnis, z.B. Viruslast  |
|Observation.component:CtWert|Cycle threshold  |


---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.value|mii-lm-mikrobio-logical-model.MolekularDiagnostik.Nachweis  |
|Observation.component:NameMikroorganismus|mii-lm-mikrobio-logical-model.MolekularDiagnostik.Erregername  |
|Observation.component:PCRQuantitativesErgebnisViruslast|mii-lm-mikrobio-logical-model.MolekularDiagnostik.PCRQuantitativesErgebnis  |
|Observation.component:CtWert|mii-lm-mikrobio-logical-model.MolekularDiagnostik.CycleThreshold  |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:mii-exa-mikrobio-molekulare-diagnostik}}