Diese Seite ist das Review-Material für die Anforderungsfamilie **Empfindlichkeit** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.html): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.html) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.html).

Mikrobiologische Anforderung: antimikrobielle Empfindlichkeit (MII KDS Mikrobiologie 2027, Profile MII_PR_Mikrobio_Empfindlichkeit und MII_PR_Mikrobio_Voraussichtliche_Empfindlichkeit, ValueSets MII_VS_Mikrobio_Empfindlichkeit_Phenotyp_LOINC = LOINC CLASS ABXBACT + PROPERTY Susc, MII_VS_Mikrobio_Empfaenglichkeit_Genotyp_LOINC = dasselbe + METHOD_TYP Genotyping). Die Ontology modelliert Empfindlichkeit als Property = 118588007 |Susceptibility|, Direct site = Microbial isolate specimen, Inheres in = Organism, Towards = die antimikrobielle Substanz (z. B. 838881010000103 „Susceptibility to delafloxacin in microbial isolate“). Voraussichtliche (genotypische) Empfindlichkeit trägt Technique = 708060009 |Genotype determination technique|. Towards (das Antibiotikum) ist die Postkoordinationsachse, die das Modul 2027 in ein eigenes Element legt.

### Phänotypische Empfindlichkeit — Isolat, keine Genotypisierung

Empfindlichkeit eines mikrobiellen Isolats gegenüber einer Substanz, ohne Observables, die eine Genotypisierungstechnik ausweisen (ECL-Kardinalität [0..0]). Entspricht der Absicht des Phänotyp-ValueSets (MHK, Agardiffusion, Gradientenstreifen … jede phänotypische Methode).

