# LOINC Ontology – Anforderung Antigen/Antikörper quantitativ - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Inhaltsverzeichnis**](toc.md)
* [**ValueSets**](value-sets.md)
* [**LOINC-Ontology-ValueSets (Vorschlag)**](loinc-ontology-valuesets.md)
* [**LOINC Ontology – ValueSets je Anforderung**](loinc-ontology-requests.md)
* **LOINC Ontology – Anforderung Antigen/Antikörper quantitativ**

## LOINC Ontology – Anforderung Antigen/Antikörper quantitativ

Diese Seite ist das Review-Material für die Anforderungsfamilie **Antigen/Antikörper quantitativ** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.md): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.md) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.md).

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Mikrobiologische Anforderung: quantitative Antigen-/Antikörpertests = Serologie (MII KDS Mikrobiologie 2027, Profil MII_PR_Mikrobio_Antigen_Antikoerper_Quantitativ, ValueSet MII_VS_Mikrobio_Antigen_Antikoerper_Quantitative_Tests_LOINC = LOINC SCALE Qn + Immunoassay-METHOD_TYPs in CLASS MICRO). Grouper der Ontology: Antikörper gegen Erreger sind « 312301006 | Infective organism antibody | (IgG/IgM/IgA gegen einen benannten Erreger), Antigene sind « 116633006 | Microbial antigen | . Quantitative Properties: Arbitrary concentration (U/mL, Index), Mass concentration, Substance concentration, Number concentration. Die meisten quantitativen Serologie-Observables tragen KEINE Technique. |

### Serologie quantitativ — Konzentration eines Erreger-Antikörpers oder -Antigens

Quantitative Antikörper-/Antigen-Observables, beliebige oder keine Technik.

ValueSet [mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-quantitative.md). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ](StructureDefinition-mii-pr-mikrobio-loinc-ontology-antigen-antikoerper-quantitativ.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118569000 |Arbitrary concentration (property) (qualifier value)| OR 118539007 |Mass concentration (property) (qualifier value)| OR 118556004 |Substance concentration (property) (qualifier value)| OR 118550005 |Number concentration (property) (qualifier value)|), 246093002 |Component (attribute)| = (<< 312301006 |Infective organism antibody (substance)| OR << 116633006 |Microbial antigen (substance)|)

