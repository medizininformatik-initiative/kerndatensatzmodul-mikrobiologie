## {{page-title}}

---

**Beschreibung**


Dieses Profil beschreibt den Nachweis und die Identifizierung eines Mikroorganismus mittels Kulturdiagnostik. Ähnlich wie die anderen Observationsprofile basiert dieses Profil auf dem [MII Modul Labor Profil Laboruntersuchung](https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab) und hat daher viele Merkmale gemeinsam (z.B. MS Elemente). . Observation.ReferenceRange erscheint in diesem Fall wie in Modul Labor modelliert und wurde nicht weiter eingeschränkt

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-kultur-nachweis' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-kultur-nachweis, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
|Observation.value[x] |Nachweis des Organismus |
|Observation.method] |Nähere Angaben zu der für die Kultur verwendeten Methode |
|Observation.component.value[x]|Name des Organismus|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|--------------|
|Observation.method|mii-lm-mikrobio-logical-model.KulturDiagnostik.KulturMethode|
|Observation.value[x]|mii-lm-mikrobio-logical-model.KulturDiagnostik.Nachweis|
|Observation.component.value[x]|mii-lm-mikrobio-logical-model.KulturDiagnostik.Erregername |

---

**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-kultur-nachweis' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((8 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-kultur-nachweis, snapshot}}

---

**Beispiele**

Beispiel (minimal):

{{json:Example-Kultur-Nachweis.json}}