ValueSet [mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-phenotype.html). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-empfindlichkeit.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 704327008 |Direct site (attribute)| = << 119303007 |Microbial isolate specimen (specimen)|, [0..0] 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|
```

| Attribut | Wert |
|---|---|
| Property | Susceptibility |
| Direct site | `<< Microbial isolate specimen` |
| Technique | keines, `[0..0]`: `<< Genotype determination technique` |

Die Regel wählt **1230** Konzepte aus (1230 mit LOINC-Code, 0 ohne). Release 2026-03-21 → 2026-10-21: **+3 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.html)).

#### Codes (1230)

| LOINC | Name | Inheres in | Towards | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|---|
| 1-8 | Acyclovir [Susceptibility] | Organism | Acyclovir | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100-8 | Cefoperazone [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 100041-3 | Aminoglycoside [Susceptibility] | Organism | Aminoglycoside | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100042-1 | Atovaquone [Susceptibility] | Organism | Atovaquone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100046-2 | Cefquinome [Susceptibility] | Organism | Cefquinome | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100049-6 | Eravacycline [Susceptibility] | Organism | Eravacycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100053-8 | Fluoroquinolone [Susceptibility] | Organism | Fluoroquinolone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100055-3 | Optochin [Susceptibility] | Organism | Optochin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100056-1 | Panipenem [Susceptibility] | Organism | Panipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100057-9 | Prothionamide [Susceptibility] | Organism | Protionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100058-7 | Prulifloxacin [Susceptibility] | Organism | Prulifloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100059-5 | Rifapentine [Susceptibility] | Organism | Rifapentine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 101-6 | Cefoperazone [Susceptibility] by Disk diffusion (KB) | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 103-2 | Ceforanide [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceforanide | Microbial isolate | Susceptibility | Quantitative value | – |
| 103673-0 | Isavuconazole [Susceptibility] in Isolate by Gradient strip | Organism | Isavuconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 104-0 | Ceforanide [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 105-7 | Ceforanide [Susceptibility] by Disk diffusion (KB) | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 105268-7 | Clindamycin [Susceptibility] by MIC.erythromycin induced resistance | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 106433-6 | cefOXitin [Susceptibility] Qualitative | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal value | – |
| 10653-4 | Clotrimazole [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clotrimazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10654-2 | Clotrimazole [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clotrimazole | Microbial isolate | Susceptibility | Quantitative value | – |
| 106858-4 | Rezafungin [Susceptibility] | Organism | Rezafungin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 10697-1 | Nystatin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Nystatin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10698-9 | Nystatin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Nystatin | Microbial isolate | Susceptibility | Quantitative value | – |
| 107-3 | Cefotaxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 10720-1 | Terbinafine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Terbinafine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10721-9 | Terbinafine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Terbinafine | Microbial isolate | Susceptibility | Quantitative value | – |
| 108-1 | Cefotaxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10868-8 | Bacitracin [Susceptibility] by Disk diffusion (KB) | Organism | Bacitracin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 109-9 | Cefotaxime [Susceptibility] by Disk diffusion (KB) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 11-7 | Amikacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amikacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 111-5 | cefoTEtan [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefotetan | Microbial isolate | Susceptibility | Quantitative value | – |
| 112-3 | cefoTEtan [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 113-1 | cefoTEtan [Susceptibility] by Disk diffusion (KB) | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 115-6 | cefOXitin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Quantitative value | – |
| 11575-8 | Cefmetazole [Susceptibility] by Gradient strip | Organism | Cefmetazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 11577-4 | Sulfamethoxazole [Susceptibility] by Gradient strip | Organism | Sulfamethoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 11578-2 | sulfiSOXAZOLE [Susceptibility] by Gradient strip | Organism | Sulfisoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 116-4 | cefOXitin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 117-2 | cefOXitin [Susceptibility] by Disk diffusion (KB) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 119-8 | Cefpodoxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 12-5 | Amikacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 120-6 | Cefpodoxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 121-4 | Cefpodoxime [Susceptibility] by Disk diffusion (KB) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 123-0 | Cefprozil [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefprozil | Microbial isolate | Susceptibility | Quantitative value | – |
| 124-8 | Cefprozil [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 125-5 | Cefprozil [Susceptibility] by Disk diffusion (KB) | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 127-1 | Cefsulodin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Quantitative value | – |
| 128-9 | Cefsulodin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 129-7 | Cefsulodin [Susceptibility] by Disk diffusion (KB) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 13-3 | Amikacin [Susceptibility] by Disk diffusion (KB) | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 132-1 | cefTAZidime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Quantitative value | – |
| 133-9 | cefTAZidime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 134-7 | cefTAZidime [Susceptibility] by Disk diffusion (KB) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 136-2 | Ceftizoxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 137-0 | Ceftizoxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 138-8 | Ceftizoxime [Susceptibility] by Disk diffusion (KB) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 13968-3 | Penicillin [Susceptibility] by Disk diffusion (KB) | Organism | Penicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 140-4 | cefTRIAXone [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Quantitative value | – |
| 141-2 | cefTRIAXone [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 142-0 | cefTRIAXone [Susceptibility] by Disk diffusion (KB) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 14332-1 | Para aminosalicylate [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 144-6 | Cefuroxime Parenteral [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Quantitative value | – |
| 145-3 | Cefuroxime Parenteral [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 146-1 | Cefuroxime Parenteral [Susceptibility] by Disk diffusion (KB) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 148-7 | Cephalexin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephalexin | Microbial isolate | Susceptibility | Quantitative value | – |
| 149-5 | Cephalexin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 15-8 | Amoxicillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 150-3 | Cephalexin [Susceptibility] by Disk diffusion (KB) | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 152-9 | Cephaloglycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 153-7 | Cephaloglycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 154-5 | Cephaloglycin [Susceptibility] by Disk diffusion (KB) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 156-0 | Cephaloridine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Quantitative value | – |
| 157-8 | Cephaloridine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 158-6 | Cephaloridine [Susceptibility] by Disk diffusion (KB) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 16-6 | Amoxicillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 160-2 | Cephalothin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephalothin | Microbial isolate | Susceptibility | Quantitative value | – |
| 16099-4 | Ethionamide [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 161-0 | Cephalothin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 16100-0 | Rifabutin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 162-8 | Cephalothin [Susceptibility] by Disk diffusion (KB) | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 164-4 | Cephapirin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephapirin | Microbial isolate | Susceptibility | Quantitative value | – |
| 165-1 | Cephapirin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 166-9 | Cephapirin [Susceptibility] by Disk diffusion (KB) | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 16623-1 | Clofazimine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 168-5 | Cephradine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephradine | Microbial isolate | Susceptibility | Quantitative value | – |
| 169-3 | Cephradine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 17-4 | Amoxicillin [Susceptibility] by Disk diffusion (KB) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 170-1 | Cephradine [Susceptibility] by Disk diffusion (KB) | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 172-7 | Chloramphenicol [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Quantitative value | – |
| 173-5 | Chloramphenicol [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 174-3 | Chloramphenicol [Susceptibility] by Disk diffusion (KB) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 176-8 | Chlortetracycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 177-6 | Chlortetracycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 178-4 | Chlortetracycline [Susceptibility] by Disk diffusion (KB) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 180-0 | Cinoxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 181-8 | Cinoxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 182-6 | Cinoxacin [Susceptibility] by Disk diffusion (KB) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 184-2 | Ciprofloxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 185-9 | Ciprofloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 186-7 | Ciprofloxacin [Susceptibility] by Disk diffusion (KB) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 188-3 | Clarithromycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 18855-7 | 5-Fluorocytosine [Susceptibility] | Organism | Flucytosine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18857-3 | Almecillin [Susceptibility] | Organism | Almecillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18859-9 | Amdinocillin [Susceptibility] | Organism | Amdinocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18860-7 | Amikacin [Susceptibility] | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18861-5 | Amoxicillin [Susceptibility] | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18863-1 | Amphotericin B [Susceptibility] | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18864-9 | Ampicillin [Susceptibility] | Organism | Ampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18866-4 | Azithromycin [Susceptibility] | Organism | Azithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18867-2 | Azlocillin [Susceptibility] | Organism | Azlocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18868-0 | Aztreonam [Susceptibility] | Organism | Aztreonam | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18869-8 | Bacampicillin [Susceptibility] | Organism | Bacampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18870-6 | Bacitracin [Susceptibility] | Organism | Bacitracin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18871-4 | Butirosin [Susceptibility] | Organism | Butirosin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18872-2 | Capreomycin [Susceptibility] | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18873-0 | Carbenicillin [Susceptibility] | Organism | Carbenicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18874-8 | Cefaclor [Susceptibility] | Organism | Cefaclor | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18875-5 | Cefadroxil [Susceptibility] | Organism | Cefadroxil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18876-3 | Cefamandole [Susceptibility] | Organism | Cefamandole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18877-1 | Cefatrizine [Susceptibility] | Organism | Cefatrizine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18878-9 | ceFAZolin [Susceptibility] | Organism | Cefazolin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18879-7 | Cefepime [Susceptibility] | Organism | Cefepime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18880-5 | Cefixime [Susceptibility] | Organism | Cefixime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18881-3 | Cefmetazole [Susceptibility] | Organism | Cefmetazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18882-1 | Cefodizime [Susceptibility] | Organism | Cefodizime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18883-9 | Cefonicid [Susceptibility] | Organism | Cefonicid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18884-7 | Cefoperazone [Susceptibility] | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18885-4 | Ceforanide [Susceptibility] | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18886-2 | Cefotaxime [Susceptibility] | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18887-0 | cefoTEtan [Susceptibility] | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18888-8 | cefOXitin [Susceptibility] | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18889-6 | Cefpirome [Susceptibility] | Organism | Cefpirome | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18890-4 | Cefpodoxime [Susceptibility] | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18891-2 | Cefprozil [Susceptibility] | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18892-0 | Cefsulodin [Susceptibility] | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18893-8 | cefTAZidime [Susceptibility] | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18894-6 | Ceftizoxime [Susceptibility] | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18895-3 | cefTRIAXone [Susceptibility] | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18896-1 | Cefuroxime Parenteral [Susceptibility] | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18897-9 | Cephalexin [Susceptibility] | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18898-7 | Cephaloglycin [Susceptibility] | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18899-5 | Cephaloridine [Susceptibility] | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 189-1 | Clarithromycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 18900-1 | Cephalothin [Susceptibility] | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18901-9 | Cephapirin [Susceptibility] | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18902-7 | Cephradine [Susceptibility] | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18903-5 | Chloramphenicol [Susceptibility] | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18904-3 | Chlortetracycline [Susceptibility] | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18905-0 | Cinoxacin [Susceptibility] | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18906-8 | Ciprofloxacin [Susceptibility] | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18907-6 | Clarithromycin [Susceptibility] | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18908-4 | Clindamycin [Susceptibility] | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18909-2 | Clotrimazole [Susceptibility] | Organism | Clotrimazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18910-0 | Cloxacillin [Susceptibility] | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18911-8 | Colistimethate | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18912-6 | Colistin [Susceptibility] | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18913-4 | Cyclacillin [Susceptibility] | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18914-2 | cycloSERINE [Susceptibility] | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18915-9 | Demeclocycline [Susceptibility] | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18916-7 | Dicloxacillin [Susceptibility] | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18917-5 | Doxycycline [Susceptibility] | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18918-3 | Enoxacin [Susceptibility] | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18919-1 | Erythromycin [Susceptibility] | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18921-7 | Ethambutol [Susceptibility] | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18922-5 | Ethionamide [Susceptibility] | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18923-3 | Floxacillin [Susceptibility] | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18924-1 | Fluconazole [Susceptibility] | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18926-6 | Framycetin [Susceptibility] | Organism | Framycetin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18927-4 | Fusidate [Susceptibility] | Organism | Fusidic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18928-2 | Gentamicin [Susceptibility] | Organism | Gentamicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18929-0 | Gentamicin [Susceptibility] by High potency | Organism | Gentamicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18930-8 | Gramicidin D [Susceptibility] | Organism | Gramicidin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18931-6 | Hetacillin [Susceptibility] | Organism | Hetacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18932-4 | Imipenem [Susceptibility] | Organism | Imipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18934-0 | Isoniazid [Susceptibility] | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18935-7 | Kanamycin [Susceptibility] | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18936-5 | Kanamycin [Susceptibility] by High potency | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18937-3 | Ketoconazole [Susceptibility] | Organism | Ketoconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18938-1 | Lincomycin [Susceptibility] | Organism | Lincomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18939-9 | Lomefloxacin [Susceptibility] | Organism | Lomefloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18940-7 | Loracarbef [Susceptibility] | Organism | Loracarbef | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18941-5 | Lymecycline [Susceptibility] | Organism | Lymecycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18942-3 | Meclocycline [Susceptibility] | Organism | Meclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18943-1 | Meropenem [Susceptibility] | Organism | Meropenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18944-9 | Methacycline [Susceptibility] | Organism | Methacycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18945-6 | Methicillin [Susceptibility] | Organism | Methicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18946-4 | metroNIDAZOLE [Susceptibility] | Organism | Metronidazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18947-2 | Mezlocillin [Susceptibility] | Organism | Mezlocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18948-0 | Minocycline [Susceptibility] | Organism | Minocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18949-8 | Miocamycin [Susceptibility] | Organism | Midecamycin acetate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18950-6 | Moxalactam [Susceptibility] | Organism | Moxalactam | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18951-4 | Nafcillin [Susceptibility] | Organism | Nafcillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18952-2 | Nalidixate [Susceptibility] | Organism | Nalidixic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18953-0 | Neomycin [Susceptibility] | Organism | Neomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18954-8 | Netilmicin [Susceptibility] | Organism | Netilmicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18955-5 | Nitrofurantoin [Susceptibility] | Organism | Nitrofurantoin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18956-3 | Norfloxacin [Susceptibility] | Organism | Norfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18957-1 | Novobiocin [Susceptibility] | Organism | Novobiocin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18958-9 | Nystatin [Susceptibility] | Organism | Nystatin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18959-7 | Ofloxacin [Susceptibility] | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18960-5 | Oleandomycin [Susceptibility] | Organism | Oleandomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18961-3 | Oxacillin [Susceptibility] | Organism | Oxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18962-1 | Oxytetracycline [Susceptibility] | Organism | Oxytetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18963-9 | Pefloxacin [Susceptibility] | Organism | Pefloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18964-7 | Penicillin [Susceptibility] | Organism | Penicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18965-4 | Penicillin G [Susceptibility] | Organism | Penicillin G | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18966-2 | Penicillin V [Susceptibility] | Organism | Penicillin V | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18967-0 | Phenethicillin [Susceptibility] | Organism | Phenethicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18968-8 | Pipemidate [Susceptibility] | Organism | Pipemidic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18969-6 | Piperacillin [Susceptibility] | Organism | Piperacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18971-2 | Pivampicillin [Susceptibility] | Organism | Pivampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18972-0 | Polymyxin B [Susceptibility] | Organism | Polymyxin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18973-8 | Pyrazinamide [Susceptibility] | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18974-6 | rifAMPin [Susceptibility] | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18975-3 | Ristocetin [Susceptibility] | Organism | Ristocetin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18976-1 | Rolitetracycline [Susceptibility] | Organism | Rolitetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18977-9 | Rosoxacin [Susceptibility] | Organism | Rosoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18978-7 | Roxithromycin [Susceptibility] | Organism | Roxithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18979-5 | Sisomicin [Susceptibility] | Organism | Sisomicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18980-3 | Spectinomycin [Susceptibility] | Organism | Spectinomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18981-1 | Spiramycin [Susceptibility] | Organism | Spiramycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18982-9 | Streptomycin [Susceptibility] | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18983-7 | Streptomycin [Susceptibility] by High potency | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18984-5 | sulfADIAZINE [Susceptibility] | Organism | Sulfadiazine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18985-2 | Sulfamethoxazole [Susceptibility] | Organism | Sulfamethoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18986-0 | sulfiSOXAZOLE [Susceptibility] | Organism | Sulfisoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18987-8 | Sulfonamide [Susceptibility] | Organism | Sulfonamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18988-6 | Talampicillin [Susceptibility] | Organism | Talampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18989-4 | Teicoplanin [Susceptibility] | Organism | Teicoplanin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18990-2 | Temafloxacin [Susceptibility] | Organism | Temafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18991-0 | Temocillin [Susceptibility] | Organism | Temocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18992-8 | Terbinafine [Susceptibility] | Organism | Terbinafine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18993-6 | Tetracycline [Susceptibility] | Organism | Tetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18994-4 | Ticarcillin [Susceptibility] | Organism | Ticarcillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18996-9 | Tobramycin [Susceptibility] | Organism | Tobramycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18997-7 | Trimethoprim [Susceptibility] | Organism | Trimethoprim | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18999-3 | Troleandomycin [Susceptibility] | Organism | Troleandomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 190-9 | Clarithromycin [Susceptibility] by Disk diffusion (KB) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19000-9 | Vancomycin [Susceptibility] | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19001-7 | Viomycin [Susceptibility] | Organism | Viomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19149-4 | Rifabutin [Susceptibility] | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 192-5 | Clindamycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clindamycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 193-3 | Clindamycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 194-1 | Clindamycin [Susceptibility] by Disk diffusion (KB) | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 196-6 | Cloxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 197-4 | Cloxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 198-2 | Cloxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 2-6 | Almecillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Almecillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 200-6 | Colistimethate by Minimum lethal concentration (MLC) | Organism | Colistimethate | Microbial isolate | Susceptibility | Quantitative value | – |
| 201-4 | Colistimethate by Minimum inhibitory concentration (MIC) | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 202-2 | Colistimethate by Disk diffusion (KB) | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20373-7 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20375-2 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20376-0 | Clofazimine [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20377-8 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20378-6 | Ceftizoxime [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20379-4 | Doxycycline [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20380-2 | Erythromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20381-0 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20382-8 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20383-6 | Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20384-4 | Ofloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20385-1 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20386-9 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20389-3 | Mupirocin [Susceptibility] | Organism | Mupirocin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20390-1 | Silver sulfADIAZINE [Susceptibility] | Organism | Silver sulfadiazine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20391-9 | Mafenide [Susceptibility] | Organism | Mafenide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20396-8 | levoFLOXacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 20397-6 | Sparfloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 204-8 | Colistin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Colistin | Microbial isolate | Susceptibility | Quantitative value | – |
| 20461-0 | Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20462-8 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 205-5 | Colistin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 206-3 | Colistin [Susceptibility] by Disk diffusion (KB) | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20629-2 | levoFLOXacin [Susceptibility] | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 208-9 | Cyclacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 209-7 | Cyclacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 210-5 | Cyclacillin [Susceptibility] by Disk diffusion (KB) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 21070-8 | Other Antibiotic [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Antibacterial | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 212-1 | cycloSERINE [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cycloserine | Microbial isolate | Susceptibility | Quantitative value | – |
| 213-9 | cycloSERINE [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 21316-5 | Grepafloxacin [Susceptibility] by Gradient strip | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 21367-8 | levoFLOXacin [Susceptibility] by Disk diffusion (KB) | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 214-7 | cycloSERINE [Susceptibility] by Disk diffusion (KB) | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 216-2 | Demeclocycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 217-0 | Demeclocycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 218-8 | Demeclocycline [Susceptibility] by Disk diffusion (KB) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 220-4 | Dicloxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 221-2 | Dicloxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 222-0 | Dicloxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 224-6 | Doxycycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Doxycycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 225-3 | Doxycycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 226-1 | Doxycycline [Susceptibility] by Disk diffusion (KB) | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 228-7 | Enoxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Enoxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 229-5 | Enoxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23-2 | Amphotericin B [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Quantitative value | – |
| 230-3 | Enoxacin [Susceptibility] by Disk diffusion (KB) | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 232-9 | Erythromycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Erythromycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 233-7 | Erythromycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 234-5 | Erythromycin [Susceptibility] by Disk diffusion (KB) | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23607-5 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23608-3 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23609-1 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23610-9 | Sparfloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23611-7 | Para aminosalicylate [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23612-5 | Azithromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Azithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23613-3 | Imipenem [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Imipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23614-1 | Trimethoprim [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Trimethoprim | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23615-8 | Vancomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23616-6 | Viomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Viomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23627-3 | Clofazimine [Susceptibility] | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23628-1 | Sparfloxacin [Susceptibility] | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23629-9 | Para aminosalicylate [Susceptibility] | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23636-4 | Cefdinir [Susceptibility] | Organism | Cefdinir | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23637-2 | Cefdinir [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefdinir | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23638-0 | Grepafloxacin [Susceptibility] | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23639-8 | Grepafloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23642-2 | Trovafloxacin [Susceptibility] | Organism | Trovafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23643-0 | Trovafloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Trovafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23658-8 | Other Antibiotic [Susceptibility] | Organism | Antibacterial | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23712-3 | Enrofloxacin [Susceptibility] | Organism | Enrofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23740-4 | Florfenicol [Susceptibility] | Organism | Florfenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 24-0 | Amphotericin B [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 240-2 | Ethambutol [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ethambutol | Microbial isolate | Susceptibility | Quantitative value | – |
| 241-0 | Ethambutol [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 242-8 | Ethambutol [Susceptibility] by Disk diffusion (KB) | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 244-4 | Floxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Floxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 245-1 | Floxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 246-9 | Floxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 248-5 | Fluconazole [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Fluconazole | Microbial isolate | Susceptibility | Quantitative value | – |
| 249-3 | Fluconazole [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 25-7 | Amphotericin B [Susceptibility] by Disk diffusion (KB) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 250-1 | Fluconazole [Susceptibility] by Disk diffusion (KB) | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25174-4 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25175-1 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 16.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 16 ug/mL |
| 25176-9 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 32.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 32 ug/mL |
| 25177-7 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 12.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25178-5 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25179-3 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25180-1 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25181-9 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 4.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 4 ug/mL |
| 25182-7 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25183-5 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 11.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25184-3 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 14.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25185-0 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25186-8 | Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 25.0 ug/mL | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 25 ug/mL |
| 25187-6 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 7.5 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 7.5 ug/mL |
| 25188-4 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25189-2 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25190-0 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25191-8 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 16.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 16 ug/mL |
| 25192-6 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 32.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 32 ug/mL |
| 25194-2 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25195-9 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25196-7 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25198-3 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 15.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 15 ug/mL |
| 25199-1 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 1.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 1 ug/mL |
| 252-7 | 5-Fluorocytosine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Flucytosine | Microbial isolate | Susceptibility | Quantitative value | – |
| 25200-7 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25201-5 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 4.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 4 ug/mL |
| 25202-3 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 1.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 1 ug/mL |
| 25203-1 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25204-9 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25205-6 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25206-4 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25207-2 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25208-0 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 20.0 ug/m | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25209-8 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25210-6 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25211-4 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 20.0 ug/m | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25212-2 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25213-0 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25214-8 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25215-5 | Para aminosalicylate [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25216-3 | Para aminosalicylate [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25217-1 | Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 0.1 ug/mL | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 0.1 ug/mL |
| 25218-9 | Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 0.2 ug/mL | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 0.2 ug/mL |
| 25219-7 | Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 1.0 ug/mL | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 1 ug/mL |
| 25220-5 | cefOXitin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25221-3 | Imipenem [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Imipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25222-1 | Cefmetazole [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Cefmetazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25223-9 | Doxycycline [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25224-7 | Erythromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 15.0 ug/mL | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 15 ug/mL |
| 25225-4 | Minocycline [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Minocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25226-2 | sulfiSOXAZOLE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 300.0 ug/mL | Organism | Sulfisoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25227-0 | Tobramycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Tobramycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25228-8 | Vancomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25229-6 | Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 100.0 ug/mL | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 100 ug/mL |
| 25230-4 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.5 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2.5 ug/mL |
| 25231-2 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 253-5 | 5-Fluorocytosine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Flucytosine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 25366-6 | cefOXitin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 25367-4 | cefTRIAXone [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 254-3 | 5-Fluorocytosine [Susceptibility] by Disk diffusion (KB) | Organism | Flucytosine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25411-0 | Fleroxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Fleroxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 25452-4 | Itraconazole [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Itraconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 25595-0 | Econazole [Susceptibility] | Organism | Econazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25596-8 | Fosfomycin [Susceptibility] | Organism | Fosfomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25597-6 | Josamycine [Susceptibility] | Organism | Josamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |

… 830 weitere; die vollständige Aufzählung steht im ValueSet.

### Voraussichtliche Empfindlichkeit — durch Genotypisierungstechnik

Genotypische Vorhersage der Empfindlichkeit (HIV, HBV, HCV, M.-tuberculosis-Resistenzmutationen). Der LOINC-Filter METHOD_TYP = Genotyping entspricht Technique = Genotype determination technique.

ValueSet [mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-genotype-predicted.html). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit](StructureDefinition-mii-pr-mikrobio-loinc-ontology-voraussichtliche-empfindlichkeit.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|, 246501002 |Technique (attribute)| = << 708060009 |Genotype determination technique (qualifier value)|
```

