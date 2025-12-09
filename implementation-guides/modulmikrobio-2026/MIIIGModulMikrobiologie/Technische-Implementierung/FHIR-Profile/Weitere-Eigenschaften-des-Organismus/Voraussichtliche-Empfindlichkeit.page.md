## {{page-title}}
**Beschreibung**


Dieses Profil beschreibt Tests zur Vorhersage der Empfindlichkeit.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.value| Voraussichtliche Empfindlichkeit |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Observation.value| mii-lm-mikrobio-logical-model.Weitere_Eigenschaften_Organismus.VoraussichtlicheEmpfindlichkeit |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-voraussichtliche-empfindlichkeit.json}}