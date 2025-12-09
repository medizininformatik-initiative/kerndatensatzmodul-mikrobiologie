## {{page-title}}

---

**Beschreibung**


Dieses Profil beschreibt die Tests zur Prüfung der Empfindlichkeit.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.interpretation |Empfindlichkeitskategorie  |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.interpretation |  mii-lm-mikrobio-logical-model.KulturDiagnostik.Resistenz |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-empfindlichkeit (2).json}}