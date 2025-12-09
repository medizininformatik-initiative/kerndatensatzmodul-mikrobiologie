## {{page-title}}

---

**Beschreibung**


Dieses Profil beschreibt die Keimzahl in der Mikrobiologie.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Observation.value| Informationen über die Anzahl an Mikroorganismen |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.value | mii-lm-mikrobio-logical-model.KulturDiagnostik.Keimzahl |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-Keimzahl.json}}