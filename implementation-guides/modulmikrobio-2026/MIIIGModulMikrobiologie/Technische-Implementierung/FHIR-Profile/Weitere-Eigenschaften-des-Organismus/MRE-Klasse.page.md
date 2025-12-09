## {{page-title}}
**Beschreibung**


Dieses Profil beschreibt die MRE-Klasse des Mikroorganismus.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Obervation.value| MRE Klasse |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Obervation.value| mii-lm-mikrobio-logical-model.Weitere_Eigenschaften_Organismus.MREKlasse |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mre-klasse' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse, snapshot}}

---

**Beispiele**


Beispiel (minimal):

{{json:Example-mre-klasse.json}}