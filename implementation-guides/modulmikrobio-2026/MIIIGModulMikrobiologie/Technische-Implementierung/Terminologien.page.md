## {{page-title}}

In deutschen Laboratorien werden häufig standortspezifische Wertelisten und Vorschriften angewandt. Dieses Modell zielt darauf ab, die Kodierungen mit internationalen Systemen wie z.B. [SNOMED CT](http://snomed.info/sct "SNOMED") oder [LOINC](http://loinc.org "LOINC") zu vereinheitlichen.


LOINC liefert Codes, die die Namen von Informationselementen (z. B. Fragen) darstellen, und SNOMED CT liefert Codes, die nominale und ordinale Werte (z. B. Antworten) für diese benannten Informationselemente darstellen können.

z.B. Kulturdiagnostik:
Frage (LOINC):
		{{render:medizininformatik-initiative-modul-mikrobiologie/loinc}}
Antwort (SNOMED CT):
{{render:medizininformatik-initiative-modul-mikrobiologie/snomed}}

Für einige Konzepte bieten beide Terminologien mögliche Mappings.

LOINC-Testdefinitionen sind in der Regel sehr spezifisch und enthalten bereits die Namen der Organismen.

SNOMED DT-Konzepte sind allgemeiner, da sie nicht darauf abzielen, Labortests detailliert zu beschreiben.

e.g. Virulenzfaktor

{{render:medizininformatik-initiative-modul-mikrobiologie/virulenz}}

Für Observationsmethoden haben wir SNOMED-Konzepte aus der *Procedure*-Hierarchie verwendet, die umfassender zu sein scheint als die *Qualifier Value*-Hierarchie. Aufgrund einer [Vereinbarung zwischen SNOMED und LOINC](https://www.snomed.org/news/new-collaboration-agreement-between-snomed-international-and-loinc%C2%AE-from-regenstrief?lang=de) könnte sich diese Wahl jedoch in Zukunft ändern, wenn die LOINC-Methodenachse von Laborverfahren in die *Qualifier Value*-Hierarchie aufgenommen wird.

Für die EUCAST-Werte haben wir neue Codes von SNOMED CT erhalten,die das System und die Version (EUCAST 2019) spezifizieren, um Mehrdeutigkeiten zu vermeiden. 
Für CLSI kann die HL7-Terminologie verwendet werden, da sie sich ausdrücklich auf dieses System bezieht.
