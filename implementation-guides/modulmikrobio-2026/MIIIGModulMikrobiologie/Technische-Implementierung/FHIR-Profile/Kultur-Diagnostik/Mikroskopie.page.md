## {{page-title}}

---

**Beschreibung**


Dieses Profil beschreibt die mikroskopischen Tests in der Mikrobiologie.
Bildgebung kann über das Element Observation.derivedFrom referenziert werden.
@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.value|Nachweis des Organismus |
|Observation.value|Quantitatives Ergebnis |
|Observation.method|Mikroskopische methode |
|Observation.interpretation|Semi-quantitatives Ergebnis |
|Observation.component:NameMikroorganismus|Name des Organismus |
|Observation.component:Morphologie|Morphologische Beschreibung |
|Observation.component:NugentScore|Nugent Score |
|Observation.component:BarlettScore|Barlett score |


---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|---------------------|
|Observation.value |  mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.Nachweis |
|Observation.value |  ii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.QuantitativesErgebnis |
|Observation.method |mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.Methode |
|Observation.interpretation|mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.QuantitativesErgebnis 
|Observation.component:NameMikroorganismus |mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.Erregername |
|Observation.component:Morphologie|mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.Morphologie |
|Observation.component:NugentScore|mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.NugentScore |
|Observation.component:BarlettScore|mii-lm-mikrobio-logical-model.KulturDiagnostik.Mikroskopie.BarlettScore |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie' )
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

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:mii-exa-mikrobio-mikroskopie}}