| Attribut | Wert |
|---|---|
| Property | Susceptibility |
| Technique | `<< Genotype determination technique` |

Die Regel wählt **81** Konzepte aus (81 mit LOINC-Code, 0 ohne). Unverändert zwischen 2026-03-21 und 2026-10-21.

#### Codes (81)

| LOINC | Name | Inheres in | Towards | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|---|
| 103958-5 | Ofloxacin [Susceptibility] by Genotype method | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 103959-3 | cycloSERINE [Susceptibility] by Genotype method | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 103960-1 | Prothionamide [Susceptibility] by Genotype method | Organism | Protionamide | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 106742-0 | Letermovir [Susceptibility] by Genotype method | Organism | Letermovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30282-8 | Zidovudine [Susceptibility] by Genotype method | Organism | Zidovudine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30283-6 | lamiVUDine [Susceptibility] by Genotype method | Organism | Lamivudine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30284-4 | Didanosine [Susceptibility] by Genotype method | Organism | Didanosine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30285-1 | Zalcitabine [Susceptibility] by Genotype method | Organism | Zalcitabine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30286-9 | Stavudine [Susceptibility] by Genotype method | Organism | Stavudine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30287-7 | Abacavir [Susceptibility] by Genotype method | Organism | Abacavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30288-5 | Adefovir [Susceptibility] by Genotype method | Organism | Adefovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30289-3 | Nevirapine [Susceptibility] by Genotype method | Organism | Nevirapine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30290-1 | Delavirdine [Susceptibility] by Genotype method | Organism | Delavirdine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30291-9 | Efavirenz [Susceptibility] by Genotype method | Organism | Efavirenz | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30292-7 | Indinavir [Susceptibility] by Genotype method | Organism | Indinavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30293-5 | Ritonavir [Susceptibility] by Genotype method | Organism | Ritonavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30294-3 | Nelfinavir [Susceptibility] by Genotype method | Organism | Nelfinavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30295-0 | Saquinavir [Susceptibility] by Genotype method | Organism | Saquinavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 30297-6 | Amprenavir [Susceptibility] by Genotype method | Organism | Amprenavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 41031-6 | Lopinavir [Susceptibility] by Genotype method | Organism | Lopinavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 41396-3 | Tenofovir [Susceptibility] by Genotype method | Organism | Tenofovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 41402-9 | Emtricitabine [Susceptibility] by Genotype method | Organism | Emtricitabine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 41403-7 | Atazanavir [Susceptibility] by Genotype method | Organism | Atazanavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 42317-8 | Foscarnet [Susceptibility] by Genotype method | Organism | Foscarnet | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 43736-8 | Fosamprenavir [Susceptibility] by Genotype method | Organism | Fosamprenavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 43737-6 | Tipranavir [Susceptibility] by Genotype method | Organism | Tipranavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 52749-9 | Etravirine [Susceptibility] by Genotype method | Organism | Etravirine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 55091-3 | Darunavir [Susceptibility] by Genotype method | Organism | Darunavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 56791-7 | Entecavir [Susceptibility] by Genotype method | Organism | Entecavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 56792-5 | Telbivudine [Susceptibility] by Genotype method | Organism | Telbivudine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 60440-5 | Oseltamivir [Susceptibility] by Genotype method | Organism | Oseltamivir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 68463-9 | Rilpivirine [Susceptibility] by Genotype method | Organism | Rilpivirine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72525-9 | Raltegravir [Susceptibility] by Genotype method | Organism | Raltegravir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72526-7 | Elvitegravir [Susceptibility] by Genotype method | Organism | Elvitegravir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72839-4 | Famciclovir [Susceptibility] by Genotype method | Organism | Famciclovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72853-5 | Maribavir [Susceptibility] by Genotype method | Organism | Maribavir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72854-3 | Ganciclovir [Susceptibility] by Genotype method | Organism | Ganciclovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72856-8 | Cidofovir [Susceptibility] by Genotype method | Organism | Cidofovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72857-6 | Dolutegravir [Susceptibility] by Genotype method | Organism | Dolutegravir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72858-4 | Enfuvirtide [Susceptibility] by Genotype method | Organism | Enfuvirtide | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72859-2 | Boceprevir [Susceptibility] by Genotype method | Organism | Boceprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 72860-0 | Telaprevir [Susceptibility] by Genotype method | Organism | Telaprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 73574-6 | Acyclovir [Susceptibility] by Genotype method | Organism | Acyclovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 75029-9 | Zanamivir [Susceptibility] by Genotype method | Organism | Zanamivir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82376-5 | Elbasvir [Susceptibility] by Genotype method | Organism | Elbasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82377-3 | Ledipasvir [Susceptibility] by Genotype method | Organism | Ledipasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82378-1 | Ombitasvir [Susceptibility] by Genotype method | Organism | Ombitasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82379-9 | Daclatasvir [Susceptibility] by Genotype method | Organism | Daclatasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82382-3 | Sofosbuvir [Susceptibility] by Genotype method | Organism | Sofosbuvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82520-8 | Velpatasvir [Susceptibility] by Genotype method | Organism | Velpatasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82521-6 | Paritaprevir [Susceptibility] by Genotype method | Organism | Paritaprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82522-4 | Simeprevir [Susceptibility] by Genotype method | Organism | Simeprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 82523-2 | Grazoprevir [Susceptibility] by Genotype method | Organism | Grazoprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89480-8 | Azithromycin [Susceptibility] by Genotype method | Organism | Azithromycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89481-6 | Gentamicin [Susceptibility] by Genotype method | Organism | Gentamicin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89482-4 | Kanamycin [Susceptibility] by Genotype method | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89483-2 | Capreomycin [Susceptibility] by Genotype method | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89484-0 | Amikacin [Susceptibility] by Genotype method | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89485-7 | Clarithromycin [Susceptibility] by Genotype method | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89487-3 | Fluoroquinolone [Susceptibility] by Genotype method | Organism | Fluoroquinolone | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89488-1 | Isoniazid [Susceptibility] by Genotype method | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89489-9 | rifAMPin [Susceptibility] by Genotype method | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89490-7 | Aminoglycoside [Susceptibility] by Genotype method | Organism | Aminoglycoside | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 89491-5 | Ethambutol [Susceptibility] by Genotype method | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 90080-3 | Bictegravir [Susceptibility] by Genotype method | Organism | Bictegravir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 91897-9 | Doravirine [Susceptibility] by Genotype method | Organism | Doravirine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92241-9 | Vancomycin [Susceptibility] by Genotype method | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92242-7 | Pyrazinamide [Susceptibility] by Genotype method | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92255-9 | Methicillin [Susceptibility] by Genotype method | Organism | Methicillin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92733-5 | Glecaprevir [Susceptibility] by Genotype method | Organism | Glecaprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92734-3 | Voxilaprevir [Susceptibility] by Genotype method | Organism | Voxilaprevir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 92735-0 | Pibrentasvir [Susceptibility] by Genotype method | Organism | Pibrentasvir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96107-8 | Bedaquiline [Susceptibility] by Genotype method | Organism | Bedaquiline | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96108-6 | Clofazimine [Susceptibility] by Genotype method | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96109-4 | Delamanid [Susceptibility] by Genotype method | Organism | Delamanid | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96110-2 | Ethionamide [Susceptibility] by Genotype method | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96111-0 | Linezolid [Susceptibility] by Genotype method | Organism | Linezolid | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96112-8 | Moxifloxacin [Susceptibility] by Genotype method | Organism | Moxifloxacin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96113-6 | Rifabutin [Susceptibility] by Genotype method | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96114-4 | Streptomycin [Susceptibility] by Genotype method | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 96566-5 | Cabotegravir [Susceptibility] by Genotype method | Organism | Cabotegravir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |

