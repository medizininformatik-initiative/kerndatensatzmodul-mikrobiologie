## {{page-title}}
**Beschreibung**


Dieses Profil beschreibt die MRGN-Klasse (basierend auf dem Robert Koch-Institut) des Mikroorganismus.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.value| MRGN Klasse |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Observation.value| mii-lm-mikrobio-logical-model.Weitere_Eigenschaften_Organismus.MRGNKlasse |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-mrgn-klasse.json}}