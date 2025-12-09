## {{page-title}}

**Beschreibung**

Dieses Profil beschreibt serologische und immunologische Tests.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.value[x]:valueCodeableConcept|Nachweis |
|Observation.component:QuantitativesErgebnisserologischenTest  |Quantitatives Ergebnis des serologischen Tests  |
|Observation.component:QuantitativesErgebnisAntigentest|Quantitatives Ergebnis des Antigentests  |
|Observation.component:Aviditaet|Avidität  |

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
|Observation.value[x]:valueCodeableConcept|mii-lm-mikrobio-logical-model.Serologie_Immunologie.QualitativesErgebnisAntigenTest,mii-lm-mikrobio-logical-model.Serologie_Immunologie.QualitativesErgebnisSerologie	 |
Observation.component:QuantitativesErgebnisserologischenTest|mii-lm-mikrobio-logical-model.Serologie_Immunologie.QuantitativesErgebnisSerologie|
|Observation.component:QuantitativesErgebnisAntigentest|mii-lm-mikrobio-logical-model.Serologie_Immunologie.QuantitativesErgebnisAntigenTest|
|Observation.component:Aviditaet|mii-lm-mikrobio-logical-model.Serologie_Immunologie.Avidität|

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-immunologie-serologie (1).json}}