```

| | |
| :--- | :--- |
| Property | Arbitrary concentration OR Mass concentration OR Substance concentration OR Number concentration |
| Component | `<< Infective organism antibody`OR`<< Microbial antigen` |

Die Regel wählt **1813** Konzepte aus (1813 mit LOINC-Code, 0 ohne). Release 2026-03-21 → 2026-10-21: **+43 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (1813)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100091-8 | Trypanosoma cruzi Ab [Units/volume] in Serum by Immunoassay | Trypanosoma cruzi antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 100108-0 | Leishmania sp IgG Ab [Units/volume] in Serum by Immunoassay | Leishmania IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 101205-3 | Plasmodium sp IgG Ab [Units/volume] in Serum or Plasma by Immunoassay | Plasmodium IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 10349-9 | Brucella sp Ab [Units/volume] in Serum | Brucella antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 104431-2 | Mumps virus IgM Ab [Units/volume] in Serum and CSF | Orthorubulavirus parotitidis IgM | – | Arbitrary concentration | Semi-quantitative value | – |
| 104785-1 | Hepatitis B virus core IgM Ab [Units/volume] in Serum or Plasma | Hepatitis B virus core antigen IgM | Serum or plasma specimen | Arbitrary concentration | Quantitative value | – |
| 105910-4 | SARS-CoV-2 (COVID-19) IgG Ab [Units/volume] in Specimen | Severe acute respiratory syndrome coronavirus 2 IgG | Specimen | Arbitrary concentration | Quantitative value | – |
| 106841-0 | Helicobacter pylori Ag [Units/volume] in Stool by Immunoassay | Helicobacter pylori Ag | Stool specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 106938-4 | Hepatitis B virus core Ab [Units/volume] in Serum or Plasma by Immunoassay | Hepatitis B core antigen antibody | Serum or plasma specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 10709-4 | Plasmodium falciparum Ag [Units/volume] in Blood by Immunofluorescence | Plasmodium falciparum antigen | Blood specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 10711-0 | Plasmodium vivax Ag [Units/volume] in Blood by Immunofluorescence | Plasmodium vivax antigen | Blood specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 10717-7 | Streptococcus pneumoniae Ab [Units/volume] in Serum by Latex agglutination | Streptococcus pneumoniae antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 10718-5 | Strongyloides sp Ab [Units/volume] in Serum by Immunoassay | Strongyloides antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 10719-3 | Taenia solium adult Ab [Units/volume] in Serum by Immunoblot | Taenia solium adult antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoblot assay |
| 10723-5 | Toxoplasma gondii IgA Ab [Units/volume] in Serum by Immunoassay | Toxoplasma gondii IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 10724-3 | Toxoplasma gondii IgE Ab [Units/volume] in Serum by Immunoassay | Toxoplasma gondii IgE | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 108119-9 | Aspergillus niger IgG Ab [Units/volume] in Serum or Plasma by Immunoassay | Aspergillus niger IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 11007-2 | Borrelia burgdorferi Ag [Units/volume] in Urine | Borrelia burgdorferi antigen | Urine specimen | Arbitrary concentration | Quantitative value | – |
| 11256-5 | Haemophilus influenzae B IgG Ab [Mass/volume] in Serum | Haemophilus influenzae type b IgG | Serum specimen | Mass concentration | Quantitative value | – |
| 11257-3 | Haemophilus influenzae B IgG Ab [Mass/volume] in Serum by Immunoassay | Haemophilus influenzae type b IgG | Serum specimen | Mass concentration | Quantitative value | Immunoassay technique |
| 112632-5 | Adenovirus IgA Ab [Units/volume] in Serum by Immunoassay | Adenovirus IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 11467-8 | Bacillus anthracis Ab [Units/volume] in Serum by Immunoblot | Bacillus anthracis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoblot assay |
| 11468-6 | Bacillus anthracis Ab [Units/volume] in Specimen by Immunofluorescence | Bacillus anthracis antibody | Specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 11581-6 | Ebola virus Ab [Units/volume] in Serum | Orthoebolavirus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11582-4 | Wuchereria bancrofti Ab [Units/volume] in Serum | Wuchereria bancrofti antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11585-7 | Bordetella pertussis Ab [Units/volume] in Serum | Bordetella pertussis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11586-5 | Brucella abortus Ab [Units/volume] in Serum | Brucella abortus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11587-3 | Brucella canis Ab [Units/volume] in Serum | Brucella canis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11588-1 | Brucella melitensis Ab [Units/volume] in Serum | Brucella melitensis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11589-9 | Brucella suis Ab [Units/volume] in Serum | Brucella suis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11590-7 | Coxsackievirus A10 Ab [Units/volume] in Serum | Human coxsackievirus A10 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11591-5 | Coxsackievirus A2 Ab [Units/volume] in Serum | Human coxsackievirus A2 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11593-1 | Coxsackievirus A4 Ab [Units/volume] in Serum | Human coxsackievirus A4 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11594-9 | Echovirus 16 Ab [Units/volume] in Serum | Human echovirus 16 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11595-6 | Echovirus 18 Ab [Units/volume] in Serum | Human echovirus 18 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11596-4 | Shigella dysenteriae Ab [Units/volume] in Serum | Shigella dysenteriae antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11597-2 | Treponema pallidum Ab [Units/volume] in Serum | Treponema pallidum antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11598-0 | Toxoplasma gondii Ab [Units/volume] in Serum | Toxoplasma gondii antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11599-8 | Coxsackievirus A21 Ab [Units/volume] in Serum | Human coxsackievirus A21 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11600-4 | Shigella flexneri Ab [Units/volume] in Serum | Shigella flexneri antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11601-2 | Echovirus 7 Ab [Units/volume] in Serum | Human echovirus 7 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11602-0 | Shigella boydii Ab [Units/volume] in Serum | Shigella boydii antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11603-8 | Salmonella sp Ab [Units/volume] in Serum | Salmonella antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11604-6 | Burkholderia pseudomallei Ab [Units/volume] in Serum | Pseudomonas pseudomallei antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11605-3 | Lymphocytic choriomeningitis virus Ab [Units/volume] in Serum | Lymphocytic choriomeningitis virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11606-1 | Leptospira interrogans Ab [Units/volume] in Serum | Leptospira interrogans antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11607-9 | Junin virus Ab [Units/volume] in Serum | Junin virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11608-7 | Japanese encephalitis virus Ab [Units/volume] in Serum | Japanese encephalitis virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11609-5 | HTLV I Ab [Units/volume] in Serum | Human T-lymphotropic virus 1 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 11611-1 | Shigella sonnei Ab [Units/volume] in Serum | Shigella sonnei antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13133-4 | Streptococcus pneumoniae Danish serotype 6B Ab [Units/volume] in Serum | Streptococcus pneumoniae Danish serotype 6B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13136-7 | Streptococcus pneumoniae Danish serotype 18C Ab [Units/volume] in Serum | Streptococcus pneumoniae Danish serotype 18C antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13145-8 | Streptococcus pneumoniae Danish serotype 6B Ab [Units/volume] in Serum –1st specimen | Streptococcus pneumoniae Danish serotype 6B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13146-6 | Streptococcus pneumoniae Danish serotype 6B Ab [Units/volume] in Serum –2nd specimen | Streptococcus pneumoniae Danish serotype 6B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13147-4 | Streptococcus pneumoniae Danish serotype 7F Ab [Units/volume] in Serum –1st specimen | Streptococcus pneumoniae Danish serotype 7F antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13148-2 | Streptococcus pneumoniae Danish serotype 7F Ab [Units/volume] in Serum –2nd specimen | Streptococcus pneumoniae Danish serotype 7F antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13157-3 | Streptococcus pneumoniae Danish serotype 18C Ab [Units/volume] in Serum –1st specimen | Streptococcus pneumoniae Danish serotype 18C antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13158-1 | Streptococcus pneumoniae Danish serotype 18C Ab [Units/volume] in Serum –2nd specimen | Streptococcus pneumoniae Danish serotype 18C antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13167-2 | Streptococcus pneumoniae Danish serotype 7F Ab [Units/volume] in Serum | Streptococcus pneumoniae Danish serotype 7F antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13192-0 | Adenovirus Ab [Units/volume] in Cerebrospinal Fluid | Adenovirus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13193-8 | Aspergillus flavus Ab [Units/volume] in Cerebrospinal Fluid | Aspergillus flavus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13194-6 | Aspergillus glaucus Ab [Units/volume] in Serum | Aspergillus glaucus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13195-3 | Ehrlichia chaffeensis Ab [Units/volume] in Serum | Ehrlichia chaffeensis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13198-7 | Thermoactinomyces Ab [Units/volume] in Serum | Thermoactinomyces antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13199-5 | Rickettsia conorii IgG Ab [Units/volume] in Serum | Rickettsia conorii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13200-1 | Rickettsia conorii IgM Ab [Units/volume] in Serum | Rickettsia conorii IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13201-9 | Blastomyces dermatitidis Ab [Units/volume] in Cerebrospinal Fluid | Blastomyces dermatitidis antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13204-3 | Borrelia burgdorferi IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Borrelia burgdorferi IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 13205-0 | Borrelia burgdorferi IgM Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Borrelia burgdorferi IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 13208-4 | Borrelia hermsii IgG Ab [Units/volume] in Serum | Borrelia hermsii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13209-2 | Borrelia hermsii IgM Ab [Units/volume] in Serum | Borrelia hermsii IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13210-0 | Brucella sp IgG Ab [Units/volume] in Serum | Brucella IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13211-8 | Brucella sp IgA Ab [Units/volume] in Serum | Brucella species IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13212-6 | Brucella abortus IgG Ab [Units/volume] in Cerebrospinal Fluid | Brucella abortus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13213-4 | Brucella abortus IgM Ab [Units/volume] in Cerebrospinal Fluid | Brucella abortus IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13214-2 | Brucella canis IgG Ab [Units/volume] in Cerebrospinal Fluid | Brucella canis IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13215-9 | Brucella canis IgM Ab [Units/volume] in Cerebrospinal Fluid | Brucella canis IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13217-5 | Chlamydia trachomatis B Ab [Units/volume] in Serum | Chlamydia trachomatis serotype B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13218-3 | Chlamydia trachomatis C Ab [Units/volume] in Serum | Chlamydia trachomatis serotype C antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13220-9 | Chlamydia trachomatis C IgM Ab [Units/volume] in Serum | Chlamydia trachomatis C IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13225-8 | Cytomegalovirus IgG Ab [Units/volume] in Serum or Plasma –1st specimen | Cytomegalovirus IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | – |
| 13226-6 | Cytomegalovirus IgM Ab [Units/volume] in Cerebrospinal Fluid | Cytomegalovirus IgM antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13227-4 | Corynebacterium diphtheriae IgG Ab [Units/volume] in Serum | Corynebacterium diphtheriae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13228-2 | Eastern equine encephalitis virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13229-0 | Eastern equine encephalitis virus IgM Ab [Units/volume] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13230-8 | Saint Louis encephalitis virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Saint Louis encephalitis virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13231-6 | Saint Louis encephalitis virus IgM Ab [Units/volume] in Cerebrospinal Fluid | Saint Louis encephalitis virus IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13232-4 | Coxsackievirus A Ab [Units/volume] in Cerebrospinal Fluid | Human coxsackievirus A antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13233-2 | Coxsackievirus A2 Ab [Units/volume] in Cerebrospinal Fluid | Human coxsackievirus A2 antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13234-0 | Coxsackievirus A4 Ab [Units/volume] in Cerebrospinal Fluid | Human coxsackievirus A4 antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13235-7 | Coxsackievirus A16 Ab [Units/volume] in Cerebrospinal Fluid | Human coxsackievirus A16 antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13238-1 | Epstein Barr virus Ab [Units/volume] in Serum | Epstein-Barr virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13241-5 | Sporothrix schenckii IgG Ab [Units/volume] in Serum | Sporothrix schenckii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13242-3 | Sporothrix schenckii IgM Ab [Units/volume] in Serum | Sporothrix schenckii IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13243-1 | Sporothrix schenckii IgA Ab [Units/volume] in Serum | Sporothrix schenckii IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13244-9 | Filaria IgG Ab [Units/volume] in Serum | Filaria IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13245-6 | Filaria IgM Ab [Units/volume] in Serum | Filaria IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13246-4 | Haemophilus influenzae B Ab [Units/volume] in Serum | Haemophilus influenzae type b antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13251-4 | Herpes simplex virus 1 IgM Ab [Units/volume] in Cerebrospinal Fluid | Human alphaherpesvirus 1 IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13252-2 | Herpes simplex virus 2 IgM Ab [Units/volume] in Cerebrospinal Fluid | Human alphaherpesvirus 2 IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13256-3 | Leishmania donovani IgG Ab [Units/volume] in Serum | Leishmania donovani IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13257-1 | Leishmania donovani IgM Ab [Units/volume] in Serum | Leishmania donovani IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13258-9 | Leishmania brasilensis IgG Ab [Units/volume] in Serum | Leishmania braziliensis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13259-7 | Leishmania brasilensis IgM Ab [Units/volume] in Serum | Leishmania braziliensis IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13260-5 | Leishmania mexicana IgG Ab [Units/volume] in Serum | Leishmania mexicana IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13261-3 | Leishmania mexicana IgM Ab [Units/volume] in Serum | Leishmania mexicana IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13262-1 | Leishmania tropica IgG Ab [Units/volume] in Serum | Leishmania tropica IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13263-9 | Leishmania tropica IgM Ab [Units/volume] in Serum | Leishmania tropica IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13266-2 | Mumps virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Orthorubulavirus parotitidis IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13267-0 | Mumps virus IgM Ab [Units/volume] in Cerebrospinal Fluid | Orthorubulavirus parotitidis IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13268-8 | Mycoplasma pneumoniae Ab [Units/volume] in Serum –1st specimen | Mycoplasma pneumoniae antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13269-6 | Mycoplasma pneumoniae Ab [Units/volume] in Serum –2nd specimen | Mycoplasma pneumoniae antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13270-4 | Mycoplasma pneumoniae IgA Ab [Units/volume] in Serum | Mycoplasma pneumoniae IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13271-2 | Neisseria meningitidis serogroup A Ab [Units/volume] in Serum | Neisseria meningitidis group A antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13272-0 | Neisseria meningitidis serogroup C Ab [Units/volume] in Serum | Neisseria meningitidis group C antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13274-6 | Toxocara canis Ab [Units/volume] in Cerebrospinal Fluid | Toxocara canis antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13275-3 | Toxocara canis IgM Ab [Units/volume] in Serum | Toxocara canis IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13276-1 | Toxocara canis IgA Ab [Units/volume] in Serum | Toxocara canis IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13277-9 | Schistosoma sp IgG Ab [Units/volume] in Serum | Schistosoma IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13278-7 | Schistosoma sp IgM Ab [Units/volume] in Serum | Schistosoma IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13279-5 | Rubella virus IgG Ab [Units/volume] in Serum –1st specimen | Rubella virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13280-3 | Rubella virus IgG Ab [Units/volume] in Serum –2nd specimen | Rubella virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13281-1 | Rubella virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Rubella virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13282-9 | Rubella virus IgM Ab [Units/volume] in Cerebrospinal Fluid | Rubella virus IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13283-7 | Measles virus IgM Ab [Units/volume] in Cerebrospinal Fluid | Measles virus IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13286-0 | Toxoplasma gondii IgG Ab [Units/volume] in Serum –2nd specimen | Toxoplasma gondii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13287-8 | Toxoplasma gondii Ab [Units/volume] in Cerebrospinal Fluid | Toxoplasma gondii antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13288-6 | Treponema pallidum Ab [Units/volume] in Blood by Immunofluorescence | Treponema pallidum antibody | Blood specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 13289-4 | Hantavirus hantaan Ab [Units/volume] in Serum | Hantaan virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13290-2 | Trypanosoma cruzi IgM Ab [Units/volume] in Serum | Trypanosoma cruzi IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13291-0 | Trypanosoma cruzi IgG Ab [Units/volume] in Serum | Trypanosoma cruzi IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13292-8 | Colorado tick fever virus IgG Ab [Units/volume] in Serum | Colorado tick fever virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13293-6 | Colorado tick fever virus IgM Ab [Units/volume] in Serum | Colorado tick fever virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13295-1 | Coxsackievirus A10 Ab [Units/volume] in Cerebrospinal Fluid | Human coxsackievirus A10 antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 13297-7 | Coxsackievirus A1 Ab [Units/volume] in Serum | Human coxsackievirus A1 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13323-1 | Herpes simplex virus 2 Ab [Units/volume] in Serum by Immunofluorescence | Human alphaherpesvirus 2 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 13324-9 | Herpes simplex virus 1 Ab [Units/volume] in Serum by Immunofluorescence | Human alphaherpesvirus 1 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 13914-7 | Adenovirus IgG Ab [Units/volume] in Serum | Adenovirus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 13919-6 | Hepatitis B virus core IgG Ab [Units/volume] in Serum by Immunoassay | Hepatitis B virus core antigen IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 13971-7 | Histoplasma capsulatum Ag [Units/volume] in Urine by Immunoassay | Histoplasma capsulatum antigen | Urine specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14077-2 | Borrelia burgdorferi IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunoassay | Borrelia burgdorferi IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14078-0 | Borrelia burgdorferi IgM Ab [Units/volume] in Cerebrospinal Fluid by Immunoassay | Borrelia burgdorferi IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14082-2 | Echinococcus sp IgG Ab [Units/volume] in Serum by Immunoblot | Echinococcus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoblot assay |
| 14208-3 | Filaria IgG4 Ab [Units/volume] in Serum | Filaria IgG4 | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 14304-0 | Measles virus IgG Ab [Units/volume] in Serum by Immunoassay –1st specimen | Measles virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14305-7 | Measles virus IgG Ab [Units/volume] in Serum by Immunoassay –2nd specimen | Measles virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14306-5 | Varicella zoster virus IgG Ab [Units/volume] in Serum by Immunoassay –1st specimen | Varicellovirus humanalpha3 IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14307-3 | Varicella zoster virus IgG Ab [Units/volume] in Serum by Immunoassay –2nd specimen | Varicellovirus humanalpha3 IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 14923-7 | Toxoplasma gondii Ab [Units/volume] in Specimen | Toxoplasma gondii antibody | Specimen | Arbitrary concentration | Quantitative value | – |
| 16176-0 | Bartonella quintana IgG Ab [Units/volume] in Cerebrospinal Fluid | Bartonella quintana IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16177-8 | Bartonella quintana IgM Ab [Units/volume] in Cerebrospinal Fluid | Bartonella quintana IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16284-2 | Polio virus Ab [Units/volume] in Serum | Human poliovirus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16416-0 | Aspergillus terreus Ab [Units/volume] in Serum | Aspergillus terreus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16425-1 | Babesia sp IgM Ab [Units/volume] in Serum by Immunofluorescence | Babesia IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16471-5 | Blastomyces dermatitidis Ab [Units/volume] in Serum | Blastomyces dermatitidis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16473-1 | Bordetella parapertussis Ab [Units/volume] in Serum | Bordetella parapertussis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16474-9 | Bordetella pertussis Ab [Units/volume] in Serum by Complement fixation | Bordetella pertussis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16481-4 | Borrelia burgdorferi IgG Ab [Units/volume] in Body fluid by Immunoassay | Borrelia burgdorferi IgG | Body fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 16482-2 | Borrelia burgdorferi IgM Ab [Units/volume] in Body fluid by Immunoassay | Borrelia burgdorferi IgM | Body fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 16487-1 | Brucella abortus IgG Ab [Units/volume] in Serum by Agglutination | Brucella abortus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Agglutination technique |
| 16488-9 | Brucella abortus IgG Ab [Units/volume] in Serum by Complement fixation | Brucella abortus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16489-7 | Brucella melitensis Ab [Units/volume] in Serum by Latex agglutination | Brucella melitensis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 16490-5 | Brucella suis Ab [Units/volume] in Serum by Latex agglutination | Brucella suis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 16537-3 | Candida albicans Ab [Units/volume] in Serum by Immune diffusion (ID) | Candida albicans antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunodiffusion |
| 16538-1 | Candida sp IgA Ab [Units/volume] in Saliva (oral fluid) | Candida species IgA | Saliva specimen | Arbitrary concentration | Quantitative value | – |
| 16588-6 | Chlamydophila psittaci IgM Ab [Units/volume] in Cerebrospinal Fluid | Chlamydophila psittaci IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16589-4 | Chlamydia sp Ab [Units/volume] in Serum by Immunofluorescence | Chlamydia antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16590-2 | Chlamydia sp Ab [Units/volume] in Serum by Complement fixation | Chlamydia antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16591-0 | Chlamydia sp IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16592-8 | Chlamydia sp IgM Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16595-1 | Chlamydia trachomatis IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16596-9 | Chlamydia trachomatis IgM Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16597-7 | Chlamydia trachomatis B IgG Ab [Units/volume] in Serum | Chlamydia trachomatis B IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16598-5 | Chlamydia trachomatis C IgG Ab [Units/volume] in Serum | Chlamydia trachomatis C IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16626-4 | Clostridium tetani Ab [Units/volume] in Serum –1st specimen | Clostridium tetani antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16627-2 | Clostridium tetani Ab [Units/volume] in Serum –2nd specimen | Clostridium tetani antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16634-8 | Coccidioides immitis Ab [Units/volume] in Cerebrospinal Fluid | Coccidioides immitis antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16635-5 | Coccidioides immitis IgA Ab [Units/volume] in Serum by Immunoassay | Coccidioides immitis IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 16636-3 | Coccidioides immitis IgA Ab [Units/volume] in Cerebrospinal Fluid | Coccidioides immitis IgA | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16638-9 | Coccidioides immitis IgG Ab [Units/volume] in Cerebrospinal Fluid | Coccidioides immitis IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16639-7 | Coccidioides immitis IgM Ab [Units/volume] in Cerebrospinal Fluid | Coccidioides immitis IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16677-7 | Coxiella burnetii IgG Ab [Units/volume] in Serum | Coxiella burnetii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16678-5 | Coxiella burnetii IgM Ab [Units/volume] in Serum | Coxiella burnetii IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16679-3 | Coxsackievirus A Ab [Units/volume] in Serum | Human coxsackievirus A antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16680-1 | Coxsackievirus A IgG Ab [Units/volume] in Serum | Coxsackievirus A IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16681-9 | Coxsackievirus A IgM Ab [Units/volume] in Serum | Coxsackievirus A IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16684-3 | Coxsackievirus B Ab [Units/volume] in Serum | Human coxsackievirus B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16685-0 | Coxsackievirus B IgG Ab [Units/volume] in Serum by Neutralization test | Coxsackievirus B IgG | Serum specimen | Arbitrary concentration | Quantitative value | Neutralization method |
| 16686-8 | Coxsackievirus B IgM Ab [Units/volume] in Serum by Neutralization test | Coxsackievirus B IgM | Serum specimen | Arbitrary concentration | Quantitative value | Neutralization method |
| 16706-4 | Taenia solium larva IgM Ab [Units/volume] in Cerebrospinal Fluid | Taenia solium larva IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16707-2 | Taenia solium larva IgM Ab [Units/volume] in Serum | Taenia solium larva IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16708-0 | Taenia solium larva Ab [Units/volume] in Cerebrospinal Fluid | Taenia solium larva antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16712-2 | Cytomegalovirus Ab [Units/volume] in Body fluid | Cytomegalovirus antibody | Body fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16713-0 | Cytomegalovirus Ab [Units/volume] in Cerebrospinal Fluid | Cytomegalovirus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16714-8 | Cytomegalovirus Ab [Units/volume] in Serum by Latex agglutination | Cytomegalovirus antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 16715-5 | Cytomegalovirus IgG Ab [Units/volume] in Serum or Plasma by Immunofluorescence | Cytomegalovirus IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16716-3 | Cytomegalovirus IgG Ab [Units/volume] in Serum or Plasma by Immunoassay –2nd specimen | Cytomegalovirus IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 16794-0 | Echinococcus sp IgM Ab [Units/volume] in Serum | Echinococcus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16795-7 | Echovirus Ab [Units/volume] in Serum | Human echovirus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16796-5 | Echovirus Ab [Units/volume] in Serum by Complement fixation | Human echovirus antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16797-3 | Echovirus 1 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 1 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16798-1 | Echovirus 14 Ab [Units/volume] in Serum | Human echovirus 14 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16800-5 | Echovirus 19 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 19 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16801-3 | Echovirus 3 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 3 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16802-1 | Echovirus 30 Ab [Units/volume] in Serum | Human echovirus 30 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16803-9 | Echovirus 4 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 4 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16804-7 | Echovirus 40 Ab [Units/volume] in Serum | Echovirus 40 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16805-4 | Echovirus 6 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 6 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16807-0 | Echovirus 9 Ab [Units/volume] in Serum by Complement fixation | Human echovirus 9 antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16808-8 | Anaplasma phagocytophilum IgG Ab [Units/volume] in Serum | Anaplasma phagocytophilum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16809-6 | Anaplasma phagocytophilum IgM Ab [Units/volume] in Serum | Anaplasma phagocytophilum IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16818-7 | Entamoeba histolytica Ab [Units/volume] in Cerebrospinal Fluid | Entamoeba histolytica antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16819-5 | Entamoeba histolytica Ab [Units/volume] in Serum by Immunofluorescence | Entamoeba histolytica antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16820-3 | Entamoeba histolytica Ab [Units/volume] in Serum by Complement fixation | Entamoeba histolytica antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 16823-7 | Epstein Barr virus early Ab [Units/volume] in Serum by Immunoassay | Epstein-Barr virus early antigen antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 16826-0 | Epstein Barr virus capsid IgG Ab [Units/volume] in Cerebrospinal Fluid | Epstein Barr virus capsid IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16878-1 | Francisella tularensis IgM Ab [Units/volume] in Serum | Francisella tularensis IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16924-3 | Haemophilus influenzae IgG Ab [Units/volume] in Serum | Haemophilus influenzae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16927-6 | Haemophilus influenzae B IgG Ab [Units/volume] in Serum | Haemophilus influenzae type b IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16929-2 | Helicobacter pylori Ab [Units/volume] in Serum by Immunofluorescence | Helicobacter pylori antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 16935-9 | Hepatitis B virus surface Ab [Units/volume] in Serum | Hepatitis B virus surface antigen antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16936-7 | Hepatitis C virus IgG Ab [Units/volume] in Serum | Hepatitis C virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16943-3 | Herpes simplex virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Human herpes simplex virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16944-1 | Herpes simplex virus IgM Ab [Units/volume] in Serum | Human herpes simplex virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16948-2 | Herpes simplex virus 1 IgG Ab [Units/volume] in Cerebrospinal Fluid | Human alphaherpesvirus 1 IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16949-0 | Herpes simplex virus 1 IgG Ab [Units/volume] in Serum –1st specimen | Human alphaherpesvirus 1 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16950-8 | Herpes simplex virus 1 IgG Ab [Units/volume] in Serum –2nd specimen | Human alphaherpesvirus 1 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16956-5 | Herpes simplex virus 2 IgG Ab [Units/volume] in Cerebrospinal Fluid | Human alphaherpesvirus 2 IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 16957-3 | Herpes simplex virus 2 IgG Ab [Units/volume] in Serum –1st specimen | Human alphaherpesvirus 2 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16958-1 | Herpes simplex virus 2 IgG Ab [Units/volume] in Serum –2nd specimen | Human alphaherpesvirus 2 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16976-3 | HIV 1 Ag [Units/volume] in Serum | Human immunodeficiency virus 1 antigen | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16978-9 | HIV 1 p24 Ab [Units/volume] in Serum | Human immunodeficiency virus 1 protein 24 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 16979-7 | HIV 1 p24 Ag [Units/volume] in Cerebrospinal Fluid | Human immunodeficiency virus 1 protein 24 antigen | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17012-6 | Influenza virus A Ab [Units/volume] in Cerebrospinal Fluid | Influenza A virus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17014-2 | Influenza virus B Ab [Units/volume] in Cerebrospinal Fluid | Influenza B virus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17015-9 | Influenza virus B IgG Ab [Units/volume] in Serum | Influenza B virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17016-7 | Influenza virus B IgM Ab [Units/volume] in Serum | Influenza B virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17061-3 | Legionella pneumophila 1 IgM Ab [Units/volume] in Serum | Legionella pneumophila 1 IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17063-9 | Legionella pneumophila 2 IgM Ab [Units/volume] in Serum | Legionella pneumophila 2 IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17065-4 | Legionella pneumophila 3 IgM Ab [Units/volume] in Serum | Legionella pneumophila 3 IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17067-0 | Legionella pneumophila 4 IgM Ab [Units/volume] in Serum | Legionella pneumophila 4 IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17069-6 | Legionella pneumophila 5 IgM Ab [Units/volume] in Serum | Legionella pneumophila 5 IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17292-4 | Mumps virus Ab [Units/volume] in Cerebrospinal Fluid | Orthorubulavirus parotitidis antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17303-9 | Mycoplasma pneumoniae Ab [Units/volume] in Cerebrospinal Fluid | Mycoplasma pneumoniae antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17324-5 | Neisseria meningitidis Ag [Units/volume] in Cerebrospinal Fluid by Latex agglutination | Neisseria meningitidis antigen | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 17327-8 | Neisseria meningitidis serogroup B Ab [Units/volume] in Serum | Neisseria meningitidis group B antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17331-0 | Neisseria meningitidis polyvalent Ab [Units/volume] in Serum | Neisseria meningitidis polyvalent antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17413-6 | Papova virus SV 40 Ab [Units/volume] in Serum | Papova virus SV40 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17427-6 | Penicillium sp Ab [Units/volume] in Serum | Penicillium antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17445-8 | Phoma herbarum IgG Ab [Units/volume] in Serum | Phoma herbarum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17502-6 | Pseudomonas aeruginosa Ab [Units/volume] in Serum | Pseudomonas aeruginosa antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17539-8 | Rickettsia typhi Ab [Units/volume] in Serum by Latex agglutination | Rickettsia typhi antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 17540-6 | Rickettsia typhi IgA Ab [Units/volume] in Serum by Immunofluorescence | Rickettsia typhi IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17549-7 | Rubella virus Ab [Units/volume] in Cerebrospinal Fluid | Rubella virus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17550-5 | Rubella virus Ab [Units/volume] in Serum by Latex agglutination | Rubella virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 17551-3 | Rubella virus IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunoassay | Rubella virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17553-9 | Measles virus Ab [Units/volume] in Cerebrospinal Fluid | Measles virus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17554-7 | Measles virus IgA Ab [Units/volume] in Serum | Measles virus IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17555-4 | Measles virus Ab [Units/volume] in Serum –1st specimen | Measles virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17556-2 | Measles virus Ab [Units/volume] in Serum –2nd specimen | Measles virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17557-0 | Saccharomonospora viridis IgG Ab [Units/volume] in Serum | Saccharomonospora viridis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17558-8 | Saint Louis encephalitis virus Ab [Units/volume] in Cerebrospinal Fluid | Saint Louis encephalitis virus antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17635-4 | Streptococcus pneumoniae Danish serotype 18C IgG Ab [Units/volume] in Serum | Streptococcus pneumoniae Danish serotype 18C IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17638-8 | Streptococcus pneumoniae Danish serotype 7F Ab [Units/volume] in Serum by Immunoassay –1st specimen | Streptococcus pneumoniae Danish serotype 7F antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17639-6 | Streptococcus pneumoniae Danish serotype 7F Ab [Units/volume] in Serum by Immunoassay –2nd specimen | Streptococcus pneumoniae Danish serotype 7F antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17647-9 | Streptococcus pneumoniae Ab [Units/volume] in Serum | Streptococcus pneumoniae antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17648-7 | Streptococcus pneumoniae Ab [Units/volume] in Serum by Immunoassay | Streptococcus pneumoniae antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17650-3 | Streptococcus pneumoniae IgG Ab [Units/volume] in Serum by Immunoassay –1st specimen | Streptococcus pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17651-1 | Streptococcus pneumoniae IgG Ab [Units/volume] in Serum by Immunoassay –2nd specimen | Streptococcus pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17657-8 | Streptolysin O Ab [Units/volume] in Synovial fluid | Streptolysin O antibody | Synovial fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17715-4 | Toxocara canis Ab [Units/volume] in Cerebrospinal Fluid by Immunoassay | Toxocara canis antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 17716-2 | Toxoplasma gondii IgE Ab [Units/volume] in Serum | Toxoplasma gondii IgE | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17724-6 | Treponema pallidum Ab [Units/volume] in Serum by Immunofluorescence | Treponema pallidum antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17725-3 | Treponema pallidum Ab [Units/volume] in Serum by Latex agglutination | Treponema pallidum antibody | Serum specimen | Arbitrary concentration | Quantitative value | Latex agglutination test |
| 17727-9 | Treponema pallidum IgG Ab [Units/volume] in Serum by Immunofluorescence | Treponema pallidum IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17728-7 | Treponema pallidum IgM Ab [Units/volume] in Serum by Immunofluorescence | Treponema pallidum IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17734-5 | Trichinella spiralis IgG Ab [Units/volume] in Serum | Trichinella spiralis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17763-4 | Varicella zoster virus IgG Ab [Units/volume] in Serum by Immunofluorescence | Varicellovirus humanalpha3 IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17764-2 | Varicella zoster virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Varicellovirus humanalpha3 IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 17765-9 | Varicella zoster virus IgG Ab [Units/volume] in Cerebrospinal Fluid by Immunofluorescence | Varicellovirus humanalpha3 IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17766-7 | Varicella zoster virus IgM Ab [Units/volume] in Serum by Immunofluorescence | Varicellovirus humanalpha3 IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunofluorescence technique |
| 17775-8 | Yersinia sp IgA Ab [Units/volume] in Serum | Yersinia species IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17776-6 | Yersinia sp IgG Ab [Units/volume] in Serum | Yersinia IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 17777-4 | Yersinia sp IgM Ab [Units/volume] in Serum | Yersinia IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18243-6 | Mycoplasma pneumoniae IgG Ab [Units/volume] in Cerebrospinal Fluid | Mycoplasma pneumoniae IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 18333-5 | Echovirus 7 Ab [Units/volume] in Cerebrospinal Fluid | Human echovirus 7 antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 18348-3 | Toxoplasma gondii IgM Ab [Units/volume] in Cerebrospinal Fluid | Toxoplasma gondii IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 18409-3 | Curvularia lunata IgG Ab [Units/volume] in Serum | Curvularia lunata IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18410-1 | Epicoccum purpurascens IgG Ab [Units/volume] in Serum | Epicoccum purpurascens IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18411-9 | Rhizopus nigricans IgG Ab [Units/volume] in Serum | Rhizopus stolonifer IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18412-7 | Stemphylium botryosum IgG Ab [Units/volume] in Serum | Stemphylium botryosum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18416-8 | Aspergillus nidulans IgG Ab [Units/volume] in Serum | Aspergillus nidulans IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18420-0 | Chaetomium globosum IgG Ab [Units/volume] in Serum | Chaetomium globosum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18421-8 | Fusarium oxysporum IgG Ab [Units/volume] in Serum | Fusarium oxysporum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 18429-1 | Rickettsia rickettsii IgG Ab [Units/volume] in Cerebrospinal Fluid | Rickettsia rickettsii IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 18430-9 | Rickettsia rickettsii IgM Ab [Units/volume] in Cerebrospinal Fluid | Rickettsia rickettsii IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 19107-2 | Histoplasma capsulatum Ag [Units/volume] in Serum by Radioimmunoassay (RIA) | Histoplasma capsulatum antigen | Serum specimen | Arbitrary concentration | Quantitative value | Radioimmunoassay |
| 19243-5 | Brucella abortus Ab [Units/volume] in Serum by Immunoassay | Brucella abortus antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 20486-7 | Haemophilus influenzae B Ag [Units/volume] in Cerebrospinal Fluid | Haemophilus influenzae type b antigen | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 20497-4 | Histoplasma capsulatum mycelial phase Ab [Units/volume] in Serum by Complement fixation | Histoplasma capsulatum mycelial antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 20498-2 | Histoplasma capsulatum yeast phase Ab [Units/volume] in Serum by Complement fixation | Histoplasma capsulatum yeast antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 21005-4 | Hepatitis B virus core Ab [Units/volume] in Serum from Donor by Immunoassay | Hepatitis B core antigen antibody | – | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 21006-2 | Hepatitis B virus surface Ab [Units/volume] in Serum from Donor by Immunoassay | Hepatitis B virus surface antigen antibody | – | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 22108-5 | Babesia sp IgM Ab [Units/volume] in Serum | Babesia IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22109-3 | Bacillus anthracis Ab [Units/volume] in Specimen | Bacillus anthracis antibody | Specimen | Arbitrary concentration | Quantitative value | – |
| 22119-2 | Borrelia burgdorferi Ab [Units/volume] in Cerebrospinal Fluid | Borrelia burgdorferi antibody | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22120-0 | Borrelia burgdorferi Ab [Units/volume] in Body fluid | Borrelia burgdorferi antibody | Body fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22121-8 | Borrelia burgdorferi Ab [Units/volume] in Serum | Borrelia burgdorferi antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22126-7 | Borrelia burgdorferi IgG Ab [Units/volume] in Cerebrospinal Fluid | Borrelia burgdorferi IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22127-5 | Borrelia burgdorferi IgG Ab [Units/volume] in Body fluid | Borrelia burgdorferi IgG | Body fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22133-3 | Borrelia burgdorferi IgM Ab [Units/volume] in Cerebrospinal Fluid | Borrelia burgdorferi IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22134-1 | Borrelia burgdorferi IgM Ab [Units/volume] in Body fluid | Borrelia burgdorferi IgM | Body fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22151-5 | Brucella abortus IgM Ab [Units/volume] in Serum | Brucella abortus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22153-1 | Brucella canis IgG Ab [Units/volume] in Serum | Brucella canis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22155-6 | Brucella canis IgM Ab [Units/volume] in Serum | Brucella canis IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22163-0 | Candida albicans Ab [Units/volume] in Serum | Candida albicans antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22183-8 | Chlamydia sp IgG Ab [Units/volume] in Cerebrospinal Fluid | Chlamydia IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22185-3 | Chlamydia sp IgM Ab [Units/volume] in Cerebrospinal Fluid | Chlamydia IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22190-3 | Chlamydia trachomatis IgG Ab [Units/volume] in Cerebrospinal Fluid | Chlamydia trachomatis IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22192-9 | Chlamydia trachomatis IgM Ab [Units/volume] in Cerebrospinal Fluid | Chlamydia trachomatis IgM | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22203-4 | Clostridium tetani IgG Ab [Units/volume] in Serum | Clostridium tetani IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22206-7 | Coccidioides immitis Ab [Units/volume] in Serum | Coccidioides immitis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22223-2 | Coxsackievirus B IgG Ab [Units/volume] in Serum | Coxsackievirus B IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22224-0 | Coxsackievirus B IgM Ab [Units/volume] in Serum | Coxsackievirus B IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22243-0 | Cytomegalovirus IgG Ab [Units/volume] in Cerebrospinal Fluid | Cytomegalovirus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22247-1 | Cytomegalovirus IgG Ab [Units/volume] in Serum or Plasma –2nd specimen | Cytomegalovirus IgG | Serum or plasma specimen | Arbitrary concentration | Quantitative value | – |
| 22265-3 | Echinococcus sp IgG Ab [Units/volume] in Serum | Echinococcus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22284-4 | Ehrlichia chaffeensis IgG Ab [Units/volume] in Serum | Ehrlichia chaffeensis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22287-7 | Entamoeba histolytica IgA Ab [Units/volume] in Serum | Entamoeba histolytica IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22288-5 | Entamoeba histolytica IgG Ab [Units/volume] in Serum | Entamoeba histolytica IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22289-3 | Entamoeba histolytica IgM Ab [Units/volume] in Serum | Entamoeba histolytica IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22293-5 | Epstein Barr virus early Ab [Units/volume] in Serum | Epstein-Barr virus early antigen antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22312-3 | Hepatitis A virus Ab [Units/volume] in Serum | Hepatitis A virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22313-1 | Hepatitis A virus IgG Ab [Units/volume] in Serum | Hepatitis A virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22315-6 | Hepatitis A virus IgM Ab [Units/volume] in Serum | Hepatitis A virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22316-4 | Hepatitis B virus core Ab [Units/volume] in Serum | Hepatitis B core antigen antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22317-2 | Hepatitis B virus core Ab [Units/volume] in Serum from Donor | Hepatitis B core antigen antibody | – | Arbitrary concentration | Quantitative value | – |
| 22318-0 | Hepatitis B virus core IgG Ab [Units/volume] in Serum | Hepatitis B virus core antigen IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22319-8 | Hepatitis B virus core IgM Ab [Units/volume] in Serum | Hepatitis B virus core antigen IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22321-4 | Hepatitis B virus e Ab [Units/volume] in Serum | Hepatitis B e antigen antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22323-0 | Hepatitis B virus surface Ab [Units/volume] in Serum from Donor | Hepatitis B virus surface antigen antibody | – | Arbitrary concentration | Quantitative value | – |
| 22327-1 | Hepatitis C virus Ab [Units/volume] in Serum | Hepatitis C virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22330-5 | Hepatitis D virus Ab [Units/volume] in Serum | Hepatitis D virus antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22349-5 | Histoplasma capsulatum IgA Ab [Units/volume] in Serum | Histoplasma capsulatum IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22351-1 | Histoplasma capsulatum IgG Ab [Units/volume] in Serum | Histoplasma capsulatum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22353-7 | Histoplasma capsulatum IgM Ab [Units/volume] in Serum | Histoplasma capsulatum IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22354-5 | Histoplasma capsulatum mycelial phase Ab [Units/volume] in Serum | Histoplasma capsulatum mycelial antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22355-2 | Histoplasma capsulatum yeast phase Ab [Units/volume] in Serum | Histoplasma capsulatum yeast antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22356-0 | HIV 1 Ab [Units/volume] in Serum | Human immunodeficiency virus 1 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22358-6 | HIV 2 Ab [Units/volume] in Serum | Human immunodeficiency virus 2 antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22458-4 | Rabies virus Ab [Units/volume] in Tissue | Lyssavirus rabies antibody | Tissue specimen | Arbitrary concentration | Quantitative value | – |
| 22486-5 | Rickettsia typhi Ab [Units/volume] in Serum | Rickettsia typhi antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22487-3 | Rickettsia typhi IgA Ab [Units/volume] in Serum | Rickettsia typhi IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22500-3 | Measles virus IgG Ab [Units/volume] in Cerebrospinal Fluid | Measles virus IgG | Cerebrospinal fluid specimen | Arbitrary concentration | Quantitative value | – |
| 22503-7 | Measles virus IgG Ab [Units/volume] in Serum –1st specimen | Measles virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22504-5 | Measles virus IgG Ab [Units/volume] in Serum –2nd specimen | Measles virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22552-4 | Streptococcus pneumoniae Danish serotype 7F IgG Ab [Units/volume] in Serum | Streptococcus pneumoniae Danish serotype 7F IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22562-3 | Streptococcus pneumoniae IgG Ab [Units/volume] in Serum –1st specimen | Streptococcus pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22564-9 | Streptococcus pneumoniae IgG Ab [Units/volume] in Serum –2nd specimen | Streptococcus pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22575-5 | Toxocara canis IgG Ab [Units/volume] in Serum | Toxocara canis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22578-9 | Toxoplasma gondii IgA Ab [Units/volume] in Serum | Toxoplasma gondii IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22585-4 | Treponema pallidum Ab [Units/volume] in Blood | Treponema pallidum antibody | Blood specimen | Arbitrary concentration | Quantitative value | – |
| 22592-0 | Treponema pallidum IgG Ab [Units/volume] in Serum | Treponema pallidum IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22594-6 | Treponema pallidum IgM Ab [Units/volume] in Serum | Treponema pallidum IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22603-5 | Varicella zoster virus IgG Ab [Units/volume] in Serum –1st specimen | Varicellovirus humanalpha3 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22604-3 | Varicella zoster virus IgG Ab [Units/volume] in Serum –2nd specimen | Varicellovirus humanalpha3 IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22619-1 | Yersinia enterocolitica IgA Ab [Units/volume] in Serum | Yersinia enterocolitica IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22620-9 | Yersinia enterocolitica IgG Ab [Units/volume] in Serum | Yersinia enterocolitica IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22621-7 | Yersinia enterocolitica IgM Ab [Units/volume] in Serum | Yersinia enterocolitica IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22755-3 | Haemophilus influenzae B Ab [Mass/volume] in Serum | Haemophilus influenzae type b antibody | Serum specimen | Mass concentration | Quantitative value | – |
| 22921-1 | Brucella abortus Ab [Units/volume] in Serum by Agglutination | Brucella abortus antibody | Serum specimen | Arbitrary concentration | Quantitative value | Agglutination technique |
| 22934-4 | Brucella melitensis Ab [Units/volume] in Serum by Complement fixation | Brucella melitensis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 22937-7 | Brucella ovis Ab [Units/volume] in Serum by Complement fixation | Brucella ovis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 22939-3 | Brucella ovis Ab [Units/volume] in Serum | Brucella ovis antibody | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 22953-4 | Brucella suis Ab [Units/volume] in Serum by Complement fixation | Brucella suis antibody | Serum specimen | Arbitrary concentration | Quantitative value | Complement fixation |
| 23756-0 | Neospora caninum Ab [Units/volume] in Serum by Immunoassay | Neospora caninum antibody | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 23827-9 | Bordetella pertussis filamentous hemagglutinin IgA Ab [Units/volume] in Serum | Bordetella pertussis filamentous hemagglutinin IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23828-7 | Bordetella pertussis filamentous hemagglutinin IgG Ab [Units/volume] in Serum | Bordetella pertussis filamentous hemagglutinin IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23829-5 | Bordetella pertussis filamentous hemagglutinin IgM Ab [Units/volume] in Serum | Bordetella pertussis filamentous hemagglutinin IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23830-3 | Bordetella pertussis.pertussis toxin IgA Ab [Units/volume] in Serum | Bordetella pertussis toxin IgA | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23831-1 | Bordetella pertussis.pertussis toxin IgG Ab [Units/volume] in Serum | Bordetella pertussis toxin IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23832-9 | Bordetella pertussis.pertussis toxin IgM Ab [Units/volume] in Serum | Bordetella pertussis toxin IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23958-2 | Dengue virus IgG Ab [Units/volume] in Serum | Dengue virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23968-1 | Dengue virus IgM Ab [Units/volume] in Serum | Dengue virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 23991-3 | Dengue virus IgG Ab [Units/volume] in Serum by Immunoassay | Dengue virus IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 23992-1 | Dengue virus IgM Ab [Units/volume] in Serum by Immunoassay | Dengue virus IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24007-7 | Epstein Barr virus early IgG Ab [Units/volume] in Serum | Epstein Barr virus early IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24033-3 | Bordetella pertussis filamentous hemagglutinin IgG Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis filamentous hemagglutinin IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24034-1 | Bordetella pertussis filamentous hemagglutinin IgA Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis filamentous hemagglutinin IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24035-8 | Bordetella pertussis filamentous hemagglutinin IgM Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis filamentous hemagglutinin IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24127-3 | Bordetella pertussis.pertussis toxin IgG Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis toxin IgG | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24128-1 | Bordetella pertussis.pertussis toxin IgA Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis toxin IgA | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24129-9 | Bordetella pertussis.pertussis toxin IgM Ab [Units/volume] in Serum by Immunoassay | Bordetella pertussis toxin IgM | Serum specimen | Arbitrary concentration | Quantitative value | Immunoassay technique |
| 24234-7 | Mycoplasma pneumoniae IgG Ab [Units/volume] in Serum –1st specimen | Mycoplasma pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24235-4 | Mycoplasma pneumoniae IgG Ab [Units/volume] in Serum –2nd specimen | Mycoplasma pneumoniae IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24238-8 | Chlamydia sp IgG Ab [Units/volume] in Serum –1st specimen | Chlamydia IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24239-6 | Chlamydia sp IgG Ab [Units/volume] in Serum –2nd specimen | Chlamydia IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24240-4 | Mumps virus IgG Ab [Units/volume] in Serum –1st specimen | Orthorubulavirus parotitidis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24241-2 | Mumps virus IgG Ab [Units/volume] in Serum –2nd specimen | Orthorubulavirus parotitidis IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |
| 24242-0 | Toxoplasma gondii IgG Ab [Units/volume] in Serum –1st specimen | Toxoplasma gondii IgG | Serum specimen | Arbitrary concentration | Quantitative value | – |

… 1413 weitere; die vollständige Aufzählung steht im ValueSet.

### Serologie qualitativ — Threshold-Presence eines Erreger-Antikörpers oder -Antigens

Das qualitative Gegenstück (ordinale/semiquantitative Presence). Gehört im Modul 2027 zur „spezifischen Bestimmung“; hier für die Review-Trennung quantitativ vs. qualitativ aufgeführt.

ValueSet [mii-vs-mikrobio-loinc-ontology-ab-ag-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-ab-ag-threshold.md).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 246093002 |Component (attribute)| = (<< 312301006 |Infective organism antibody (substance)| OR << 116633006 |Microbial antigen (substance)|)

```

