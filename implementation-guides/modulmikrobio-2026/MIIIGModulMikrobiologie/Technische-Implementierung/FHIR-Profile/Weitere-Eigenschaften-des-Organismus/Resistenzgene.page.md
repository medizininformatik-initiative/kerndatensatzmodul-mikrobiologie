## {{page-title}}
**Beschreibung**


Dieses Profil beschreibt die Mechanismen der Resistenz aufgrund des Vorhandenseins eines Resistenzgens.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzgene' select Name: name, Canonical: url
```

---

**Differential**
{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzgene, diff}}


---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.value |  Vorhandensein eines Resistenzgens  |



---

**Mapping **

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.value |  mii-lm-mikrobio-logical-model.Weitere_Eigenschaften_Organismus.Resistanzmechanism.ResistenzGene  |



---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzgene' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzgene, snapshot}}


---

**Beispiele**

Beispiel (minimal):

{{json:Example-resistenzgene.json}}