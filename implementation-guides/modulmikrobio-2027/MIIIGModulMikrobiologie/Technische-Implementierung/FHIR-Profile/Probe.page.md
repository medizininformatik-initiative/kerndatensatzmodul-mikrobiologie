## Befund - Probe

Für die Abbildung von Proben wird auf das Profil
[MII_PR_Biobank_Specimen_Bioprobe_Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/mii_pr_biobank_specimen_bioprobe_core)
aus dem [MII Modul
Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank)
verwiesen.

Für die mikrobiologischen Anwendungsfälle sind dabei insbesondere
folgende Elemente relevant:

-   **`Specimen.type[sct]`**\
    Soll mit dem Probentyp befüllt werden. Dies gilt auch dann, wenn die
    Materialangabe bereits im verwendeten LOINC-Code präkoordiniert
    enthalten ist, um den Probentyp strukturiert und unabhängig vom
    Observation-Code verfügbar zu machen.

-   **`Specimen.collection.collected[x]`**\
    Gibt den Zeitpunkt der Probenentnahme an. Ist dieser nicht bekannt,
    kann ersatzweise der Zeitpunkt des Probeneingangs dokumentiert
    werden.

-   **`Specimen.parent`**\
    Bildet die Beziehung zu dem Specimen ab, aus dem ein anderes
    Specimen abgeleitet oder entnommen wurde, z. B. bei
    weiterverarbeiteten oder aus Primärproben gewonnenen Materialien.