| | |
| :--- | :--- |
| Property | Threshold OR Presence |
| Component | `<< Infective organism antibody`OR`<< Microbial antigen` |

Die Regel wählt **2796** Konzepte aus (2785 mit LOINC-Code, 11 ohne). Release 2026-03-21 → 2026-10-21: **+27 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.md)).

#### Codes (2796)

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 100100-7 | Fasciola sp IgG Ab [Presence] in Serum by Immunoassay | Fasciola IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 100106-4 | Filaria IgG Ab [Presence] in Serum by Immunoassay | Filaria IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 100107-2 | Leishmania sp IgG Ab [Presence] in Serum by Immunoassay | Leishmania IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 100121-3 | Chlamydia trachomatis IgA Ab [Presence] in Serum by Immunoassay | Chlamydia trachomatis IgA | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 100130-4 | Schistosoma mansoni Ab [Presence] in Serum by Immunoblot | Schistosoma mansoni antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 100964-6 | Dengue virus IgG Ab [Presence] in Serum, Plasma or Blood by Rapid immunoassay | Dengue virus IgG | Plasma specimen or serum specimen or whole blood specimen | Threshold | Ordinal value | Rapid immunoassay |
| 101207-9 | Hepatitis E virus IgG Ab [Presence] in Serum or Plasma by Line blot | Hepatitis E virus IgG | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101208-7 | Hepatitis E virus IgM Ab [Presence] in Serum or Plasma by Line blot | Hepatitis E virus IgM | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101210-3 | Hantavirus puumala IgG Ab [Presence] in Serum or Plasma by Line blot | Puumala virus IgG | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101211-1 | Hantavirus sin nombre IgG Ab [Presence] in Serum or Plasma by Line blot | Sin Nombre virus IgG | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101212-9 | Hantavirus hantaan IgG Ab [Presence] in Serum or Plasma by Line blot | Hantaan virus IgG | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101215-2 | Hantavirus puumala IgM Ab [Presence] in Serum or Plasma by Line blot | Puumala virus IgM | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101216-0 | Hantavirus sin nombre IgM Ab [Presence] in Serum or Plasma by Line blot | Sin Nombre virus IgM | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101217-8 | Hantavirus hantaan IgM Ab [Presence] in Serum or Plasma by Line blot | Hantaan virus IgM | Serum or plasma specimen | Threshold | Ordinal value | Line blot |
| 101802-7 | Brucella sp IgA Ab [Presence] in Serum | Brucella species IgA | Serum specimen | Threshold | Ordinal value | – |
| 102506-3 | Penicillium notatum IgE Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Penicillium chrysogenum IgE | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102881-0 | Saccharopolyspora rectivirgula IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Saccharopolyspora rectivirgula IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102890-1 | Thermoactinomyces vulgaris IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Thermoactinomyces vulgaris IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102905-7 | Stachybotrys chartarum IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Stachybotrys chartarum IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102928-9 | Candida albicans IgG4 Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Candida albicans IgG4 | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102955-2 | Aureobasidium pullulans IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Aureobasidium pullulans IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102956-0 | Curvularia specifera IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Curvularia spicifera IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102958-6 | Fusarium moniliforme IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Fusarium verticillioides IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102959-4 | Helminthosporium sp IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Helminthosporium IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102961-0 | Mucor racemosus IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Mucor racemosus IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102963-6 | Phoma betae IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Phoma betae IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102964-4 | Penicillium notatum IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Penicillium chrysogenum IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102966-9 | Rhizopus nigricans IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Rhizopus stolonifer IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 102967-7 | Stemphylium botryosum IgG Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Stemphylium botryosum IgG | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 103021-2 | Staphylococcus aureus TSST-1 IgE Ab [Presence] in Serum by Radioallergosorbent test (RAST) | Staphylococcus aureus toxic shock syndrome toxin 1 specific immunoglobulin E | Serum specimen | Threshold | Semi-quantitative value | Radioallergosorbent testing technique |
| 10348-1 | Bordetella parapertussis Ab [Presence] in Serum | Bordetella parapertussis antibody | Serum specimen | Threshold | Ordinal value | – |
| 103617-7 | Helicobacter pylori IgG Ab [Presence] in Blood by Immunoassay | Helicobacter pylori IgG | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 104345-4 | Borna disease virus Ag [Presence] in Brain tissue by Immune stain | Orthobornavirus bornaense antigen | Brain tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 104346-2 | Borna disease virus Ag [Presence] in Specimen by Immune stain | Orthobornavirus bornaense antigen | Specimen | Threshold | Ordinal value | Immunohistochemistry |
| 104434-6 | Norovirus Ag [Presence] in Specimen | Norovirus Ag | Specimen | Threshold | Ordinal value | – |
| 104452-8 | Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoblot | Toxoplasma gondii IgG | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 104459-3 | Varicella zoster virus IgG Ab [Presence] in Cerebrospinal Fluid by Immunoassay | Varicellovirus humanalpha3 IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 104465-0 | Yersinia enterocolitica O:3 Ab [Presence] in Stool | Yersinia enterocolitica type O:3 antibody | Stool specimen | Threshold | Ordinal value | – |
| 104466-8 | Yersinia enterocolitica O:5 Ab [Presence] in Stool | Yersinia enterocolitica type O:5 antibody | Stool specimen | Threshold | Ordinal value | – |
| 104467-6 | Yersinia enterocolitica O:8 Ab [Presence] in Stool | Yersinia enterocolitica type O:8 antibody | Stool specimen | Threshold | Ordinal value | – |
| 104468-4 | Yersinia enterocolitica O:9 Ab [Presence] in Stool | Yersinia enterocolitica type O:9 antibody | Stool specimen | Threshold | Ordinal value | – |
| 105055-8 | Rubella virus IgG Ab [Presence] in Specimen | Rubella virus IgG | Specimen | Threshold | Ordinal value | – |
| 105074-9 | Legionella pneumophila 1 Ag [Presence] in Specimen | Legionella pneumophila serogroup 1 antigen | Specimen | Threshold | Ordinal value | – |
| 105911-2 | SARS-CoV-2 (COVID-19) IgG Ab [Presence] in Specimen | Severe acute respiratory syndrome coronavirus 2 IgG | Specimen | Threshold | Ordinal value | – |
| 105923-7 | Cryptococcus sp Ag [Presence] in Blood by Immunoassay | Cryptococcus antigen | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 10645-0 | Aspergillus fumigatus Ag [Presence] in Tissue by Immunofluorescence | Aspergillus fumigatus antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 10651-8 | Chlamydophila pneumoniae Ag [Presence] in Sputum or Bronchial | Chlamydophila pneumoniae antigen | – | Threshold | Ordinal value | – |
| 10660-9 | Cytomegalovirus Ag [Presence] in Tissue by Immune stain | Cytomegalovirus antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10673-2 | Hepatitis B virus core Ag [Presence] in Tissue by Immune stain | Hepatitis B virus core antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10674-0 | Hepatitis B virus surface Ag [Presence] in Tissue by Immune stain | Hepatitis B surface antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10675-7 | Hepatitis B virus surface Ag [Presence] in Tissue by Orcein stain | Hepatitis B surface antigen | Tissue specimen | Threshold | Ordinal value | Orcein stain technique |
| 10677-3 | Herpes simplex virus 1 Ag [Presence] in Tissue by Immune stain | Human alphaherpesvirus 1 antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 10679-9 | Herpes simplex virus 2 Ag [Presence] in Tissue by Immune stain | Human alphaherpesvirus 2 antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 106937-6 | Hepatitis D virus Ab [Presence] in Serum or Plasma by Immunoassay | Hepatitis D virus antibody | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 10705-2 | Human papilloma virus Ag [Presence] in Tissue by Immune stain | Human papillomavirus antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 107158-8 | Trypanosoma cruzi Ab [Presence] in Serum by Confirmatory method | Trypanosoma cruzi antibody | Serum specimen | Threshold | Ordinal value | Confirmatory technique |
| 107211-5 | Treponema pallidum Ag [Presence] in Tissue by Immune stain | Treponema pallidum antigen | Tissue specimen | Threshold | Ordinal value | Immunohistochemistry |
| 108113-2 | Rotavirus Ag [Presence] in Specimen by Immunoassay | Rotavirus antigen | Specimen | Threshold | Ordinal value | Immunoassay technique |
| 108192-6 | Measles virus IgM Ab [Presence] in Saliva (oral fluid) by Immunoassay | Measles virus IgM | Saliva specimen | Threshold | Ordinal value | Immunoassay technique |
| 108193-4 | Measles virus IgG Ab [Presence] in Saliva (oral fluid) by Immunoassay | Measles virus IgG | Saliva specimen | Threshold | Ordinal value | Immunoassay technique |
| 10858-9 | Teichoate Ab [Presence] in Serum | Teichoic acid antibody | Serum specimen | Threshold | Ordinal value | – |
| 10894-4 | Aspergillus niger Ab [Presence] in Serum by Immune diffusion (ID) | Aspergillus niger antibody | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 10900-9 | Hepatitis B virus surface Ab [Presence] in Serum by Immunoassay | Hepatitis B virus surface antigen antibody | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 10901-7 | HIV 2 gp125 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 glycoprotein 125 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 10902-5 | HIV 2 gp36 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 glycoprotein 36 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11006-4 | Borrelia burgdorferi Ab [Presence] in Serum | Borrelia burgdorferi antibody | Serum specimen | Threshold | Ordinal value | – |
| 11076-7 | Hepatitis C virus 5-1-1 Ab [Presence] in Serum by Immunoblot | Hepatitis C virus recombinant protein 5-1-1 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11078-3 | HIV 2 gp80 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 glycoprotein 80 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11079-1 | HIV 2 p26 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 protein 26 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11080-9 | HIV 2 p53 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 protein 53 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11081-7 | HIV 2 p56 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 protein 56 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11082-5 | HIV 2 p68 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 protein 68 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 11086-6 | Streptococcus pneumoniae Ag [Presence] in Serum | Streptococcus pneumoniae antigen | Serum specimen | Threshold | Ordinal value | – |
| 111520-3 | Borrelia burgdorferi IgM Ab [Presence] in Serum by Line blot | Borrelia burgdorferi IgM | Serum specimen | Threshold | Ordinal value | Line blot |
| 111522-9 | Borrelia burgdorferi IgG Ab [Presence] in Serum by Line blot | Borrelia burgdorferi IgG | Serum specimen | Threshold | Ordinal value | Line blot |
| 111819-9 | Escherichia coli O157:H7 Ag [Presence] in Stool by Rapid immunoassay | Escherichia coli O157:H7 antigen | Stool specimen | Threshold | Ordinal value | Rapid immunoassay |
| 112294-4 | Respiratory syncytial virus Ag [Presence] in Nose by Rapid immunoassay | Orthopneumovirus hominis antigen | Specimen from nose | Threshold | Ordinal value | Rapid immunoassay |
| 112334-8 | Western equine encephalitis virus IgM Ab [Presence] in Serum by Immunofluorescence | Western equine encephalitis virus IgM | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 112335-5 | Saint Louis encephalitis virus IgM Ab [Presence] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgM | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 112336-3 | Eastern equine encephalitis virus IgM Ab [Presence] in Serum by Immunofluorescence | Eastern equine encephalitis virus IgM | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 112340-5 | Western equine encephalitis virus IgG Ab [Presence] in Serum by Immunofluorescence | Western equine encephalitis virus IgG | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 112341-3 | Saint Louis encephalitis virus IgG Ab [Presence] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgG | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 112410-6 | Toxoplasma gondii IgM Ab [Presence] in Serum by Immunoblot | Toxoplasma gondii IgM | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 112598-8 | Borrelia burgdorferi IgM Ab [Presence] in Serum or Plasma by IA.STTT | Borrelia burgdorferi IgM | Serum or plasma specimen | Threshold | Ordinal value | – |
| 112599-6 | Borrelia burgdorferi IgG Ab [Presence] in Serum or Plasma by IA.STTT | Borrelia burgdorferi IgG | Serum or plasma specimen | Threshold | Ordinal value | – |
| 11260-7 | HTLV I Ab [Presence] in Serum by Immunoassay | Human T-lymphotropic virus 1 antibody | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 11264-9 | Salmonella paratyphi A Ab [Presence] in Serum by Agglutination | Salmonella enterica subspecies enterica serovar Paratyphi A antibody | Serum specimen | Threshold | Ordinal value | Agglutination technique |
| 11265-6 | Salmonella paratyphi B Ab [Presence] in Serum by Agglutination | Salmonella enterica subspecies enterica serovar Paratyphi B antibody | Serum specimen | Threshold | Ordinal value | Agglutination technique |
| 11266-4 | Streptococcus agalactiae Ag [Presence] in Specimen | Streptococcus agalactiae antigen | Specimen | Threshold | Ordinal value | – |
| 11269-8 | Streptococcus pyogenes Ag [Presence] in Serum by Agglutination | Streptococcus pyogenes antigen | Serum specimen | Threshold | Ordinal value | Agglutination technique |
| 112694-5 | HIV 2 Ab [Presence] in Serum by Line blot | Human immunodeficiency virus 2 antibody | Serum specimen | Threshold | Ordinal value | Line blot |
| 112695-2 | Hepatitis C virus IgG Ab [Presence] in Serum by Line blot | Hepatitis C virus IgG | Serum specimen | Threshold | Ordinal value | Line blot |
| 115347-7 | Borna disease virus Ag [Presence] in Specimen by Molgen | Orthobornavirus bornaense antigen | Specimen | Threshold | Ordinal value | Molecular genetics |
| 115744-5 | Saint Louis encephalitis virus IgG Ab [Presence] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 115745-2 | Western equine encephalitis virus IgG Ab [Presence] in Cerebrospinal Fluid by Immunofluorescence | Western equine encephalitis virus IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 115749-4 | Eastern equine encephalitis virus IgM Ab [Presence] in Cerebrospinal Fluid by Immunofluorescence | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 115750-2 | Saint Louis encephalitis virus IgM Ab [Presence] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 115751-0 | Western equine encephalitis virus IgM Ab [Presence] in Cerebrospinal Fluid by Immunofluorescence | Western equine encephalitis virus IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 11583-2 | Aspergillus fumigatus 1 Ab [Presence] in Serum | Aspergillus fumigatus serotype 1 antibody | Serum specimen | Threshold | Ordinal value | – |
| 11584-0 | Aureobasidium pullulans Ab [Presence] in Serum | Aureobasidium pullulans antibody | Serum specimen | Threshold | Ordinal value | – |
| 11592-3 | Aspergillus fumigatus 6 Ab [Presence] in Serum | Aspergillus fumigatus serotype 6 antibody | Serum specimen | Threshold | Ordinal value | – |
| 12222-6 | Human papilloma virus Ag [Presence] in Genital specimen | Human papillomavirus antigen | Specimen from genital system | Threshold | Ordinal value | – |
| 12232-5 | Measles virus Ag [Presence] in Specimen by Immunofluorescence | Measles morbillivirus Ag | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 12237-4 | Mumps virus Ag [Presence] in Specimen by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 12251-5 | Rubella virus Ag [Presence] in Specimen by Immunofluorescence | Rubella virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 12259-8 | Streptococcus pyogenes enzyme Ab [Presence] in Serum by Sheep Cell Agglutination | Streptococcus pyogenes enzyme antibody | Serum specimen | Threshold | Ordinal value | – |
| 12271-3 | Varicella zoster virus Ab [Presence] in Serum by Latex agglutination | Varicellovirus humanalpha3 antibody | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 12455-2 | Histoplasma capsulatum yeast phase Ab [Presence] in Cerebrospinal Fluid | Histoplasma capsulatum yeast antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 12456-0 | Histoplasma capsulatum mycelial phase Ab [Presence] in Cerebrospinal Fluid | Histoplasma capsulatum mycelial antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 12855-3 | HIV 1 p23 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 23 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12856-1 | HIV 1 p65 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 65 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12857-9 | HIV 1 p28 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 28 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12858-7 | HIV 1 p32 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 32 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12859-5 | HIV 1 p18 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 18 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12860-3 | Borrelia burgdorferi 39kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 39 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12861-1 | Borrelia burgdorferi 88kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 88 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12862-9 | Borrelia burgdorferi 66kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 66 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12863-7 | Borrelia burgdorferi 41kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 41 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12864-5 | Borrelia burgdorferi 25kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 25 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12865-2 | Borrelia burgdorferi 29kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 29 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12866-0 | Borrelia burgdorferi 18kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 18 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12867-8 | Borrelia burgdorferi 58kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 58 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12868-6 | Borrelia burgdorferi 47kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 47 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12869-4 | Borrelia burgdorferi 30kD Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi 30 kDa antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12870-2 | HIV 1 gp34 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 glycoprotein 34 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12871-0 | HIV 1 p26 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 26 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12873-6 | Borrelia burgdorferi 88kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 88 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12874-4 | Borrelia burgdorferi 93kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 93 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12875-1 | HIV 1 p64 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 64 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12876-9 | HIV 1 p53 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 53 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12877-7 | Borrelia burgdorferi 47kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 47 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12878-5 | Borrelia burgdorferi 29kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 29 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12879-3 | Borrelia burgdorferi 25kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 25 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12880-1 | Borrelia burgdorferi 58kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 58 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12881-9 | Borrelia burgdorferi 47kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 47 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12882-7 | Borrelia burgdorferi 29kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 29 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12883-5 | Borrelia burgdorferi 18kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 18 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12884-3 | Borrelia burgdorferi 39kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 39 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12885-0 | Borrelia burgdorferi 88kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 88 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12886-8 | Borrelia burgdorferi 66kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 66 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12887-6 | Borrelia burgdorferi 41kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 41 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12888-4 | Borrelia burgdorferi 25kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 25 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12889-2 | Borrelia burgdorferi 30kD Ab [Presence] in Body fluid by Immunoblot | Borrelia burgdorferi 30 kDa antibody | Body fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 12890-0 | Borrelia burgdorferi 45kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 45-kD antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12891-8 | Borrelia burgdorferi 41kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 41 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12892-6 | Borrelia burgdorferi 30kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 30 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12893-4 | HIV 1 gp105 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 glycoprotein 105 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12894-2 | HIV 1 p68 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 68 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12895-9 | HIV 1 p58 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 58 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 12896-7 | Borrelia burgdorferi 58kD Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi 58 kDa antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 13196-1 | Ehrlichia sp IgG Ab [Presence] in Serum | Ehrlichia IgG | Serum specimen | Threshold | Ordinal value | – |
| 13197-9 | Ehrlichia sp IgM Ab [Presence] in Serum | Ehrlichia IgM | Serum specimen | Threshold | Ordinal value | – |
| 13202-7 | Borrelia burgdorferi IgG Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 13203-5 | Borrelia burgdorferi IgM Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 13206-8 | Borrelia burgdorferi IgG Ab [Presence] in Synovial fluid by Immunoblot | Borrelia burgdorferi IgG | Synovial fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 13207-6 | Borrelia burgdorferi IgM Ab [Presence] in Synovial fluid by Immunoblot | Borrelia burgdorferi IgM | Synovial fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 13248-0 | Hepatitis D virus Ab [Presence] in Serum | Hepatitis D virus antibody | Serum specimen | Threshold | Ordinal value | – |
| 13253-0 | Legionella non-pneumophila Ab [Presence] in Serum | Legionella non-pneumophila antibody | Serum specimen | Threshold | Ordinal value | – |
| 13273-8 | Sporothrix schenckii Ab [Presence] in Serum | Sporothrix schenkii antibody | Serum specimen | Threshold | Ordinal value | – |
| 13284-5 | Salmonella typhi H D Ab [Presence] in Serum | Salmonella Typhi group D, H antibody | Serum specimen | Threshold | Ordinal value | – |
| 13285-2 | Salmonella typhi O D Ab [Presence] in Serum | Salmonella Typhi group D, O antibody | Serum specimen | Threshold | Ordinal value | – |
| 13294-4 | Hepatitis E virus Ab [Presence] in Serum | Hepatitis E virus antibody | Serum specimen | Threshold | Ordinal value | – |
| 13321-5 | Human papilloma virus IgG Ab [Presence] in Serum | Human papilloma virus IgG | Serum specimen | Threshold | Ordinal value | – |
| 13322-3 | Human papilloma virus IgM Ab [Presence] in Serum | Human papilloma virus IgM | Serum specimen | Threshold | Ordinal value | – |
| 13327-2 | Parainfluenza virus Ag [Presence] in Specimen by Immunofluorescence | Parainfluenza virus antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13328-0 | Measles virus Ag [Presence] in Serum or Plasma by Immunofluorescence | Measles morbillivirus Ag | Serum or plasma specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13916-2 | Bordetella parapertussis Ag [Presence] in Specimen by Immunofluorescence | Bordetella parapertussis antigen | Specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 13920-4 | HIV 2 p41 Ab [Presence] in Serum by Immunoblot | Human immunodeficiency virus 2 protein 41 antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 13922-0 | Trichinella spiralis IgA Ab [Presence] in Serum by Immunoassay | Trichinella spiralis IgA | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 13923-8 | Trichinella spiralis IgM Ab [Presence] in Serum by Immunoassay | Trichinella spiralis IgM | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 13947-7 | Coccidioides immitis IgG Ab [Presence] in Serum by Immunoassay | Coccidioides immitis IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 13948-5 | Coccidioides immitis IgM Ab [Presence] in Serum by Immunoassay | Coccidioides immitis IgM | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 13949-3 | Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay | Cytomegalovirus IgG | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 13950-1 | Hepatitis A virus IgM Ab [Presence] in Serum or Plasma by Immunoassay | Hepatitis A virus IgM | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 13951-9 | Hepatitis A virus Ab [Presence] in Serum by Immunoassay | Hepatitis A virus antibody | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 13952-7 | Hepatitis B virus core Ab [Presence] in Serum or Plasma by Immunoassay | Hepatitis B core antigen antibody | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 13953-5 | Hepatitis B virus e Ab [Presence] in Serum or Plasma by Immunoassay | Hepatitis B e antigen antibody | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 13954-3 | Hepatitis B virus e Ag [Presence] in Serum or Plasma by Immunoassay | Hepatitis B virus e protein antigen | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 13955-0 | Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay | Hepatitis C virus antibody | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 14092-1 | HIV 1 Ab [Presence] in Serum by Immunofluorescence | Human immunodeficiency virus 1 antibody | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14205-9 | Coccidioides immitis Ag [Presence] in Isolate by Immune diffusion (ID) | Coccidioides immitis antigen | Microbial isolate | Threshold | Ordinal value | Immunodiffusion |
| 14209-1 | Francisella tularensis IgA Ab [Presence] in Serum | Francisella tularensis IgA | Serum specimen | Threshold | Ordinal value | – |
| 14210-9 | Giardia lamblia Ag [Presence] in Stool by Immunofluorescence | Giardia lamblia antigen | Stool specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14211-7 | Hepatitis E virus IgG Ab [Presence] in Serum | Hepatitis E virus IgG | Serum specimen | Threshold | Ordinal value | – |
| 14212-5 | Hepatitis E virus IgM Ab [Presence] in Serum | Hepatitis E virus IgM | Serum specimen | Threshold | Ordinal value | – |
| 14215-8 | HTLV I g46 Ab [Presence] in Serum | Human T-lymphotropic virus 1 glycoprotein 46 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14217-4 | HTLV I p19 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 19 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14218-2 | HTLV I p24 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 24 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14219-0 | HTLV I p26 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 26 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14220-8 | HTLV I p28 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 28 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14221-6 | HTLV I p32 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 32 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14222-4 | HTLV I p36 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 36 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14223-2 | HTLV I p53 Ab [Presence] in Serum | Human T-lymphotropic virus 1 protein 53 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14224-0 | HTLV I rgp21 Ab [Presence] in Serum | Human T-lymphotropic virus 1 recombinant glycoprotein 21 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14225-7 | HTLV II g46 Ab [Presence] in Serum | Human T-lymphotropic virus 2 recombinant glycoprotein 46 antibody | Serum specimen | Threshold | Ordinal value | – |
| 14321-4 | Haemophilus influenzae B Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Haemophilus influenzae type b antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14322-2 | Streptococcus pneumoniae Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Streptococcus pneumoniae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14323-0 | Streptococcus agalactiae Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Streptococcus agalactiae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14324-8 | Escherichia coli K1 Ag [Presence] in Cerebrospinal Fluid by Latex agglutination | Escherichia coli capsular polysaccharide K1 antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Latex agglutination test |
| 14468-3 | Chlamydia trachomatis Ag [Presence] in Blood by Immunoassay | Chlamydia trachomatis antigen | Blood specimen | Threshold | Ordinal value | Immunoassay technique |
| 14469-1 | Chlamydia trachomatis Ag [Presence] in Cerebrospinal Fluid by Immunoassay | Chlamydia trachomatis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 14470-9 | Chlamydia trachomatis Ag [Presence] in Cervix by Immunoassay | Chlamydia trachomatis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunoassay technique |
| 14471-7 | Chlamydia trachomatis Ag [Presence] in Vaginal fluid by Immunoassay | Chlamydia trachomatis antigen | Specimen from vagina | Threshold | Ordinal value | Immunoassay technique |
| 14472-5 | Chlamydia trachomatis Ag [Presence] in Urethra by Immunoassay | Chlamydia trachomatis antigen | Specimen from urethra | Threshold | Ordinal value | Immunoassay technique |
| 14474-1 | Chlamydia trachomatis Ag [Presence] in Urine sediment by Immunoassay | Chlamydia trachomatis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunoassay technique |
| 14499-8 | Human papilloma virus Ag [Presence] in Cervix | Human papillomavirus antigen | Specimen from uterine cervix | Threshold | Ordinal value | – |
| 14500-3 | Human papilloma virus Ag [Presence] in Vaginal fluid | Human papillomavirus antigen | Specimen from vagina | Threshold | Ordinal value | – |
| 14501-1 | Human papilloma virus Ag [Presence] in Penis | Human papillomavirus antigen | Specimen from penis | Threshold | Ordinal value | – |
| 14502-9 | Human papilloma virus Ag [Presence] in Urethra | Human papillomavirus antigen | Specimen from urethra | Threshold | Ordinal value | – |
| 14507-8 | Chlamydia trachomatis Ag [Presence] in Blood by Immunofluorescence | Chlamydia trachomatis antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14508-6 | Chlamydia trachomatis Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14509-4 | Chlamydia trachomatis Ag [Presence] in Cervix by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14510-2 | Chlamydia trachomatis Ag [Presence] in Vaginal fluid by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14511-0 | Chlamydia trachomatis Ag [Presence] in Urethra by Immunofluorescence | Chlamydia trachomatis antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14513-6 | Chlamydia trachomatis Ag [Presence] in Urine sediment by Immunofluorescence | Chlamydia trachomatis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14514-4 | Pneumocystis jirovecii Ag [Presence] in Blood by Immunofluorescence | Pneumocystis jirovecii antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14515-1 | Pneumocystis jirovecii Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Pneumocystis jirovecii antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14516-9 | Pneumocystis jirovecii Ag [Presence] in Semen by Immunofluorescence | Pneumocystis jirovecii antigen | Semen sample | Threshold | Ordinal value | Immunofluorescence technique |
| 14517-7 | Pneumocystis jirovecii Ag [Presence] in Stool by Immunofluorescence | Pneumocystis jirovecii antigen | Stool specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14518-5 | Pneumocystis jirovecii Ag [Presence] in Throat by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14519-3 | Pneumocystis jirovecii Ag [Presence] in Eye by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14520-1 | Pneumocystis jirovecii Ag [Presence] in Nose by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14521-9 | Pneumocystis jirovecii Ag [Presence] in Urine by Immunofluorescence | Pneumocystis jirovecii antigen | Urine specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14522-7 | Pneumocystis jirovecii Ag [Presence] in Bronchial specimen by Immunofluorescence | Pneumocystis jirovecii antigen | Specimen from bronchus | Threshold | Ordinal value | Immunofluorescence technique |
| 14523-5 | Rubella virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Rubella virus antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14524-3 | Rubella virus Ag [Presence] in Throat by Immunofluorescence | Rubella virus antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14525-0 | Rubella virus Ag [Presence] in Skin by Immunofluorescence | Rubella virus antigen | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14526-8 | Rubella virus Ag [Presence] in Eye by Immunofluorescence | Rubella virus antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14527-6 | Rubella virus Ag [Presence] in Nose by Immunofluorescence | Rubella virus antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14528-4 | Rubella virus Ag [Presence] in Sputum by Immunofluorescence | Rubella virus antigen | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14529-2 | Rubella virus Ag [Presence] in Cervix by Immunofluorescence | Rubella virus antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14530-0 | Rubella virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Rubella virus antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14531-8 | Rubella virus Ag [Presence] in Urine sediment by Immunofluorescence | Rubella virus antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14532-6 | Rubella virus Ag [Presence] in Penis by Immunofluorescence | Rubella virus antigen | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14533-4 | Rubella virus Ag [Presence] in Urethra by Immunofluorescence | Rubella virus antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14534-2 | Measles virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Measles morbillivirus Ag | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14535-9 | Measles virus Ag [Presence] in Throat by Immunofluorescence | Measles morbillivirus Ag | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14536-7 | Measles virus Ag [Presence] in Skin by Immunofluorescence | Measles morbillivirus Ag | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14537-5 | Measles virus Ag [Presence] in Eye by Immunofluorescence | Measles morbillivirus Ag | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14538-3 | Measles virus Ag [Presence] in Nose by Immunofluorescence | Measles morbillivirus Ag | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14539-1 | Measles virus Ag [Presence] in Sputum by Immunofluorescence | Measles morbillivirus Ag | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14540-9 | Measles virus Ag [Presence] in Cervix by Immunofluorescence | Measles morbillivirus Ag | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14541-7 | Measles virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Measles morbillivirus Ag | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14542-5 | Measles virus Ag [Presence] in Urine sediment by Immunofluorescence | Measles morbillivirus Ag | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14543-3 | Measles virus Ag [Presence] in Penis by Immunofluorescence | Measles morbillivirus Ag | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14544-1 | Measles virus Ag [Presence] in Urethra by Immunofluorescence | Measles morbillivirus Ag | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 14545-8 | Mumps virus Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14546-6 | Mumps virus Ag [Presence] in Throat by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from throat | Threshold | Ordinal value | Immunofluorescence technique |
| 14547-4 | Mumps virus Ag [Presence] in Skin by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from skin | Threshold | Ordinal value | Immunofluorescence technique |
| 14548-2 | Mumps virus Ag [Presence] in Eye by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from eye | Threshold | Ordinal value | Immunofluorescence technique |
| 14549-0 | Mumps virus Ag [Presence] in Nose by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from nose | Threshold | Ordinal value | Immunofluorescence technique |
| 14550-8 | Mumps virus Ag [Presence] in Sputum by Immunofluorescence | Orthorubulavirus parotitidis antigen | Sputum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14551-6 | Mumps virus Ag [Presence] in Cervix by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from uterine cervix | Threshold | Ordinal value | Immunofluorescence technique |
| 14552-4 | Mumps virus Ag [Presence] in Vaginal fluid by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from vagina | Threshold | Ordinal value | Immunofluorescence technique |
| 14553-2 | Mumps virus Ag [Presence] in Urine sediment by Immunofluorescence | Orthorubulavirus parotitidis antigen | Urine sediment specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 14554-0 | Mumps virus Ag [Presence] in Penis by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from penis | Threshold | Ordinal value | Immunofluorescence technique |
| 14555-7 | Mumps virus Ag [Presence] in Urethra by Immunofluorescence | Orthorubulavirus parotitidis antigen | Specimen from urethra | Threshold | Ordinal value | Immunofluorescence technique |
| 15151-4 | Aspergillus fumigatus 3 Ab [Presence] in Serum by Immune diffusion (ID) | Aspergillus fumigatus serotype 3 antibody | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 15209-0 | Saccharomonospora viridis Ab [Presence] in Serum by Immune diffusion (ID) | Saccharomonospora viridis antibody | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 15377-5 | Cytomegalovirus Ab [Presence] in Serum by Latex agglutination | Cytomegalovirus antibody | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 15379-1 | Haemophilus influenzae B Ag [Presence] in Urine | Haemophilus influenzae type b antigen | Urine specimen | Threshold | Ordinal value | – |
| 15389-0 | Parainfluenza virus 1 IgG Ab [Presence] in Serum | Parainfluenza virus 1 IgG | Serum specimen | Threshold | Ordinal value | – |
| 15390-8 | Parainfluenza virus 1 IgM Ab [Presence] in Serum | Parainfluenza virus 1 IgM | Serum specimen | Threshold | Ordinal value | – |
| 15392-4 | Parainfluenza virus 2 IgG Ab [Presence] in Serum | Parainfluenza virus 2 IgG | Serum specimen | Threshold | Ordinal value | – |
| 15394-0 | Parainfluenza virus 3 IgG Ab [Presence] in Serum | Parainfluenza virus 3 IgG | Serum specimen | Threshold | Ordinal value | – |
| 15395-7 | Parainfluenza virus 3 IgM Ab [Presence] in Serum | Parainfluenza virus 3 IgM | Serum specimen | Threshold | Ordinal value | – |
| 15410-4 | Varicella zoster virus IgG Ab [Presence] in Serum by Immunoassay | Varicellovirus humanalpha3 IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 15444-3 | Influenza virus A Ab [Presence] in Serum by Immune diffusion (ID) | Influenza A virus antibody | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 16125-7 | Helicobacter pylori IgA Ab [Presence] in Serum | Helicobacter pylori IgA | Serum specimen | Threshold | Ordinal value | – |
| 16126-5 | Helicobacter pylori IgG Ab [Presence] in Serum | Helicobacter pylori IgG | Serum specimen | Threshold | Ordinal value | – |
| 16127-3 | Helicobacter pylori IgM Ab [Presence] in Serum | Helicobacter pylori IgM | Serum specimen | Threshold | Ordinal value | – |
| 16128-1 | Hepatitis C virus Ab [Presence] in Serum | Hepatitis C virus antibody | Serum specimen | Threshold | Ordinal value | – |
| 16129-9 | Hepatitis C virus IgG Ab [Presence] in Serum | Hepatitis C virus IgG | Serum specimen | Threshold | Ordinal value | – |
| 16174-5 | Bartonella henselae IgG Ab [Presence] in Cerebrospinal Fluid | Bartonella henselae IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16175-2 | Bartonella henselae IgM Ab [Presence] in Cerebrospinal Fluid | Bartonella henselae IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16415-2 | Aspergillus flavus Ab [Presence] in Cerebrospinal Fluid | Aspergillus flavus antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16470-7 | Blastomyces dermatitidis Ab [Presence] in Serum by Complement fixation | Blastomyces dermatitidis antibody | Serum specimen | Threshold | Ordinal value | Complement fixation |
| 16475-6 | Borrelia burgdorferi Ab [Presence] in Cerebrospinal Fluid by Immunoassay | Borrelia burgdorferi antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 16476-4 | Borrelia burgdorferi Ab [Presence] in Body fluid by Immunoassay | Borrelia burgdorferi antibody | Body fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 16477-2 | Borrelia burgdorferi Ab [Presence] in Body fluid | Borrelia burgdorferi antibody | Body fluid specimen | Threshold | Ordinal value | – |
| 16478-0 | Borrelia burgdorferi IgA Ab [Presence] in Serum by Immunoassay | Borrelia burgdorferi IgA | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 16479-8 | Borrelia burgdorferi IgA Ab [Presence] in Cerebrospinal Fluid by Immunoassay | Borrelia burgdorferi IgA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoassay technique |
| 16480-6 | Borrelia burgdorferi IgG Ab [Presence] in Serum or Plasma by Immunoassay | Borrelia burgdorferi IgG | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 16539-9 | Candida sp Ag [Presence] in Serum | Candida antigen | Serum specimen | Threshold | Ordinal value | – |
| 16593-6 | Chlamydia sp Ag [Presence] in Urine | Chlamydia antigen | Urine specimen | Threshold | Ordinal value | – |
| 16692-6 | Cryptococcus sp Ag [Presence] in Body fluid | Cryptococcus antigen | Body fluid specimen | Threshold | Ordinal value | – |
| 16693-4 | Cryptococcus sp Ag [Presence] in Urine | Cryptococcus antigen | Urine specimen | Threshold | Ordinal value | – |
| 16717-1 | Cytomegalovirus Ag [Presence] in Urine by Immunoassay | Cytomegalovirus antigen | Urine specimen | Threshold | Ordinal value | Immunoassay technique |
| 16718-9 | Cytomegalovirus Ag [Presence] in Blood | Cytomegalovirus antigen | Blood specimen | Threshold | Ordinal value | – |
| 16740-3 | Dengue virus Ab [Presence] in Serum | Dengue virus antibody | Serum specimen | Threshold | Ordinal value | – |
| 16817-9 | Entamoeba histolytica Ab [Presence] in Serum by Immune diffusion (ID) | Entamoeba histolytica antibody | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 16824-5 | Epstein Barr virus nuclear Ab [Presence] in Cerebrospinal Fluid | Epstein-Barr virus nuclear antigen antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16825-2 | Epstein Barr virus nuclear IgG Ab [Presence] in Body fluid | Epstein Barr virus nuclear IgG | Body fluid specimen | Threshold | Ordinal value | – |
| 16827-8 | Epstein Barr virus capsid IgG Ab [Presence] in Cerebrospinal Fluid | Epstein Barr virus capsid IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16833-6 | Escherichia coli K1 Ag [Presence] in Specimen by Immunoassay | Escherichia coli capsular polysaccharide K1 antigen | Specimen | Threshold | Ordinal value | Immunoassay technique |
| 16834-4 | Escherichia coli K1 Ag [Presence] in Specimen by Latex agglutination | Escherichia coli capsular polysaccharide K1 antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 16876-5 | Francisella tularensis IgA Ab [Presence] in Serum by Latex agglutination | Francisella tularensis IgA | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 16877-3 | Francisella tularensis IgG Ab [Presence] in Serum by Latex agglutination | Francisella tularensis IgG | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 16879-9 | Francisella tularensis Ag [Presence] in Serum by Immunofluorescence | Francisella tularensis antigen | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 16898-9 | Giardia lamblia 65 Ag [Presence] in Stool | Giardia lamblia 65 Ag | Stool specimen | Threshold | Ordinal value | – |
| 16899-7 | Giardia lamblia Ag [Presence] in Specimen | Giardia lamblia antigen | Specimen | Threshold | Ordinal value | – |
| 16925-0 | Haemophilus influenzae A Ag [Presence] in Urine | Haemophilus influenzae type a antigen | Urine specimen | Threshold | Ordinal value | – |
| 16926-8 | Haemophilus influenzae A Ag [Presence] in Cerebrospinal Fluid | Haemophilus influenzae type a antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16933-4 | Hepatitis B virus core Ab [Presence] in Serum | Hepatitis B core antigen antibody | Serum specimen | Threshold | Ordinal value | – |
| 16942-5 | Herpes simplex virus Ab [Presence] in Serum by Immunoblot | Human herpes simplex virus antibody | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 16945-8 | Herpes simplex virus Ag [Presence] in Specimen | Human herpes simplex virus antigen | Specimen | Threshold | Ordinal value | – |
| 16947-4 | Herpes simplex virus 1 Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Human alphaherpesvirus 1 antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 16954-0 | Herpes simplex virus 2 Ab [Presence] in Serum | Human alphaherpesvirus 2 antibody | Serum specimen | Threshold | Ordinal value | – |
| 16955-7 | Herpes simplex virus 2 IgG Ab [Presence] in Serum by Immunoblot | Human alphaherpesvirus 2 IgG | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 16970-6 | Histoplasma capsulatum Ab [Presence] in Serum by Complement fixation | Histoplasma capsulatum antibody | Serum specimen | Threshold | Ordinal value | Complement fixation |
| 16971-4 | Histoplasma capsulatum IgA Ab [Presence] in Serum by Immune diffusion (ID) | Histoplasma capsulatum IgA | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 16972-2 | Histoplasma capsulatum IgE Ab [Presence] in Serum by Immune diffusion (ID) | Histoplasma capsulatum IgE | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 16973-0 | Histoplasma capsulatum IgM Ab [Presence] in Serum by Immune diffusion (ID) | Histoplasma capsulatum IgM | Serum specimen | Threshold | Ordinal value | Immunodiffusion |
| 16974-8 | HIV 1 Ab [Presence] in Cerebrospinal Fluid | Human immunodeficiency virus 1 antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 16975-5 | HIV 1 IgG Ab [Presence] in Serum | HIV 1 IgG | Serum specimen | Threshold | Ordinal value | – |
| 16977-1 | HIV 1 Ag [Presence] in Cerebrospinal Fluid | Human immunodeficiency virus 1 antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17053-0 | Legionella longbeachae 1 IgG Ab [Presence] in Serum | Legionella longbeachae 1 IgG | Serum specimen | Threshold | Ordinal value | – |
| 17054-8 | Legionella longbeachae 1 IgM Ab [Presence] in Serum | Legionella longbeachae 1 IgM | Serum specimen | Threshold | Ordinal value | – |
| 17055-5 | Legionella longbeachae 2 IgG Ab [Presence] in Serum | Legionella longbeachae 2 IgG | Serum specimen | Threshold | Ordinal value | – |
| 17057-1 | Legionella pneumophila Ag [Presence] in Specimen | Legionella pneumophila antigen | Specimen | Threshold | Ordinal value | – |
| 17058-9 | Legionella pneumophila Ag [Presence] in Urine by Latex agglutination | Legionella pneumophila antigen | Urine specimen | Threshold | Ordinal value | Latex agglutination test |
| 17059-7 | Legionella pneumophila Ag [Presence] in Urine by Immunofluorescence | Legionella pneumophila antigen | Urine specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17071-2 | Legionella pneumophila 7 Ab [Presence] in Serum | Legionella pneumophila serogroup 7 antibody | Serum specimen | Threshold | Ordinal value | – |
| 17072-0 | Legionella pneumophila 8 Ab [Presence] in Serum | Legionella pneumophila serogroup 8 antibody | Serum specimen | Threshold | Ordinal value | – |
| 17073-8 | Legionella pneumophila 9 Ab [Presence] in Serum | Legionella pneumophila serogroup 9 antibody | Serum specimen | Threshold | Ordinal value | – |
| 17299-9 | Mycoplasma fermentans Ab [Presence] in Serum | Mycoplasma fermentans antibody | Serum specimen | Threshold | Ordinal value | – |
| 17301-3 | Mycoplasma hominis Ab [Presence] in Serum | Mycoplasma hominis antibody | Serum specimen | Threshold | Ordinal value | – |
| 17302-1 | Mycoplasma pneumoniae Ab [Presence] in Serum | Mycoplasma pneumoniae antibody | Serum specimen | Threshold | Ordinal value | – |
| 17322-9 | Neisseria meningitidis Ab [Presence] in Serum | Neisseria meningitidis antibody | Serum specimen | Threshold | Ordinal value | – |
| 17323-7 | Neisseria meningitidis Ag [Presence] in Urine | Neisseria meningitidis antigen | Urine specimen | Threshold | Ordinal value | – |
| 17326-0 | Neisseria meningitidis serogroup A Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Neisseria meningitidis serogroup A antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17328-6 | Neisseria meningitidis serogroup B Ag [Presence] in Urine by Latex agglutination | Neisseria meningitidis serogroup B antigen | Urine specimen | Threshold | Ordinal value | Latex agglutination test |
| 17329-4 | Neisseria meningitidis serogroup C Ag [Presence] in Cerebrospinal Fluid by Immunofluorescence | Neisseria meningitidis serogroup C antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17330-2 | Neisseria meningitidis serogroup Y Ag [Presence] in Cerebrospinal Fluid | Neisseria meningitidis serogroup Y antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17333-6 | Neisseria meningitidis serogroup w135 Ag [Presence] in Serum or Plasma by Latex agglutination | Neisseria meningitidis serogroup W antigen | Serum or plasma specimen | Threshold | Ordinal value | Latex agglutination test |
| 17398-9 | Human papilloma virus 11 Ag [Presence] in Specimen | Human papilloma virus 11 Ag | Specimen | Threshold | Ordinal value | – |
| 17399-7 | Human papilloma virus 16 Ag [Presence] in Specimen | Human papillomavirus 16 antigen | Specimen | Threshold | Ordinal value | – |
| 17401-1 | Human papilloma virus 18 Ag [Presence] in Specimen | Human papillomavirus 18 antigen | Specimen | Threshold | Ordinal value | – |
| 17402-9 | Human papilloma virus 31 Ag [Presence] in Specimen | Human papilloma virus 31 Ag | Specimen | Threshold | Ordinal value | – |
| 17404-5 | Human papilloma virus 33 Ag [Presence] in Specimen | Human papilloma virus 33 Ag | Specimen | Threshold | Ordinal value | – |
| 17405-2 | Human papilloma virus 42 Ag [Presence] in Specimen | Human papilloma virus 42 Ag | Specimen | Threshold | Ordinal value | – |
| 17406-0 | Human papilloma virus 43 Ag [Presence] in Specimen | Human papilloma virus 43 Ag | Specimen | Threshold | Ordinal value | – |
| 17407-8 | Human papilloma virus 44 Ag [Presence] in Specimen | Human papilloma virus 44 Ag | Specimen | Threshold | Ordinal value | – |
| 17408-6 | Human papilloma virus 45 Ag [Presence] in Specimen | Human papilloma virus 45 Ag | Specimen | Threshold | Ordinal value | – |
| 17409-4 | Human papilloma virus 5 Ag [Presence] in Specimen | Human papilloma virus 5 Ag | Specimen | Threshold | Ordinal value | – |
| 17410-2 | Human papilloma virus 51 Ag [Presence] in Specimen | Human papilloma virus 51 Ag | Specimen | Threshold | Ordinal value | – |
| 17411-0 | Human papilloma virus 6 Ag [Presence] in Specimen | Human papilloma virus 6 Ag | Specimen | Threshold | Ordinal value | – |
| 17541-4 | Rickettsia typhi IgG Ab [Presence] in Serum by Immunoassay | Rickettsia typhi IgG | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 17544-8 | Bartonella quintana IgG Ab [Presence] in Cerebrospinal Fluid | Bartonella quintana IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17545-5 | Bartonella quintana IgM Ab [Presence] in Cerebrospinal Fluid | Bartonella quintana IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17547-1 | Rotavirus Ag [Presence] in Stool | Rotavirus antigen | Stool specimen | Threshold | Ordinal value | – |
| 17552-1 | Rubella virus IgM Ab [Presence] in Cerebrospinal Fluid | Rubella virus IgM | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 17562-0 | Salmonella sp Ab [Presence] in Serum | Salmonella antibody | Serum specimen | Threshold | Ordinal value | – |
| 17564-6 | Salmonella typhi O D Ab [Presence] in Serum by Latex agglutination | Salmonella Typhi group D, O antibody | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 17565-3 | Salmonella typhi H D Ab [Presence] in Serum by Latex agglutination | Salmonella Typhi group D, H antibody | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 17566-1 | Salmonella typhi O Ab [Presence] in Serum | Salmonella enterica subspecies enterica serovar Typhi O antibody | Serum specimen | Threshold | Ordinal value | – |
| 17652-9 | Streptococcus pneumoniae Ag [Presence] in Specimen by Latex agglutination | Streptococcus pneumoniae antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 17723-8 | Treponema pallidum Ab [Presence] in Serum by Immobilization | Treponema pallidum antibody | Serum specimen | Threshold | Ordinal value | – |
| 17726-1 | Treponema pallidum IgG Ab [Presence] in Serum by Immunofluorescence | Treponema pallidum IgG | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17729-5 | Treponema pallidum IgM Ab [Presence] in Serum by Immunofluorescence | Treponema pallidum IgM | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 17732-9 | Trichinella spiralis Ab [Presence] in Serum by Latex agglutination | Trichinella spiralis antibody | Serum specimen | Threshold | Ordinal value | Latex agglutination test |
| 17733-7 | Trichinella spiralis IgA Ab [Presence] in Serum | Trichinella spiralis IgA | Serum specimen | Threshold | Ordinal value | – |
| 17735-2 | Trichinella spiralis IgM Ab [Presence] in Serum | Trichinella spiralis IgM | Serum specimen | Threshold | Ordinal value | – |
| 17780-8 | Helicobacter pylori Ag [Presence] in Stool by Immunoassay | Helicobacter pylori Ag | Stool specimen | Threshold | Ordinal value | Immunoassay technique |
| 17850-9 | Herpes simplex virus 1 IgG Ab [Presence] in Serum | Human alphaherpesvirus 1 IgG | Serum specimen | Threshold | Ordinal value | – |
| 17851-7 | Herpes simplex virus 2 IgG Ab [Presence] in Serum | Human alphaherpesvirus 2 IgG | Serum specimen | Threshold | Ordinal value | – |
| 17859-0 | Helicobacter pylori IgG Ab [Presence] in Serum or Plasma by Immunoassay | Helicobacter pylori IgG | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 18197-4 | Blastomyces dermatitidis Ab [Presence] in Cerebrospinal Fluid | Blastomyces dermatitidis antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 18198-2 | Blastomyces dermatitidis IgE Ab [Presence] in Serum | Blastomyces dermatitidis IgE | Serum specimen | Threshold | Ordinal value | – |
| 18199-0 | Blastomyces dermatitidis IgG Ab [Presence] in Serum | Blastomyces dermatitidis IgG | Serum specimen | Threshold | Ordinal value | – |
| 18200-6 | Blastomyces dermatitidis IgM Ab [Presence] in Serum | Blastomyces dermatitidis IgM | Serum specimen | Threshold | Ordinal value | – |
| 18201-4 | Borrelia burgdorferi IgA Ab [Presence] in Serum by Immunoblot | Borrelia burgdorferi IgA | Serum specimen | Threshold | Ordinal value | Immunoblot assay |
| 18202-2 | Borrelia burgdorferi IgA Ab [Presence] in Cerebrospinal Fluid by Immunoblot | Borrelia burgdorferi IgA | Cerebrospinal fluid specimen | Threshold | Ordinal value | Immunoblot assay |
| 18395-4 | Aspergillus niger Ab [Presence] in Cerebrospinal Fluid | Aspergillus niger antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 18396-2 | HIV 1 p24 Ag [Presence] in Serum or Plasma by Immunoassay | Human immunodeficiency virus 1 protein 24 antigen | Serum or plasma specimen | Threshold | Ordinal value | Immunoassay technique |
| 18426-7 | Aspergillus sp Ab [Presence] in Cerebrospinal Fluid | Aspergillus antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 18427-5 | Epstein Barr virus early Ab [Presence] in Body fluid | Epstein-Barr virus early antigen antibody | Body fluid specimen | Threshold | Ordinal value | – |
| 18428-3 | Epstein Barr virus nuclear IgG Ab [Presence] in Cerebrospinal Fluid | Epstein Barr virus nuclear IgG | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 18468-9 | Aspergillus fumigatus Ab [Presence] in Cerebrospinal Fluid | Aspergillus fumigatus antibody | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 18481-2 | Streptococcus pyogenes Ag [Presence] in Throat | Streptococcus pyogenes antigen | Specimen from throat | Threshold | Ordinal value | – |
| 19106-4 | Herpes simplex virus IgG Ab [Presence] in Serum | Human herpes simplex virus IgG | Serum specimen | Threshold | Ordinal value | – |
| 19108-0 | Histoplasma capsulatum Ag [Presence] in Serum | Histoplasma capsulatum antigen | Serum specimen | Threshold | Ordinal value | – |
| 19109-8 | Histoplasma capsulatum Ag [Presence] in Specimen | Histoplasma capsulatum antigen | Specimen | Threshold | Ordinal value | – |
| 19162-7 | Varicella zoster virus IgG Ab [Presence] in Serum | Varicellovirus humanalpha3 IgG | Serum specimen | Threshold | Ordinal value | – |
| 19253-4 | Trichinella spiralis Ab [Presence] in Serum by Immunoassay | Trichinella spiralis antibody | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 19725-1 | Aspergillus flavus IgG Ab [Presence] in Serum | Aspergillus flavus IgG | Serum specimen | Threshold | Ordinal value | – |
| 19727-7 | Aspergillus niger IgG Ab [Presence] in Serum | Aspergillus niger IgG | Serum specimen | Threshold | Ordinal value | – |
| 19749-1 | Saccharopolyspora rectivirgula IgG Ab [Presence] in Serum | Saccharopolyspora rectivirgula IgG | Serum specimen | Threshold | Ordinal value | – |
| 19761-6 | Thermoactinomyces vulgaris IgG Ab [Presence] in Serum | Thermoactinomyces vulgaris IgG | Serum specimen | Threshold | Ordinal value | – |
| 20432-1 | Epstein Barr virus nuclear Ab [Presence] in Serum by Immunofluorescence | Epstein-Barr virus nuclear antigen antibody | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20449-5 | Borrelia burgdorferi Ab [Presence] in Serum by Immunoassay | Borrelia burgdorferi antibody | Serum specimen | Threshold | Ordinal value | Immunoassay technique |
| 20459-4 | Streptococcus agalactiae Ag [Presence] in Specimen by Latex agglutination | Streptococcus agalactiae antigen | Specimen | Threshold | Ordinal value | Latex agglutination test |
| 20479-2 | Measles virus IgG Ab [Presence] in Serum | Measles virus IgG | Serum specimen | Threshold | Ordinal value | – |
| 20488-3 | Streptococcus agalactiae Ag [Presence] in Cerebrospinal Fluid | Streptococcus agalactiae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 20489-1 | Streptococcus pneumoniae Ag [Presence] in Cerebrospinal Fluid | Streptococcus pneumoniae antigen | Cerebrospinal fluid specimen | Threshold | Ordinal value | – |
| 20575-7 | Hepatitis A virus Ab [Presence] in Serum | Hepatitis A virus antibody | Serum specimen | Threshold | Ordinal value | – |
| 20673-0 | Actinobacillus pleuropneumoniae Ab [Presence] in Serum | Actinobacillus pleuropneumoniae antibody | Serum specimen | Threshold | Ordinal value | – |
| 20703-5 | Border disease virus Ag [Presence] in Tissue by Immunofluorescence | Pestivirus ovis antigen | Tissue specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20704-3 | Border disease virus Ag [Presence] in Blood by Immunofluorescence | Pestivirus ovis antigen | Blood specimen | Threshold | Ordinal value | Immunofluorescence technique |
| 20741-5 | Canarypox virus Ag [Presence] in Serum by Immunofluorescence | Canarypox virus Ag | Serum specimen | Threshold | Ordinal value | Immunofluorescence technique |

… 2396 weitere; die vollständige Aufzählung steht im ValueSet.

