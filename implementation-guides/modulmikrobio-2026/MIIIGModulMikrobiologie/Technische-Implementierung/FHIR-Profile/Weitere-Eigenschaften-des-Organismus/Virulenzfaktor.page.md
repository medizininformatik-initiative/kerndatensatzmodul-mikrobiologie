## {{page-title}}
**Beschreibung**


Dieses Profil beschreibt Tests zum Nachweis des Virulenzfaktors.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.value|Virulenzfaktor  |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.value | mii-lm-mikrobio-logical-model.Weitere_Eigenschaften_Organismus.Virulenzfakto |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-virulenzfaktor.json}}