### Alle Empfindlichkeits-Observables (Obergrenze)

Jedes Observable mit Property = Susceptibility, beliebige Site, beliebige Technik. Obergrenze für das Review; die Differenz zu den beiden Regeln oben ist die Menge mit einer Nicht-Isolat-Site (z. B. Empfindlichkeit im Blut).

ValueSet [mii-vs-mikrobio-loinc-ontology-susceptibility-all](ValueSet-mii-vs-mikrobio-loinc-ontology-susceptibility-all.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118588007 |Susceptibility (property) (qualifier value)|
```

| Attribut | Wert |
|---|---|
| Property | Susceptibility |

Die Regel wählt **1350** Konzepte aus (1349 mit LOINC-Code, 1 ohne). Release 2026-03-21 → 2026-10-21: **+5 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.html)).

#### Codes (1350)

| LOINC | Name | Inheres in | Towards | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|---|
| 1-8 | Acyclovir [Susceptibility] | Organism | Acyclovir | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100-8 | Cefoperazone [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 100041-3 | Aminoglycoside [Susceptibility] | Organism | Aminoglycoside | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100042-1 | Atovaquone [Susceptibility] | Organism | Atovaquone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100046-2 | Cefquinome [Susceptibility] | Organism | Cefquinome | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100049-6 | Eravacycline [Susceptibility] | Organism | Eravacycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100053-8 | Fluoroquinolone [Susceptibility] | Organism | Fluoroquinolone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100055-3 | Optochin [Susceptibility] | Organism | Optochin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100056-1 | Panipenem [Susceptibility] | Organism | Panipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100057-9 | Prothionamide [Susceptibility] | Organism | Protionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100058-7 | Prulifloxacin [Susceptibility] | Organism | Prulifloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 100059-5 | Rifapentine [Susceptibility] | Organism | Rifapentine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 101-6 | Cefoperazone [Susceptibility] by Disk diffusion (KB) | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 101477-8 | Ampicillin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Ampicillin | – | Susceptibility | Ordinal or quantitative value | – |
| 101479-4 | Cefotaxime [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Cefotaxime | – | Susceptibility | Ordinal or quantitative value | – |
| 101481-0 | cefTAZidime [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Ceftazidime | – | Susceptibility | Ordinal or quantitative value | – |
| 101485-1 | cefTRIAXone [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Ceftriaxone | – | Susceptibility | Ordinal or quantitative value | – |
| 101486-9 | Ertapenem [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Ertapenem | – | Susceptibility | Ordinal or quantitative value | – |
| 101487-7 | Imipenem [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Imipenem | – | Susceptibility | Ordinal or quantitative value | – |
| 101488-5 | Meropenem [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Meropenem | – | Susceptibility | Ordinal or quantitative value | – |
| 101490-1 | Piperacillin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Piperacillin | – | Susceptibility | Ordinal or quantitative value | – |
| 101492-7 | cefOXitin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Cefoxitin | – | Susceptibility | Ordinal or quantitative value | – |
| 101493-5 | Amikacin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Amikacin | – | Susceptibility | Ordinal or quantitative value | – |
| 101494-3 | Gentamicin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Gentamicin | – | Susceptibility | Ordinal or quantitative value | – |
| 101496-8 | Tobramycin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Tobramycin | – | Susceptibility | Ordinal or quantitative value | – |
| 101497-6 | Aztreonam [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Aztreonam | – | Susceptibility | Ordinal or quantitative value | – |
| 101499-2 | Tigecycline [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Tigecycline | – | Susceptibility | Ordinal or quantitative value | – |
| 101500-7 | Ciprofloxacin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Ciprofloxacin | – | Susceptibility | Ordinal or quantitative value | – |
| 101501-5 | levoFLOXacin [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Levofloxacin | – | Susceptibility | Ordinal or quantitative value | – |
| 101502-3 | Cefepime [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Cefepime | – | Susceptibility | Ordinal or quantitative value | – |
| 101503-1 | Cefuroxime [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Cefuroxime | – | Susceptibility | Ordinal or quantitative value | – |
| 101504-9 | Tetracycline [Susceptibility] by MIC.VOC detection in Positive blood culture | Organism | Tetracycline | – | Susceptibility | Ordinal or quantitative value | – |
| 103-2 | Ceforanide [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceforanide | Microbial isolate | Susceptibility | Quantitative value | – |
| 103653-2 | Ciprofloxacin [Susceptibility] for meningitis | Organism | Ciprofloxacin | – | Susceptibility | Ordinal or quantitative value | – |
| 103654-0 | Meropenem [Susceptibility] for meningitis | Organism | Meropenem | – | Susceptibility | Ordinal or quantitative value | – |
| 103673-0 | Isavuconazole [Susceptibility] in Isolate by Gradient strip | Organism | Isavuconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 103958-5 | Ofloxacin [Susceptibility] by Genotype method | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 103959-3 | cycloSERINE [Susceptibility] by Genotype method | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 103960-1 | Prothionamide [Susceptibility] by Genotype method | Organism | Protionamide | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 104-0 | Ceforanide [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 105-7 | Ceforanide [Susceptibility] by Disk diffusion (KB) | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 105268-7 | Clindamycin [Susceptibility] by MIC.erythromycin induced resistance | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 106433-6 | cefOXitin [Susceptibility] Qualitative | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal value | – |
| 10653-4 | Clotrimazole [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clotrimazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10654-2 | Clotrimazole [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clotrimazole | Microbial isolate | Susceptibility | Quantitative value | – |
| 106742-0 | Letermovir [Susceptibility] by Genotype method | Organism | Letermovir | Microbial isolate | Susceptibility | Ordinal value | Genotyping |
| 106858-4 | Rezafungin [Susceptibility] | Organism | Rezafungin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 10697-1 | Nystatin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Nystatin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10698-9 | Nystatin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Nystatin | Microbial isolate | Susceptibility | Quantitative value | – |
| 107-3 | Cefotaxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 10720-1 | Terbinafine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Terbinafine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10721-9 | Terbinafine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Terbinafine | Microbial isolate | Susceptibility | Quantitative value | – |
| 108-1 | Cefotaxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 10868-8 | Bacitracin [Susceptibility] by Disk diffusion (KB) | Organism | Bacitracin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 109-9 | Cefotaxime [Susceptibility] by Disk diffusion (KB) | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 11-7 | Amikacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amikacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 111-5 | cefoTEtan [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefotetan | Microbial isolate | Susceptibility | Quantitative value | – |
| 112-3 | cefoTEtan [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 113-1 | cefoTEtan [Susceptibility] by Disk diffusion (KB) | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 115-6 | cefOXitin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Quantitative value | – |
| 11575-8 | Cefmetazole [Susceptibility] by Gradient strip | Organism | Cefmetazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 11577-4 | Sulfamethoxazole [Susceptibility] by Gradient strip | Organism | Sulfamethoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 11578-2 | sulfiSOXAZOLE [Susceptibility] by Gradient strip | Organism | Sulfisoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 116-4 | cefOXitin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 117-2 | cefOXitin [Susceptibility] by Disk diffusion (KB) | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 119-8 | Cefpodoxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 12-5 | Amikacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 120-6 | Cefpodoxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 121-4 | Cefpodoxime [Susceptibility] by Disk diffusion (KB) | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 123-0 | Cefprozil [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefprozil | Microbial isolate | Susceptibility | Quantitative value | – |
| 124-8 | Cefprozil [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 125-5 | Cefprozil [Susceptibility] by Disk diffusion (KB) | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 127-1 | Cefsulodin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Quantitative value | – |
| 128-9 | Cefsulodin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 129-7 | Cefsulodin [Susceptibility] by Disk diffusion (KB) | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 13-3 | Amikacin [Susceptibility] by Disk diffusion (KB) | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 132-1 | cefTAZidime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Quantitative value | – |
| 133-9 | cefTAZidime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 134-7 | cefTAZidime [Susceptibility] by Disk diffusion (KB) | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 136-2 | Ceftizoxime [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Quantitative value | – |
| 137-0 | Ceftizoxime [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 138-8 | Ceftizoxime [Susceptibility] by Disk diffusion (KB) | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 13968-3 | Penicillin [Susceptibility] by Disk diffusion (KB) | Organism | Penicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 140-4 | cefTRIAXone [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Quantitative value | – |
| 141-2 | cefTRIAXone [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 142-0 | cefTRIAXone [Susceptibility] by Disk diffusion (KB) | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 14332-1 | Para aminosalicylate [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 144-6 | Cefuroxime Parenteral [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Quantitative value | – |
| 145-3 | Cefuroxime Parenteral [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 146-1 | Cefuroxime Parenteral [Susceptibility] by Disk diffusion (KB) | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 148-7 | Cephalexin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephalexin | Microbial isolate | Susceptibility | Quantitative value | – |
| 149-5 | Cephalexin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 15-8 | Amoxicillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 150-3 | Cephalexin [Susceptibility] by Disk diffusion (KB) | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 152-9 | Cephaloglycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 153-7 | Cephaloglycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 154-5 | Cephaloglycin [Susceptibility] by Disk diffusion (KB) | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 156-0 | Cephaloridine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Quantitative value | – |
| 157-8 | Cephaloridine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 158-6 | Cephaloridine [Susceptibility] by Disk diffusion (KB) | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 16-6 | Amoxicillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 160-2 | Cephalothin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephalothin | Microbial isolate | Susceptibility | Quantitative value | – |
| 16099-4 | Ethionamide [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 161-0 | Cephalothin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 16100-0 | Rifabutin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 162-8 | Cephalothin [Susceptibility] by Disk diffusion (KB) | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 164-4 | Cephapirin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephapirin | Microbial isolate | Susceptibility | Quantitative value | – |
| 165-1 | Cephapirin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 166-9 | Cephapirin [Susceptibility] by Disk diffusion (KB) | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 16623-1 | Clofazimine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 168-5 | Cephradine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cephradine | Microbial isolate | Susceptibility | Quantitative value | – |
| 169-3 | Cephradine [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 17-4 | Amoxicillin [Susceptibility] by Disk diffusion (KB) | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 170-1 | Cephradine [Susceptibility] by Disk diffusion (KB) | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 172-7 | Chloramphenicol [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Quantitative value | – |
| 173-5 | Chloramphenicol [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 174-3 | Chloramphenicol [Susceptibility] by Disk diffusion (KB) | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 176-8 | Chlortetracycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 177-6 | Chlortetracycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 178-4 | Chlortetracycline [Susceptibility] by Disk diffusion (KB) | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 180-0 | Cinoxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 181-8 | Cinoxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 182-6 | Cinoxacin [Susceptibility] by Disk diffusion (KB) | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 184-2 | Ciprofloxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 185-9 | Ciprofloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 186-7 | Ciprofloxacin [Susceptibility] by Disk diffusion (KB) | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 188-3 | Clarithromycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 18855-7 | 5-Fluorocytosine [Susceptibility] | Organism | Flucytosine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18857-3 | Almecillin [Susceptibility] | Organism | Almecillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18859-9 | Amdinocillin [Susceptibility] | Organism | Amdinocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18860-7 | Amikacin [Susceptibility] | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18861-5 | Amoxicillin [Susceptibility] | Organism | Amoxicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18863-1 | Amphotericin B [Susceptibility] | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18864-9 | Ampicillin [Susceptibility] | Organism | Ampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18866-4 | Azithromycin [Susceptibility] | Organism | Azithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18867-2 | Azlocillin [Susceptibility] | Organism | Azlocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18868-0 | Aztreonam [Susceptibility] | Organism | Aztreonam | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18869-8 | Bacampicillin [Susceptibility] | Organism | Bacampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18870-6 | Bacitracin [Susceptibility] | Organism | Bacitracin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18871-4 | Butirosin [Susceptibility] | Organism | Butirosin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18872-2 | Capreomycin [Susceptibility] | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18873-0 | Carbenicillin [Susceptibility] | Organism | Carbenicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18874-8 | Cefaclor [Susceptibility] | Organism | Cefaclor | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18875-5 | Cefadroxil [Susceptibility] | Organism | Cefadroxil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18876-3 | Cefamandole [Susceptibility] | Organism | Cefamandole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18877-1 | Cefatrizine [Susceptibility] | Organism | Cefatrizine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18878-9 | ceFAZolin [Susceptibility] | Organism | Cefazolin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18879-7 | Cefepime [Susceptibility] | Organism | Cefepime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18880-5 | Cefixime [Susceptibility] | Organism | Cefixime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18881-3 | Cefmetazole [Susceptibility] | Organism | Cefmetazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18882-1 | Cefodizime [Susceptibility] | Organism | Cefodizime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18883-9 | Cefonicid [Susceptibility] | Organism | Cefonicid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18884-7 | Cefoperazone [Susceptibility] | Organism | Cefoperazone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18885-4 | Ceforanide [Susceptibility] | Organism | Ceforanide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18886-2 | Cefotaxime [Susceptibility] | Organism | Cefotaxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18887-0 | cefoTEtan [Susceptibility] | Organism | Cefotetan | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18888-8 | cefOXitin [Susceptibility] | Organism | Cefoxitin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18889-6 | Cefpirome [Susceptibility] | Organism | Cefpirome | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18890-4 | Cefpodoxime [Susceptibility] | Organism | Cefpodoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18891-2 | Cefprozil [Susceptibility] | Organism | Cefprozil | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18892-0 | Cefsulodin [Susceptibility] | Organism | Cefsulodin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18893-8 | cefTAZidime [Susceptibility] | Organism | Ceftazidime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18894-6 | Ceftizoxime [Susceptibility] | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18895-3 | cefTRIAXone [Susceptibility] | Organism | Ceftriaxone | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18896-1 | Cefuroxime Parenteral [Susceptibility] | Organism | Cefuroxime-containing product in parenteral dose form | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18897-9 | Cephalexin [Susceptibility] | Organism | Cephalexin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18898-7 | Cephaloglycin [Susceptibility] | Organism | Cephaloglycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18899-5 | Cephaloridine [Susceptibility] | Organism | Cephaloridine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 189-1 | Clarithromycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 18900-1 | Cephalothin [Susceptibility] | Organism | Cephalothin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18901-9 | Cephapirin [Susceptibility] | Organism | Cephapirin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18902-7 | Cephradine [Susceptibility] | Organism | Cephradine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18903-5 | Chloramphenicol [Susceptibility] | Organism | Chloramphenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18904-3 | Chlortetracycline [Susceptibility] | Organism | Chlortetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18905-0 | Cinoxacin [Susceptibility] | Organism | Cinoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18906-8 | Ciprofloxacin [Susceptibility] | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18907-6 | Clarithromycin [Susceptibility] | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18908-4 | Clindamycin [Susceptibility] | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18909-2 | Clotrimazole [Susceptibility] | Organism | Clotrimazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18910-0 | Cloxacillin [Susceptibility] | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18911-8 | Colistimethate | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18912-6 | Colistin [Susceptibility] | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18913-4 | Cyclacillin [Susceptibility] | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18914-2 | cycloSERINE [Susceptibility] | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18915-9 | Demeclocycline [Susceptibility] | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18916-7 | Dicloxacillin [Susceptibility] | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18917-5 | Doxycycline [Susceptibility] | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18918-3 | Enoxacin [Susceptibility] | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18919-1 | Erythromycin [Susceptibility] | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18921-7 | Ethambutol [Susceptibility] | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18922-5 | Ethionamide [Susceptibility] | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18923-3 | Floxacillin [Susceptibility] | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18924-1 | Fluconazole [Susceptibility] | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18926-6 | Framycetin [Susceptibility] | Organism | Framycetin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18927-4 | Fusidate [Susceptibility] | Organism | Fusidic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18928-2 | Gentamicin [Susceptibility] | Organism | Gentamicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18929-0 | Gentamicin [Susceptibility] by High potency | Organism | Gentamicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18930-8 | Gramicidin D [Susceptibility] | Organism | Gramicidin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18931-6 | Hetacillin [Susceptibility] | Organism | Hetacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18932-4 | Imipenem [Susceptibility] | Organism | Imipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18934-0 | Isoniazid [Susceptibility] | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18935-7 | Kanamycin [Susceptibility] | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18936-5 | Kanamycin [Susceptibility] by High potency | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18937-3 | Ketoconazole [Susceptibility] | Organism | Ketoconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18938-1 | Lincomycin [Susceptibility] | Organism | Lincomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18939-9 | Lomefloxacin [Susceptibility] | Organism | Lomefloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18940-7 | Loracarbef [Susceptibility] | Organism | Loracarbef | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18941-5 | Lymecycline [Susceptibility] | Organism | Lymecycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18942-3 | Meclocycline [Susceptibility] | Organism | Meclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18943-1 | Meropenem [Susceptibility] | Organism | Meropenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18944-9 | Methacycline [Susceptibility] | Organism | Methacycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18945-6 | Methicillin [Susceptibility] | Organism | Methicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18946-4 | metroNIDAZOLE [Susceptibility] | Organism | Metronidazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18947-2 | Mezlocillin [Susceptibility] | Organism | Mezlocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18948-0 | Minocycline [Susceptibility] | Organism | Minocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18949-8 | Miocamycin [Susceptibility] | Organism | Midecamycin acetate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18950-6 | Moxalactam [Susceptibility] | Organism | Moxalactam | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18951-4 | Nafcillin [Susceptibility] | Organism | Nafcillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18952-2 | Nalidixate [Susceptibility] | Organism | Nalidixic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18953-0 | Neomycin [Susceptibility] | Organism | Neomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18954-8 | Netilmicin [Susceptibility] | Organism | Netilmicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18955-5 | Nitrofurantoin [Susceptibility] | Organism | Nitrofurantoin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18956-3 | Norfloxacin [Susceptibility] | Organism | Norfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18957-1 | Novobiocin [Susceptibility] | Organism | Novobiocin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18958-9 | Nystatin [Susceptibility] | Organism | Nystatin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18959-7 | Ofloxacin [Susceptibility] | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18960-5 | Oleandomycin [Susceptibility] | Organism | Oleandomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18961-3 | Oxacillin [Susceptibility] | Organism | Oxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18962-1 | Oxytetracycline [Susceptibility] | Organism | Oxytetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18963-9 | Pefloxacin [Susceptibility] | Organism | Pefloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18964-7 | Penicillin [Susceptibility] | Organism | Penicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18965-4 | Penicillin G [Susceptibility] | Organism | Penicillin G | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18966-2 | Penicillin V [Susceptibility] | Organism | Penicillin V | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18967-0 | Phenethicillin [Susceptibility] | Organism | Phenethicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18968-8 | Pipemidate [Susceptibility] | Organism | Pipemidic acid | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18969-6 | Piperacillin [Susceptibility] | Organism | Piperacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18971-2 | Pivampicillin [Susceptibility] | Organism | Pivampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18972-0 | Polymyxin B [Susceptibility] | Organism | Polymyxin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18973-8 | Pyrazinamide [Susceptibility] | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18974-6 | rifAMPin [Susceptibility] | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18975-3 | Ristocetin [Susceptibility] | Organism | Ristocetin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18976-1 | Rolitetracycline [Susceptibility] | Organism | Rolitetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18977-9 | Rosoxacin [Susceptibility] | Organism | Rosoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18978-7 | Roxithromycin [Susceptibility] | Organism | Roxithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18979-5 | Sisomicin [Susceptibility] | Organism | Sisomicin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18980-3 | Spectinomycin [Susceptibility] | Organism | Spectinomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18981-1 | Spiramycin [Susceptibility] | Organism | Spiramycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18982-9 | Streptomycin [Susceptibility] | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18983-7 | Streptomycin [Susceptibility] by High potency | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | High potency technique |
| 18984-5 | sulfADIAZINE [Susceptibility] | Organism | Sulfadiazine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18985-2 | Sulfamethoxazole [Susceptibility] | Organism | Sulfamethoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18986-0 | sulfiSOXAZOLE [Susceptibility] | Organism | Sulfisoxazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18987-8 | Sulfonamide [Susceptibility] | Organism | Sulfonamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18988-6 | Talampicillin [Susceptibility] | Organism | Talampicillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18989-4 | Teicoplanin [Susceptibility] | Organism | Teicoplanin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18990-2 | Temafloxacin [Susceptibility] | Organism | Temafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18991-0 | Temocillin [Susceptibility] | Organism | Temocillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18992-8 | Terbinafine [Susceptibility] | Organism | Terbinafine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18993-6 | Tetracycline [Susceptibility] | Organism | Tetracycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18994-4 | Ticarcillin [Susceptibility] | Organism | Ticarcillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18996-9 | Tobramycin [Susceptibility] | Organism | Tobramycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18997-7 | Trimethoprim [Susceptibility] | Organism | Trimethoprim | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 18999-3 | Troleandomycin [Susceptibility] | Organism | Troleandomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 190-9 | Clarithromycin [Susceptibility] by Disk diffusion (KB) | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19000-9 | Vancomycin [Susceptibility] | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19001-7 | Viomycin [Susceptibility] | Organism | Viomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 19149-4 | Rifabutin [Susceptibility] | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 192-5 | Clindamycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Clindamycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 193-3 | Clindamycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 194-1 | Clindamycin [Susceptibility] by Disk diffusion (KB) | Organism | Clindamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 196-6 | Cloxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 197-4 | Cloxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 198-2 | Cloxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Cloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 2-6 | Almecillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Almecillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 200-6 | Colistimethate by Minimum lethal concentration (MLC) | Organism | Colistimethate | Microbial isolate | Susceptibility | Quantitative value | – |
| 201-4 | Colistimethate by Minimum inhibitory concentration (MIC) | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 202-2 | Colistimethate by Disk diffusion (KB) | Organism | Colistimethate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20373-7 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20375-2 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20376-0 | Clofazimine [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20377-8 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20378-6 | Ceftizoxime [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ceftizoxime | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20379-4 | Doxycycline [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20380-2 | Erythromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20381-0 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20382-8 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20383-6 | Isoniazid [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Isoniazid | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20384-4 | Ofloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Ofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20385-1 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20386-9 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20389-3 | Mupirocin [Susceptibility] | Organism | Mupirocin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20390-1 | Silver sulfADIAZINE [Susceptibility] | Organism | Silver sulfadiazine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20391-9 | Mafenide [Susceptibility] | Organism | Mafenide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20396-8 | levoFLOXacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 20397-6 | Sparfloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 204-8 | Colistin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Colistin | Microbial isolate | Susceptibility | Quantitative value | – |
| 20461-0 | Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 20462-8 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 205-5 | Colistin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 206-3 | Colistin [Susceptibility] by Disk diffusion (KB) | Organism | Colistin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 20629-2 | levoFLOXacin [Susceptibility] | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 208-9 | Cyclacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 209-7 | Cyclacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 210-5 | Cyclacillin [Susceptibility] by Disk diffusion (KB) | Organism | Cyclacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 21070-8 | Other Antibiotic [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Antibacterial | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 212-1 | cycloSERINE [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Cycloserine | Microbial isolate | Susceptibility | Quantitative value | – |
| 213-9 | cycloSERINE [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 21316-5 | Grepafloxacin [Susceptibility] by Gradient strip | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Gradient strip susceptibility test |
| 21367-8 | levoFLOXacin [Susceptibility] by Disk diffusion (KB) | Organism | Levofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 214-7 | cycloSERINE [Susceptibility] by Disk diffusion (KB) | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 216-2 | Demeclocycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 217-0 | Demeclocycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 218-8 | Demeclocycline [Susceptibility] by Disk diffusion (KB) | Organism | Demeclocycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 220-4 | Dicloxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 221-2 | Dicloxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 222-0 | Dicloxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Dicloxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 224-6 | Doxycycline [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Doxycycline | Microbial isolate | Susceptibility | Quantitative value | – |
| 225-3 | Doxycycline [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 226-1 | Doxycycline [Susceptibility] by Disk diffusion (KB) | Organism | Doxycycline | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 228-7 | Enoxacin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Enoxacin | Microbial isolate | Susceptibility | Quantitative value | – |
| 229-5 | Enoxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23-2 | Amphotericin B [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Quantitative value | – |
| 230-3 | Enoxacin [Susceptibility] by Disk diffusion (KB) | Organism | Enoxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 232-9 | Erythromycin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Erythromycin | Microbial isolate | Susceptibility | Quantitative value | – |
| 233-7 | Erythromycin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 234-5 | Erythromycin [Susceptibility] by Disk diffusion (KB) | Organism | Erythromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23607-5 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23608-3 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23609-1 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23610-9 | Sparfloxacin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23611-7 | Para aminosalicylate [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23612-5 | Azithromycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Azithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23613-3 | Imipenem [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Imipenem | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23614-1 | Trimethoprim [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Trimethoprim | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23615-8 | Vancomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Vancomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23616-6 | Viomycin [Susceptibility] by Method for Slow-growing mycobacteria | Organism | Viomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria |
| 23627-3 | Clofazimine [Susceptibility] | Organism | Clofazimine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23628-1 | Sparfloxacin [Susceptibility] | Organism | Sparfloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23629-9 | Para aminosalicylate [Susceptibility] | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23636-4 | Cefdinir [Susceptibility] | Organism | Cefdinir | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23637-2 | Cefdinir [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Cefdinir | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23638-0 | Grepafloxacin [Susceptibility] | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23639-8 | Grepafloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Grepafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23642-2 | Trovafloxacin [Susceptibility] | Organism | Trovafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23643-0 | Trovafloxacin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Trovafloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 23658-8 | Other Antibiotic [Susceptibility] | Organism | Antibacterial | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23712-3 | Enrofloxacin [Susceptibility] | Organism | Enrofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 23740-4 | Florfenicol [Susceptibility] | Organism | Florfenicol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 24-0 | Amphotericin B [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 240-2 | Ethambutol [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Ethambutol | Microbial isolate | Susceptibility | Quantitative value | – |
| 241-0 | Ethambutol [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 242-8 | Ethambutol [Susceptibility] by Disk diffusion (KB) | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 244-4 | Floxacillin [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Floxacillin | Microbial isolate | Susceptibility | Quantitative value | – |
| 245-1 | Floxacillin [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 246-9 | Floxacillin [Susceptibility] by Disk diffusion (KB) | Organism | Floxacillin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 248-5 | Fluconazole [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Fluconazole | Microbial isolate | Susceptibility | Quantitative value | – |
| 249-3 | Fluconazole [Susceptibility] by Minimum inhibitory concentration (MIC) | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | MIC |
| 25-7 | Amphotericin B [Susceptibility] by Disk diffusion (KB) | Organism | Amphotericin B | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 250-1 | Fluconazole [Susceptibility] by Disk diffusion (KB) | Organism | Fluconazole | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25174-4 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25175-1 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 16.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 16 ug/mL |
| 25176-9 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 32.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 32 ug/mL |
| 25177-7 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 12.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25178-5 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25179-3 | Amikacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Amikacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25180-1 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25181-9 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 4.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 4 ug/mL |
| 25182-7 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25183-5 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 11.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25184-3 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 14.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25185-0 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25186-8 | Pyrazinamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 25.0 ug/mL | Organism | Pyrazinamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 25 ug/mL |
| 25187-6 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 7.5 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 7.5 ug/mL |
| 25188-4 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25189-2 | Ciprofloxacin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ciprofloxacin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25190-0 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 8.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 8 ug/mL |
| 25191-8 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 16.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 16 ug/mL |
| 25192-6 | Clarithromycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 32.0 ug/mL | Organism | Clarithromycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 32 ug/mL |
| 25194-2 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25195-9 | Ethambutol [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Ethambutol | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25196-7 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25198-3 | Ethionamide [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 15.0 ug/mL | Organism | Ethionamide | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 15 ug/mL |
| 25199-1 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 1.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 1 ug/mL |
| 252-7 | 5-Fluorocytosine [Susceptibility] by Minimum lethal concentration (MLC) | Organism | Flucytosine | Microbial isolate | Susceptibility | Quantitative value | – |
| 25200-7 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25201-5 | Rifabutin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 4.0 ug/mL | Organism | Rifabutin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 4 ug/mL |
| 25202-3 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 1.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 1 ug/mL |
| 25203-1 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25204-9 | rifAMPin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 5.0 ug/mL | Organism | Rifampin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 5 ug/mL |
| 25205-6 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |
| 25206-4 | Streptomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Streptomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25207-2 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25208-0 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 20.0 ug/m | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25209-8 | cycloSERINE [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Cycloserine | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25210-6 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 10.0 ug/mL | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 10 ug/mL |
| 25211-4 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 20.0 ug/m | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | – |
| 25212-2 | Capreomycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Capreomycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25213-0 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 6.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 6 ug/mL |
| 25214-8 | Kanamycin [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 30.0 ug/mL | Organism | Kanamycin | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 30 ug/mL |
| 25215-5 | Para aminosalicylate [Susceptibility] by Method for Slow-growing mycobacteria.antibiotic concentration at 2.0 ug/mL | Organism | Para-aminosalicylate | Microbial isolate | Susceptibility | Ordinal or quantitative value | Method for slow growing mycobacteria with antibiotic concentration of 2 ug/mL |

… 950 weitere; die vollständige Aufzählung steht im ValueSet.
