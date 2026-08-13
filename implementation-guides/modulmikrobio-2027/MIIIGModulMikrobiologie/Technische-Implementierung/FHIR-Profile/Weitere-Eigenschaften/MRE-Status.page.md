---
canonical: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-status
capability: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata
resType: Observation
expand: 1
---
## {{link}}

MRE-Status gibt an, ob ein untersuchtes Isolat anhand der vorliegenden mikrobiologischen Befunde als multiresistenter Erreger (MRE) einzustufen ist.

Das Profil löst das frühere `mii-pr-mikrobio-mre-klasse` ab. Dort war der Wert die konkrete resistente Organismusart, z. B. MRSA oder VRE. Diese Modellierung wiederholte Erreger- und Resistenzinformationen, die bereits über Identifikation, Empfindlichkeit und Resistenzmechanismen abgebildet sind, und war semantisch breiter als „MRE": Nicht jeder antimikrobiell resistente Organismus ist ein multiresistenter Erreger — `838510005 |Linezolid resistant Enterococcus|` beschreibt zunächst eine Einzelsubstanzresistenz.

### Fragestellung und Ergebnis

`Observation.code` ist der MII-eigene Code `mre-status`. Ein passender standardisierter Code existiert nicht: LOINC enthält nur erregerspezifische Presence-Tests und die MRGN-Klassifikation `99780-9`; in der SNOMED-CT-Hierarchie *Observable entity* ist `1285113001 |Type of antimicrobial resistant organism|` das einzige einschlägige Konzept und fragt nach dem **Typ**, nicht nach einem Status.

| Ergebnis | Bedeutung |
|---|---|
| `373066001 \|Yes\|` | Das Isolat wurde anhand der erforderlichen mikrobiologischen Befunde bewertet und erfüllt die Kriterien mindestens einer festgelegten MRE-Kategorie. |
| `373067005 \|No\|` | Das Isolat wurde hinsichtlich der relevanten MRE-Kriterien vollständig bewertet und erfüllt keine dieser Kategorien. |
| `dataAbsentReason` | Eine ausreichende Bewertung war nicht möglich. In diesem Fall wird **nicht** `No` angegeben. |

Welche Kategorien einen positiven MRE-Status auslösen, ist unter [Nachweis, Empfindlichkeit und Klassifikation](../Nachweis-Empfindlichkeit-Klassifikation.page.md) festgelegt. Die Zuordnung wird nicht implizit aus dem SNOMED-Unterbaum „antimicrobial resistant organism" abgeleitet.

### Ableitung

Der MRE-Status ist eine abgeleitete Aussage. Die zugrunde liegenden Befunde werden über `Observation.derivedFrom` referenziert — mindestens einer ist verpflichtend. Als Eingangsgrößen kommen infrage: Erregeridentifikation, Empfindlichkeitsbefunde, Resistenzmechanismen bzw. Resistenzdeterminanten und eine ggf. vorliegende MRGN-Klassifikation.

`triggeredBy` wird hierfür **nicht** verwendet: Der Status entsteht durch fachliche Bewertung mehrerer Befunde und nicht als ausgelöste Folgeuntersuchung.

`MRE-Status = No` setzt ein vorhandenes, bewertbares Isolat voraus. Das negative Ergebnis eines zielgerichteten Erregernachweises ist etwas anderes und wird über [Spezifische Bestimmung](../Bestimmung/Spezifische-Bestimmung.page.md) bzw. [Spezifische Kultur](../Kultur/Spezifische-Kultur.page.md) abgebildet.

### Metadaten

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

</br>

### Beispiele

MRE-Status negativ — Isolat bewertet, keine Kategorie erfüllt:

{{json:mii-exa-mikrobio-mre-status}}

MRE-Status positiv als Abschluss einer diagnostischen Kette:

{{json:mii-exa-mikrobio-workflow-vre-04-mre-status}}
