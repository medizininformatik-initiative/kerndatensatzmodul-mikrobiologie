Diese Seite ist das Review-Material für die Anforderungsfamilie **Titer** des [LOINC-Ontology-Vorschlags](loinc-ontology-valuesets.html): jede Regel der Familie, wie die LOINC Ontology 2026-10-21 sie auflöst, zerlegt in ihre Attribute, mit den Codes, die sie auswählt, und dem, was das Release 2026-03-21 → 2026-10-21 geändert hat. Die Methode ist unter [Wie die ValueSets gebaut werden](loinc-ontology-method.html) erklärt; alle Familien stehen unter [ValueSets je Anforderung](loinc-ontology-requests.html).

Mikrobiologische Anforderung: Titer (MII KDS Mikrobiologie 2027, Profil MII_PR_Mikrobio_Titer, ValueSet MII_VS_Mikrobio_Titer_Tests_LOINC = LOINC PROPERTY Titr in CLASS MICRO). Ontology: Property = 118590008 |Dilution factor expressed as titer|, Scale = Semi-quantitative, Component = der Antikörper (<< 312301006 |Infective organism antibody|). Titer von Autoantikörpern und Blutgruppenantikörpern teilen die Property und werden über die Component-Klausel ausgeschlossen.

### Titer — Erreger-Antikörpertiter

Titer eines Antikörpers gegen einen infektiösen Erreger (Serologie-Titer: Syphilis, Brucella, Widal, virale IgG-/IgM-Titer).

ValueSet [mii-vs-mikrobio-loinc-ontology-titer-infective-antibody](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-infective-antibody.html). Gebunden durch das abgeleitete Profil [mii-pr-mikrobio-loinc-ontology-titer](StructureDefinition-mii-pr-mikrobio-loinc-ontology-titer.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118590008 |Dilution factor expressed as titer (property) (qualifier value)|, 246093002 |Component (attribute)| = << 312301006 |Infective organism antibody (substance)|
```

| Attribut | Wert |
|---|---|
| Property | Dilution factor expressed as titer |
| Component | `<< Infective organism antibody` |

Die Regel wählt **1716** Konzepte aus (1716 mit LOINC-Code, 0 ohne). Release 2026-03-21 → 2026-10-21: **+4 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.html)).

#### Codes (1716)

| LOINC | Name | Component | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 100129-6 | Schistosoma sp Ab [Titer] in Serum by Hemagglutination | Schistosoma antibody | Serum specimen | Titer | Semi-quantitative value | Hemagglutination technique |
| 10350-7 | Herpes simplex virus IgM Ab [Titer] in Serum by Immunoassay | Human herpes simplex virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 10358-0 | Teichoate Ab [Titer] in Serum by Immune diffusion (ID) | Teichoic acid antibody | Serum specimen | Titer | Semi-quantitative value | Immunodiffusion |
| 104327-2 | Bacillus anthracis Ab [Titer] in Serum by Immunoassay --1st specimen | Bacillus anthracis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104328-0 | Bacillus anthracis Ab [Titer] in Serum by Immunoassay --2nd specimen | Bacillus anthracis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104331-4 | Bordetella pertussis IgA Ab [Titer] in Serum by Immunoassay --1st specimen | Bordetella pertussis IgA | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104332-2 | Bordetella pertussis IgA Ab [Titer] in Serum by Immunoassay --2nd specimen | Bordetella pertussis IgA | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104334-8 | Bordetella pertussis.pertussis toxin IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Bordetella pertussis toxin IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104335-5 | Bordetella pertussis.pertussis toxin IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Bordetella pertussis toxin IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104360-3 | Brucella sp Ab [Titer] in Serum by Immunoassay --1st specimen | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104361-1 | Brucella sp Ab [Titer] in Serum by Immunoassay --2nd specimen | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104364-5 | Chikungunya virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Chikungunya virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104366-0 | Chlamydophila psittaci Ab [Titer] in Serum by Immunoassay --1st specimen | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104368-6 | Chlamydophila psittaci Ab [Titer] in Serum by Immunoassay --2nd specimen | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104377-7 | Coxiella burnetii IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Coxiella burnetii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104378-5 | Coxiella burnetii IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Coxiella burnetii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104380-1 | Coxiella burnetii IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Coxiella burnetii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104381-9 | Coxiella burnetii IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Coxiella burnetii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104383-5 | Dengue virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Dengue virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104384-3 | Dengue virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Dengue virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104386-8 | Dengue virus IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Dengue virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104387-6 | Dengue virus IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Dengue virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104401-5 | Francisella tularensis Ab [Titer] in Serum by Immunoassay --1st specimen | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104402-3 | Francisella tularensis Ab [Titer] in Serum by Immunoassay --2nd specimen | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104406-4 | Hantavirus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hantavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104407-2 | Hantavirus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hantavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104409-8 | Hepatitis A virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hepatitis A virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104410-6 | Hepatitis A virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hepatitis A virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104412-2 | Hepatitis A virus IgM Ab [Titer] in Serum | Hepatitis A virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 104413-0 | Hepatitis E virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hepatitis E virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104414-8 | Hepatitis E virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hepatitis E virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104416-3 | Lassa virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Lassa mammarenavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104417-1 | Lassa virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Lassa mammarenavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104419-7 | Legionella sp Ab [Titer] in Serum Qualitative by Immunoassay --1st specimen | Legionella antibody | Serum specimen | Titer | Ordinal value | Immunoassay technique |
| 104422-1 | Leptospira sp Ab [Titer] in Serum by Immunoassay --2nd specimen | Leptospira antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104424-7 | Leptospira sp IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104425-4 | Leptospira sp IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104436-1 | Polio virus 1 Ab [Titer] in Serum by Immunoassay --1st specimen | Human poliovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104437-9 | Polio virus 1 Ab [Titer] in Serum by Immunoassay --2nd specimen | Human poliovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104439-5 | Polio virus 3 Ab [Titer] in Serum by Immunoassay --1st specimen | Human poliovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104440-3 | Polio virus 3 Ab [Titer] in Serum by Immunoassay --2nd specimen | Human poliovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104443-7 | Rickettsia prowazekii IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Rickettsia prowazekii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104444-5 | Rickettsia prowazekii IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Rickettsia prowazekii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104453-6 | Trichinella spiralis IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Trichinella spiralis IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104454-4 | Trichinella spiralis IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Trichinella spiralis IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104461-9 | Yellow fever virus IgG Ab [Titer] in Serum by Immunoassay | Yellow fever virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104463-5 | Yellow fever virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Yellow fever virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 10848-0 | Chlamydia sp IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10849-8 | Chlamydia sp IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10896-9 | Eastern equine encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10897-7 | Eastern equine encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Eastern equine encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10898-5 | Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10899-3 | Eastern equine encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10904-1 | La Crosse virus IgG Ab [Titer] in Serum by Immunofluorescence | La Crosse virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10905-8 | La Crosse virus IgM Ab [Titer] in Serum by Immunofluorescence | La Crosse virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10906-6 | Saint Louis encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10907-4 | Saint Louis encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11008-0 | Cytomegalovirus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Cytomegalovirus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11009-8 | Epstein Barr virus capsid IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Epstein Barr virus capsid IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11010-6 | Epstein Barr virus capsid IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Epstein Barr virus capsid IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11012-2 | Reovirus Ab [Titer] in Serum by Complement fixation | Reovirus antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 11254-0 | Chlamydophila pneumoniae Ab [Titer] in Serum | Chlamydia pneumoniae antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 11262-3 | Parainfluenza virus 3 IgG Ab [Titer] in Serum | Parainfluenza virus 3 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 11263-1 | Parainfluenza virus 3 IgM Ab [Titer] in Serum | Parainfluenza virus 3 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 12212-7 | Epstein Barr virus nuclear IgG Ab [Titer] in Serum by Immunofluorescence | Epstein Barr virus nuclear IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 12261-4 | Toxoplasma gondii IgG Ab [Titer] in Serum by Immunoassay | Toxoplasma gondii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 12262-2 | Toxoplasma gondii IgM Ab [Titer] in Serum by Immunoassay | Toxoplasma gondii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 13264-7 | Leptospira sp IgG Ab [Titer] in Serum | Leptospira IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 13265-4 | Leptospira sp IgM Ab [Titer] in Serum | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 13913-9 | Adenovirus Ab [Titer] in Serum by Immunofluorescence | Adenovirus antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 13915-4 | Adenovirus IgM Ab [Titer] in Serum | Adenovirus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 13917-0 | Coccidioides immitis Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Coccidioides immitis antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 13918-8 | Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14079-8 | Brucella canis IgG Ab [Titer] in Serum by Immunofluorescence | Brucella canis IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14080-6 | Brucella canis IgM Ab [Titer] in Serum by Immunofluorescence | Brucella canis IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14083-0 | Epstein Barr virus early Ab [Titer] in Serum by Immunofluorescence | Epstein-Barr virus early antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14086-3 | Herpes simplex virus 1 IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 1 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14087-1 | Herpes simplex virus 1 IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 1 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14089-7 | Herpes simplex virus 2 IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 2 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14090-5 | Herpes simplex virus 2 IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 2 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14094-7 | Trypanosoma cruzi IgG Ab [Titer] in Serum | Trypanosoma cruzi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 14128-3 | Rabies virus Ab [Titer] in Serum | Lyssavirus rabies antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14198-6 | Chlamydophila psittaci Ab [Titer] in Serum by Immunofluorescence | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14199-4 | Chlamydia trachomatis B IgA Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14200-0 | Chlamydia trachomatis B IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14201-8 | Chlamydia trachomatis B IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14202-6 | Chlamydia trachomatis C IgA Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14203-4 | Chlamydia trachomatis C IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14204-2 | Chlamydia trachomatis C IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14207-5 | Streptococcal DNAse B [Titer] in Serum | Deoxyribonuclease B antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14213-3 | Herpes simplex virus IgM Ab [Titer] in Serum by Immunofluorescence | Human herpes simplex virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14227-3 | Salmonella typhi H D Ab [Titer] in Serum | Salmonella Typhi group D, H antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 15380-9 | Leishmania brasilensis IgG Ab [Titer] in Serum | Leishmania braziliensis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15381-7 | Leishmania brasilensis IgM Ab [Titer] in Serum | Leishmania braziliensis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15382-5 | Leishmania donovani IgG Ab [Titer] in Serum | Leishmania donovani IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15383-3 | Leishmania donovani IgM Ab [Titer] in Serum | Leishmania donovani IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15384-1 | Leishmania mexicana IgG Ab [Titer] in Serum | Leishmania mexicana IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15385-8 | Leishmania mexicana IgM Ab [Titer] in Serum | Leishmania mexicana IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15386-6 | Leishmania tropica IgG Ab [Titer] in Serum | Leishmania tropica IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15387-4 | Leishmania tropica IgM Ab [Titer] in Serum | Leishmania tropica IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15391-6 | Parainfluenza virus 1 IgM Ab [Titer] in Serum | Parainfluenza virus 1 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15393-2 | Parainfluenza virus 2 IgM Ab [Titer] in Serum | Parainfluenza virus 2 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15397-3 | Trypanosoma cruzi IgM Ab [Titer] in Serum | Trypanosoma cruzi IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16117-4 | Babesia microti IgG Ab [Titer] in Serum | Babesia microti IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16118-2 | Babesia microti IgM Ab [Titer] in Serum | Babesia microti IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16119-0 | Brucella abortus IgG Ab [Titer] in Serum | Brucella abortus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16120-8 | Brucella abortus IgM Ab [Titer] in Serum | Brucella abortus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16121-6 | Colorado tick fever virus IgG Ab [Titer] in Serum | Colorado tick fever virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16122-4 | Colorado tick fever virus IgM Ab [Titer] in Serum | Colorado tick fever virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16123-2 | Cryptococcus sp Ab [Titer] in Cerebrospinal Fluid | Cryptococcus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 16124-0 | Cryptococcus sp Ab [Titer] in Serum | Cryptococcus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16133-1 | Legionella pneumophila IgM Ab [Titer] in Serum by Immunofluorescence | Legionella pneumophila IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16426-9 | Babesia sp IgM Ab [Titer] in Serum | Babesia IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16427-7 | Babesia microti Ab [Titer] in Serum | Babesia microti antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16533-2 | Helicobacter pylori Ab [Titer] in Serum | Helicobacter pylori antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16582-9 | Chlamydophila pneumoniae IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila pneumoniae IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16583-7 | Chlamydophila pneumoniae IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila pneumoniae IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16586-0 | Chlamydophila psittaci IgA Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila psittaci IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16587-8 | Chlamydophila psittaci IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila psittaci IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16594-4 | Chlamydia trachomatis IgA Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16682-7 | Coxsackievirus A2 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 16683-5 | Coxsackievirus A4 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A4 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 16736-1 | Dengue virus 1 Ab [Titer] in Serum | Dengue virus type 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16737-9 | Dengue virus 2 Ab [Titer] in Serum | Dengue virus type 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16738-7 | Dengue virus 3 Ab [Titer] in Serum | Dengue virus type 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16739-5 | Dengue virus 4 Ab [Titer] in Serum | Dengue virus type 4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16875-7 | Francisella tularensis Ab [Titer] in Serum | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17036-5 | La Crosse virus Ab [Titer] in Serum | La Crosse virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17037-3 | La Crosse virus Ab [Titer] in Cerebrospinal Fluid | La Crosse virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17038-1 | La Crosse virus IgG Ab [Titer] in Serum | La Crosse virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 17039-9 | La Crosse virus IgM Ab [Titer] in Serum | La Crosse virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 17060-5 | Legionella pneumophila 1 Ab [Titer] in Serum | Legionella pneumophila serogroup 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17062-1 | Legionella pneumophila 2 Ab [Titer] in Serum | Legionella pneumophila serogroup 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17064-7 | Legionella pneumophila 3 Ab [Titer] in Serum | Legionella pneumophila serogroup 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17066-2 | Legionella pneumophila 4 Ab [Titer] in Serum | Legionella pneumophila serogroup 4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17068-8 | Legionella pneumophila 5 Ab [Titer] in Serum | Legionella pneumophila serogroup 5 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17070-4 | Legionella pneumophila 6 Ab [Titer] in Serum | Legionella pneumophila serogroup 6 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17228-8 | Lymphocytic choriomeningitis virus Ab [Titer] in Cerebrospinal Fluid | Lymphocytic choriomeningitis virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17229-6 | Lymphocytic choriomeningitis virus IgM Ab [Titer] in Cerebrospinal Fluid | Lymphocytic choriomeningitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17300-5 | Mycoplasma hominis Ab [Titer] in Serum by Complement fixation | Mycoplasma hominis antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 17517-4 | Respiratory syncytial virus IgG Ab [Titer] in Cerebrospinal Fluid | Respiratory syncytial virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17518-2 | Respiratory syncytial virus IgG Ab [Titer] in Serum | Respiratory syncytial virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 17519-0 | Respiratory syncytial virus IgM Ab [Titer] in Cerebrospinal Fluid | Respiratory syncytial virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17769-1 | Western equine encephalitis virus Ab [Titer] in Cerebrospinal Fluid | Western equine encephalomyelitis virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17770-9 | Western equine encephalitis virus Ab [Titer] in Serum | Western equine encephalomyelitis virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 18397-0 | Polio virus 1 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 1 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 18398-8 | Polio virus 2 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 18399-6 | Polio virus 3 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 19053-8 | Brucella sp Ab [Titer] in Serum by Agglutination | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 20417-2 | Histoplasma capsulatum mycelial phase Ab [Titer] in Serum | Histoplasma capsulatum mycelial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 20418-0 | Histoplasma capsulatum yeast phase Ab [Titer] in Serum | Histoplasma capsulatum yeast antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 20490-9 | Epstein Barr virus capsid IgG Ab [Titer] in Serum | Epstein Barr virus capsid IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 20491-7 | Epstein Barr virus capsid IgM Ab [Titer] in Serum | Epstein Barr virus capsid IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 20573-2 | Histoplasma capsulatum mycelial phase Ab [Titer] in Serum by Complement fixation | Histoplasma capsulatum mycelial antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 20574-0 | Histoplasma capsulatum yeast phase Ab [Titer] in Serum by Complement fixation | Histoplasma capsulatum yeast antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 21053-4 | Adenovirus IgG Ab [Titer] in Serum | Adenovirus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 21121-9 | Borrelia hermsii IgG Ab [Titer] in Serum by Immunofluorescence | Borrelia hermsii IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21122-7 | Borrelia hermsii IgM Ab [Titer] in Serum by Immunofluorescence | Borrelia hermsii IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21237-3 | Cytomegalovirus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Cytomegalovirus IgM antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21259-7 | Entamoeba histolytica Ab [Titer] in Serum by Hemagglutination | Entamoeba histolytica antibody | Serum specimen | Titer | Semi-quantitative value | Hemagglutination technique |
| 21260-5 | Epstein Barr virus nuclear Ab [Titer] in Serum by Immunofluorescence | Epstein-Barr virus nuclear antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21300-9 | Giardia lamblia IgA Ab [Titer] in Serum by Immunofluorescence | Giardia lamblia IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21301-7 | Giardia lamblia IgM Ab [Titer] in Serum by Immunofluorescence | Giardia lamblia IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21322-3 | Hantavirus puumala IgG Ab [Titer] in Serum by Immunofluorescence | Puumala virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21323-1 | Hantavirus puumala IgM Ab [Titer] in Serum by Immunofluorescence | Puumala virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21326-4 | Herpes simplex virus 1 IgM Ab [Titer] in Serum | Human alphaherpesvirus 1 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21327-2 | Herpes simplex virus 2 IgM Ab [Titer] in Serum | Human alphaherpesvirus 2 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21331-4 | HIV 1 p24 Ab [Titer] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 24 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoblot assay |
| 21362-9 | Legionella pneumophila IgG Ab [Titer] in Serum by Immunofluorescence | Legionella pneumophila IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21401-5 | Mumps virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21402-3 | Mumps virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21465-0 | Plasmodium falciparum Ab [Titer] in Serum by Immunofluorescence | Plasmodium falciparum antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21466-8 | Plasmodium malariae Ab [Titer] in Serum by Immunofluorescence | Plasmodium malariae antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21467-6 | Plasmodium ovale Ab [Titer] in Serum by Immunofluorescence | Plasmodium ovale antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21468-4 | Plasmodium vivax Ab [Titer] in Serum by Immunofluorescence | Plasmodium vivax antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21489-0 | Rickettsia (Proteus OX19) Ab [Titer] in Serum by Latex agglutination | Proteus OX19 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21490-8 | Rickettsia (Proteus OX2) Ab [Titer] in Serum by Latex agglutination | Proteus OX2 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21491-6 | Rickettsia (Proteus OXK) Ab [Titer] in Serum by Latex agglutination | Proteus OX K antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21492-4 | Rickettsia conorii IgG Ab [Titer] in Serum | Rickettsia conorii IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 21493-2 | Rickettsia conorii IgM Ab [Titer] in Serum | Rickettsia conorii IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21494-0 | Rickettsia spotted fever group IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia spotted fever group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21495-7 | Rickettsia spotted fever group IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia spotted fever group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21496-5 | Rickettsia typhus group IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia typhus group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21497-3 | Rickettsia typhus group IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia typhus group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21498-1 | Orientia tsutsugamushi IgG Ab [Titer] in Serum | Orientia tsutsugamushi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 21500-4 | Measles virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Measles virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21501-2 | Measles virus IgG Ab [Titer] in Serum by Immunofluorescence | Measles virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21502-0 | Measles virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Measles virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21509-5 | Saint Louis encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21510-3 | Saint Louis encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21511-1 | Salmonella paratyphi A H Ab [Titer] in Serum by Agglutination | Salmonella Paratyphi A, H antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 21512-9 | Salmonella paratyphi A H Ab [Titer] in Serum by Immunofluorescence | Salmonella Paratyphi A, H antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21513-7 | Salmonella paratyphi B H Ab [Titer] in Serum by Agglutination | Salmonella enterica subspecies enterica serovar Paratyphi B H antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 21514-5 | Salmonella paratyphi B H Ab [Titer] in Serum by Immunofluorescence | Salmonella enterica subspecies enterica serovar Paratyphi B H antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21569-9 | Toxoplasma gondii IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Toxoplasma gondii IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21571-5 | Toxoplasma gondii IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Toxoplasma gondii IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21592-1 | Varicella zoster virus Ab [Titer] in Cerebrospinal Fluid | Varicellovirus humanalpha3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 21594-7 | Varicella zoster virus Ab [Titer] in Serum | Varicellovirus humanalpha3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 21595-4 | Varicella zoster virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Varicellovirus humanalpha3 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21596-2 | Varicella zoster virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Varicellovirus humanalpha3 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 22079-8 | Actinomyces sp Ab [Titer] in Serum | Actinomyces antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22080-6 | Adenovirus Ab [Titer] in Serum | Adenovirus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22081-4 | Afipia felis IgG Ab [Titer] in Serum | Afipia felis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22082-2 | Afipia felis IgM Ab [Titer] in Serum | Afipia felis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22087-1 | Aspergillus sp Ab [Titer] in Serum | Aspergillus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22106-9 | Babesia sp Ab [Titer] in Serum | Babesia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22107-7 | Babesia sp IgG Ab [Titer] in Serum | Babesia IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22110-1 | Bartonella henselae IgG Ab [Titer] in Serum | Bartonella henselae IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22111-9 | Bartonella henselae IgM Ab [Titer] in Serum | Bartonella henselae IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22112-7 | Blastomyces dermatitidis Ab [Titer] in Serum | Blastomyces dermatitidis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22116-8 | Bordetella pertussis Ab [Titer] in Serum | Bordetella pertussis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22117-6 | Bordetella pertussis Ab [Titer] in Specimen | Bordetella pertussis antibody | Specimen | Titer | Semi-quantitative value | – |
| 22122-6 | Borrelia burgdorferi Ab [Titer] in Serum | Borrelia burgdorferi antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22130-9 | Borrelia burgdorferi IgG Ab [Titer] in Serum | Borrelia burgdorferi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22137-4 | Borrelia burgdorferi IgM Ab [Titer] in Serum | Borrelia burgdorferi IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22138-2 | Borrelia hermsii IgG Ab [Titer] in Serum | Borrelia hermsii IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22139-0 | Borrelia hermsii IgM Ab [Titer] in Serum | Borrelia hermsii IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22150-7 | Brucella abortus Ab [Titer] in Serum | Brucella abortus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22152-3 | Brucella canis Ab [Titer] in Serum | Brucella canis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22154-9 | Brucella canis IgG Ab [Titer] in Serum | Brucella canis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22156-4 | Brucella canis IgM Ab [Titer] in Serum | Brucella canis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22157-2 | Brucella melitensis Ab [Titer] in Serum | Brucella melitensis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22159-8 | Brucella sp Ab [Titer] in Serum | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22160-6 | Brucella suis Ab [Titer] in Serum | Brucella suis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22171-3 | Chlamydophila pneumoniae IgG Ab [Titer] in Cerebrospinal Fluid | Chlamydophila pneumoniae IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22172-1 | Chlamydophila pneumoniae IgG Ab [Titer] in Serum | Chlamydophila pneumoniae IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22173-9 | Chlamydophila pneumoniae IgM Ab [Titer] in Cerebrospinal Fluid | Chlamydophila pneumoniae IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22174-7 | Chlamydophila pneumoniae IgM Ab [Titer] in Serum | Chlamydophila pneumoniae IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22176-2 | Chlamydophila psittaci Ab [Titer] in Serum | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22177-0 | Chlamydophila psittaci IgA Ab [Titer] in Cerebrospinal Fluid | Chlamydophila psittaci IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22178-8 | Chlamydophila psittaci IgA Ab [Titer] in Serum | Chlamydophila psittaci IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22179-6 | Chlamydophila psittaci IgG Ab [Titer] in Cerebrospinal Fluid | Chlamydophila psittaci IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22180-4 | Chlamydophila psittaci IgG Ab [Titer] in Serum | Chlamydophila psittaci IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22181-2 | Chlamydophila psittaci IgM Ab [Titer] in Serum | Chlamydophila psittaci IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22182-0 | Chlamydia sp Ab [Titer] in Serum | Chlamydia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22184-6 | Chlamydia sp IgG Ab [Titer] in Serum | Chlamydia IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22186-1 | Chlamydia sp IgM Ab [Titer] in Serum | Chlamydia IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22187-9 | Chlamydia trachomatis Ab [Titer] in Serum | Chlamydia trachomatis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22188-7 | Chlamydia trachomatis IgA Ab [Titer] in Cerebrospinal Fluid | Chlamydia trachomatis IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22189-5 | Chlamydia trachomatis IgA Ab [Titer] in Serum | Chlamydia trachomatis IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22191-1 | Chlamydia trachomatis IgG Ab [Titer] in Serum | Chlamydia trachomatis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22193-7 | Chlamydia trachomatis IgM Ab [Titer] in Serum | Chlamydia trachomatis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22194-5 | Chlamydia trachomatis B IgA Ab [Titer] in Serum | Chlamydia trachomatis B IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22195-2 | Chlamydia trachomatis B IgG Ab [Titer] in Serum | Chlamydia trachomatis B IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22196-0 | Chlamydia trachomatis B IgM Ab [Titer] in Serum | Chlamydia trachomatis B IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22197-8 | Chlamydia trachomatis C IgA Ab [Titer] in Serum | Chlamydia trachomatis C IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22198-6 | Chlamydia trachomatis C IgG Ab [Titer] in Serum | Chlamydia trachomatis C IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22199-4 | Chlamydia trachomatis C IgM Ab [Titer] in Serum | Chlamydia trachomatis C IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22207-5 | Coccidioides immitis Ab [Titer] in Cerebrospinal Fluid | Coccidioides immitis antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22208-3 | Coccidioides immitis Ab [Titer] in Serum | Coccidioides immitis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22211-7 | Coxiella burnetii Ab [Titer] in Serum | Coxiella burnetii antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22212-5 | Coxsackievirus A10 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A10 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22213-3 | Coxsackievirus A10 Ab [Titer] in Serum | Human coxsackievirus A10 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22214-1 | Coxsackievirus A16 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A16 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22215-8 | Coxsackievirus A16 Ab [Titer] in Serum | Human coxsackievirus A16 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22216-6 | Coxsackievirus A2 Ab [Titer] in Serum | Human coxsackievirus A2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22217-4 | Coxsackievirus A21 Ab [Titer] in Serum | Human coxsackievirus A21 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22218-2 | Coxsackievirus A4 Ab [Titer] in Serum | Human coxsackievirus A4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22219-0 | Coxsackievirus A7 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A7 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22220-8 | Coxsackievirus A7 Ab [Titer] in Serum | Human coxsackievirus A7 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22221-6 | Coxsackievirus A9 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A9 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22222-4 | Coxsackievirus A9 Ab [Titer] in Serum | Human coxsackievirus A9 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22225-7 | Coxsackievirus B1 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B1 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22226-5 | Coxsackievirus B1 Ab [Titer] in Serum | Human coxsackievirus B1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22227-3 | Coxsackievirus B2 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22228-1 | Coxsackievirus B2 Ab [Titer] in Serum | Human coxsackievirus B2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22229-9 | Coxsackievirus B3 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22230-7 | Coxsackievirus B3 Ab [Titer] in Serum | Human coxsackievirus B3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22231-5 | Coxsackievirus B4 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B4 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22232-3 | Coxsackievirus B4 Ab [Titer] in Serum | Human coxsackievirus B4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22233-1 | Coxsackievirus B5 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B5 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22234-9 | Coxsackievirus B5 Ab [Titer] in Serum | Human coxsackievirus B5 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22235-6 | Coxsackievirus B6 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B6 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22236-4 | Coxsackievirus B6 Ab [Titer] in Serum | Human coxsackievirus B6 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22237-2 | Cryptococcus neoformans Ab [Titer] in Serum | Cryptococcus neoformans antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22240-6 | Cytomegalovirus Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22241-4 | Cytomegalovirus Ab [Titer] in Serum or Plasma | Cytomegalovirus antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22245-5 | Cytomegalovirus IgG Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22246-3 | Cytomegalovirus IgG Ab [Titer] in Serum or Plasma | Cytomegalovirus IgG | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22248-9 | Cytomegalovirus IgM Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus IgM antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22249-7 | Cytomegalovirus IgM Ab [Titer] in Serum or Plasma | Cytomegalovirus IgM antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22257-0 | Eastern equine encephalitis virus Ab [Titer] in Serum | Eastern equine encephalitis virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22258-8 | Eastern equine encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22259-6 | Eastern equine encephalitis virus IgG Ab [Titer] in Serum | Eastern equine encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22260-4 | Eastern equine encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22261-2 | Eastern equine encephalitis virus IgM Ab [Titer] in Serum | Eastern equine encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22263-8 | Ebola virus Ab [Titer] in Serum | Orthoebolavirus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22266-1 | Echovirus 1 Ab [Titer] in Serum | Human echovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22267-9 | Echovirus 11 Ab [Titer] in Cerebrospinal Fluid | Human echovirus 11 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22268-7 | Echovirus 11 Ab [Titer] in Serum | Human echovirus 11 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22269-5 | Echovirus 14 Ab [Titer] in Serum | Human echovirus 14 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22271-1 | Echovirus 16 Ab [Titer] in Serum | Human echovirus 16 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22272-9 | Echovirus 18 Ab [Titer] in Serum | Human echovirus 18 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22273-7 | Echovirus 19 Ab [Titer] in Serum | Human echovirus 19 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22274-5 | Echovirus 3 Ab [Titer] in Serum | Human echovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22275-2 | Echovirus 30 Ab [Titer] in Cerebrospinal Fluid | Human echovirus 30 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22276-0 | Echovirus 4 Ab [Titer] in Cerebrospinal Fluid | Human echovirus 4 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22277-8 | Echovirus 4 Ab [Titer] in Serum | Human echovirus 4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22278-6 | Echovirus 6 Ab [Titer] in Serum | Human echovirus 6 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22279-4 | Echovirus 7 Ab [Titer] in Serum | Human echovirus 7 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22280-2 | Echovirus 9 Ab [Titer] in Cerebrospinal Fluid | Human echovirus 9 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22281-0 | Echovirus 9 Ab [Titer] in Serum | Human echovirus 9 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22282-8 | Echovirus Ab [Titer] in Serum | Human echovirus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22286-9 | Entamoeba histolytica Ab [Titer] in Serum | Entamoeba histolytica antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22290-1 | Epstein Barr virus capsid IgA Ab [Titer] in Serum | Epstein Barr virus capsid IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22291-9 | Epstein Barr virus capsid IgG Ab [Titer] in Cerebrospinal Fluid | Epstein Barr virus capsid IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22292-7 | Epstein Barr virus capsid IgM Ab [Titer] in Cerebrospinal Fluid | Epstein Barr virus capsid IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22294-3 | Epstein Barr virus early Ab [Titer] in Serum | Epstein-Barr virus early antigen antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22297-6 | Epstein Barr virus nuclear Ab [Titer] in Serum | Epstein-Barr virus nuclear antigen antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22298-4 | Epstein Barr virus nuclear IgG Ab [Titer] in Serum | Epstein Barr virus nuclear IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22304-0 | Giardia lamblia Ab [Titer] in Serum | Giardia lamblia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22305-7 | Giardia lamblia IgA Ab [Titer] in Serum | Giardia lamblia IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22306-5 | Giardia lamblia IgG Ab [Titer] in Serum | Giardia lamblia IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22307-3 | Giardia lamblia IgM Ab [Titer] in Serum | Giardia lamblia IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22308-1 | Hantavirus puumala IgG Ab [Titer] in Serum | Puumala virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22309-9 | Hantavirus puumala IgM Ab [Titer] in Serum | Puumala virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22333-9 | Herpes simplex virus 1 IgG Ab [Titer] in Cerebrospinal Fluid | Human alphaherpesvirus 1 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22334-7 | Herpes simplex virus 1 IgM Ab [Titer] in Cerebrospinal Fluid | Human alphaherpesvirus 1 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22337-0 | Herpes simplex virus 2 IgG Ab [Titer] in Cerebrospinal Fluid | Human alphaherpesvirus 2 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22338-8 | Herpes simplex virus 2 IgM Ab [Titer] in Cerebrospinal Fluid | Human alphaherpesvirus 2 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22340-4 | Herpes simplex virus Ab [Titer] in Cerebrospinal Fluid | Human herpes simplex virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22341-2 | Herpes simplex virus Ab [Titer] in Serum | Human herpes simplex virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22343-8 | Herpes simplex virus IgM Ab [Titer] in Serum | Human herpes simplex virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22347-9 | Histoplasma capsulatum Ab [Titer] in Serum | Histoplasma capsulatum antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22365-1 | Influenza virus A Ab [Titer] in Serum | Influenza A virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22367-7 | Influenza virus B Ab [Titer] in Serum | Influenza B virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22368-5 | Influenza virus C Ab [Titer] in Serum | Influenza C virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22373-5 | La Crosse virus IgG Ab [Titer] in Cerebrospinal Fluid | La Crosse virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22375-0 | La Crosse virus IgM Ab [Titer] in Cerebrospinal Fluid | La Crosse virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22378-4 | Lassa virus IgG Ab [Titer] in Serum | Lassa mammarenavirus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22380-0 | Lassa virus IgM Ab [Titer] in Serum | Lassa mammarenavirus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22381-8 | Legionella pneumophila 1 IgG Ab [Titer] in Serum | Legionella pneumophila 1 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22382-6 | Legionella pneumophila 1 IgM Ab [Titer] in Serum | Legionella pneumophila 1 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22383-4 | Legionella pneumophila 2 IgG Ab [Titer] in Serum | Legionella pneumophila 2 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22384-2 | Legionella pneumophila 2 IgM Ab [Titer] in Serum | Legionella pneumophila 2 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22385-9 | Legionella pneumophila 3 IgG Ab [Titer] in Serum | Legionella pneumophila 3 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22386-7 | Legionella pneumophila 3 IgM Ab [Titer] in Serum | Legionella pneumophila 3 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22387-5 | Legionella pneumophila 4 IgG Ab [Titer] in Serum | Legionella pneumophila 4 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22388-3 | Legionella pneumophila 4 IgM Ab [Titer] in Serum | Legionella pneumophila 4 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22389-1 | Legionella pneumophila 5 IgG Ab [Titer] in Serum | Legionella pneumophila 5 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22390-9 | Legionella pneumophila 5 IgM Ab [Titer] in Serum | Legionella pneumophila 5 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22391-7 | Legionella pneumophila 6 IgG Ab [Titer] in Serum | Legionella pneumophila 6 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22392-5 | Legionella pneumophila 6 IgM Ab [Titer] in Serum | Legionella pneumophila 6 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22393-3 | Legionella pneumophila 7 Ab [Titer] in Serum | Legionella pneumophila serogroup 7 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22394-1 | Legionella pneumophila 8 Ab [Titer] in Serum | Legionella pneumophila serogroup 8 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22395-8 | Legionella pneumophila 9 Ab [Titer] in Serum | Legionella pneumophila serogroup 9 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22396-6 | Legionella pneumophila Ab [Titer] in Serum | Legionella pneumophila antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22397-4 | Legionella pneumophila IgG Ab [Titer] in Serum | Legionella pneumophila IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22398-2 | Legionella pneumophila IgM Ab [Titer] in Serum | Legionella pneumophila IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22399-0 | Legionella sp Ab [Titer] in Serum | Legionella antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22406-3 | Listeria monocytogenes Ab [Titer] in Serum | Listeria monocytogenes antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22408-9 | Lymphocytic choriomeningitis virus Ab [Titer] in Serum | Lymphocytic choriomeningitis virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22409-7 | Lymphocytic choriomeningitis virus IgG Ab [Titer] in Cerebrospinal Fluid | Lymphocytic choriomeningitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22410-5 | Lymphocytic choriomeningitis virus IgG Ab [Titer] in Serum | Lymphocytic choriomeningitis virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22411-3 | Lymphocytic choriomeningitis virus IgM Ab [Titer] in Serum | Lymphocytic choriomeningitis virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22413-9 | Mumps virus Ab [Titer] in Cerebrospinal Fluid | Orthorubulavirus parotitidis antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22414-7 | Mumps virus Ab [Titer] in Serum | Orthorubulavirus parotitidis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22416-2 | Mumps virus IgG Ab [Titer] in Cerebrospinal Fluid | Orthorubulavirus parotitidis IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22417-0 | Mumps virus IgG Ab [Titer] in Serum | Orthorubulavirus parotitidis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22419-6 | Mumps virus IgM Ab [Titer] in Cerebrospinal Fluid | Orthorubulavirus parotitidis IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22420-4 | Mumps virus IgM Ab [Titer] in Serum | Orthorubulavirus parotitidis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22423-8 | Mycoplasma hominis Ab [Titer] in Serum | Mycoplasma hominis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22425-3 | Mycoplasma pneumoniae Ab [Titer] in Serum | Mycoplasma pneumoniae antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22426-1 | Mycoplasma pneumoniae IgG Ab [Titer] in Serum | Mycoplasma pneumoniae IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22427-9 | Mycoplasma pneumoniae IgM Ab [Titer] in Serum | Mycoplasma pneumoniae IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22430-3 | Neisseria gonorrhoeae Ab [Titer] in Serum | Neisseria gonorrhoeae antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22431-1 | Neisseria meningitidis serogroup Y Ab [Titer] in Specimen | Neisseria meningitidis group Y antibody | Specimen | Titer | Semi-quantitative value | – |
| 22435-2 | Paracoccidioides brasiliensis Ab [Titer] in Serum | Paracoccidioides brasiliensis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22436-0 | Paragonimus sp Ab [Titer] in Serum | Paragonimus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22437-8 | Parainfluenza virus 1 Ab [Titer] in Serum | Parainfluenza virus 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22438-6 | Parainfluenza virus 2 Ab [Titer] in Serum | Human parainfluenza virus 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22439-4 | Parainfluenza virus 3 Ab [Titer] in Serum | Parainfluenza 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22441-0 | Plasmodium falciparum Ab [Titer] in Serum | Plasmodium falciparum antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22442-8 | Plasmodium malariae Ab [Titer] in Serum | Plasmodium malariae antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22443-6 | Plasmodium ovale Ab [Titer] in Serum | Plasmodium ovale antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22444-4 | Plasmodium vivax Ab [Titer] in Serum | Plasmodium vivax antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22445-1 | Polio virus 1 Ab [Titer] in Cerebrospinal Fluid | Human poliovirus 1 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22446-9 | Polio virus 1 Ab [Titer] in Serum | Human poliovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22447-7 | Polio virus 2 Ab [Titer] in Cerebrospinal Fluid | Human poliovirus 2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22448-5 | Polio virus 2 Ab [Titer] in Serum | Human poliovirus 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22449-3 | Polio virus 3 Ab [Titer] in Cerebrospinal Fluid | Human poliovirus 3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22450-1 | Polio virus 3 Ab [Titer] in Serum | Human poliovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22465-9 | Reovirus Ab [Titer] in Serum | Reovirus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22466-7 | Respiratory syncytial virus Ab [Titer] in Serum | Respiratory syncytial virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22467-5 | Respiratory syncytial virus IgM Ab [Titer] in Serum | Respiratory syncytial virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22469-1 | Rickettsia (Proteus OX19) Ab [Titer] in Serum | Proteus OX19 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22471-7 | Rickettsia (Proteus OX2) Ab [Titer] in Serum | Proteus OX2 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22473-3 | Rickettsia (Proteus OXK) Ab [Titer] in Serum | Proteus OX K antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22475-8 | Rickettsia spotted fever group Ab [Titer] in Serum | Spotted fever group rickettsia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22476-6 | Rickettsia spotted fever group IgG Ab [Titer] in Cerebrospinal Fluid | Rickettsia spotted fever group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22477-4 | Rickettsia spotted fever group IgG Ab [Titer] in Serum | Rickettsia spotted fever group IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22478-2 | Rickettsia spotted fever group IgM Ab [Titer] in Cerebrospinal Fluid | Rickettsia spotted fever group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22479-0 | Rickettsia spotted fever group IgM Ab [Titer] in Serum | Rickettsia spotted fever group IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22480-8 | Rickettsia typhus group IgG Ab [Titer] in Cerebrospinal Fluid | Rickettsia typhus group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22481-6 | Rickettsia typhus group IgM Ab [Titer] in Cerebrospinal Fluid | Rickettsia typhus group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22482-4 | Rickettsia rickettsii IgG Ab [Titer] in Serum | Rickettsia rickettsii IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22483-2 | Rickettsia rickettsii IgM Ab [Titer] in Serum | Rickettsia rickettsii IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22484-0 | Rickettsia sp Ab [Titer] in Serum | Rickettsia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22485-7 | Orientia tsutsugamushi Ab [Titer] in Serum | Orientia tsutsugamushi antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22489-9 | Rickettsia typhi IgG Ab [Titer] in Serum | Rickettsia typhi IgG | Serum specimen | Titer | Semi-quantitative value | – |

… 1316 weitere; die vollständige Aufzählung steht im ValueSet.

### Titer — alle Titer-Observables (Obergrenze)

Jedes Titer-Observable; die Differenz zur Regel oben sind Autoimmun-, Blutgruppen- und andere nicht-infektiöse Titer.

ValueSet [mii-vs-mikrobio-loinc-ontology-titer-any](ValueSet-mii-vs-mikrobio-loinc-ontology-titer-any.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118590008 |Dilution factor expressed as titer (property) (qualifier value)|
```

| Attribut | Wert |
|---|---|
| Property | Dilution factor expressed as titer |

Die Regel wählt **2188** Konzepte aus (2188 mit LOINC-Code, 0 ohne). Release 2026-03-21 → 2026-10-21: **+2 / −0** (Listen auf der Seite [Release-Delta](loinc-ontology-release-delta.html)).

#### Codes (2188)

| LOINC | Name | Component | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 10-9 | Amdinocillin [Susceptibility] by Serum bactericidal titer | Amdinocillin | – | Titer | Semi-quantitative value | – |
| 100129-6 | Schistosoma sp Ab [Titer] in Serum by Hemagglutination | Schistosoma antibody | Serum specimen | Titer | Semi-quantitative value | Hemagglutination technique |
| 102-4 | Cefoperazone [Susceptibility] by Serum bactericidal titer | Cefoperazone | – | Titer | Semi-quantitative value | – |
| 10350-7 | Herpes simplex virus IgM Ab [Titer] in Serum by Immunoassay | Human herpes simplex virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 10358-0 | Teichoate Ab [Titer] in Serum by Immune diffusion (ID) | Teichoic acid antibody | Serum specimen | Titer | Semi-quantitative value | Immunodiffusion |
| 104327-2 | Bacillus anthracis Ab [Titer] in Serum by Immunoassay --1st specimen | Bacillus anthracis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104328-0 | Bacillus anthracis Ab [Titer] in Serum by Immunoassay --2nd specimen | Bacillus anthracis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104331-4 | Bordetella pertussis IgA Ab [Titer] in Serum by Immunoassay --1st specimen | Bordetella pertussis IgA | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104332-2 | Bordetella pertussis IgA Ab [Titer] in Serum by Immunoassay --2nd specimen | Bordetella pertussis IgA | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104334-8 | Bordetella pertussis.pertussis toxin IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Bordetella pertussis toxin IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104335-5 | Bordetella pertussis.pertussis toxin IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Bordetella pertussis toxin IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104360-3 | Brucella sp Ab [Titer] in Serum by Immunoassay --1st specimen | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104361-1 | Brucella sp Ab [Titer] in Serum by Immunoassay --2nd specimen | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104364-5 | Chikungunya virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Chikungunya virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104366-0 | Chlamydophila psittaci Ab [Titer] in Serum by Immunoassay --1st specimen | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104368-6 | Chlamydophila psittaci Ab [Titer] in Serum by Immunoassay --2nd specimen | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104377-7 | Coxiella burnetii IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Coxiella burnetii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104378-5 | Coxiella burnetii IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Coxiella burnetii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104380-1 | Coxiella burnetii IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Coxiella burnetii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104381-9 | Coxiella burnetii IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Coxiella burnetii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104383-5 | Dengue virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Dengue virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104384-3 | Dengue virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Dengue virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104386-8 | Dengue virus IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Dengue virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104387-6 | Dengue virus IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Dengue virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104389-2 | Ebola virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Anti-Ebola virus IgG antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104390-0 | Ebola virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Anti-Ebola virus IgG antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104401-5 | Francisella tularensis Ab [Titer] in Serum by Immunoassay --1st specimen | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104402-3 | Francisella tularensis Ab [Titer] in Serum by Immunoassay --2nd specimen | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104406-4 | Hantavirus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hantavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104407-2 | Hantavirus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hantavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104409-8 | Hepatitis A virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hepatitis A virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104410-6 | Hepatitis A virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hepatitis A virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104412-2 | Hepatitis A virus IgM Ab [Titer] in Serum | Hepatitis A virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 104413-0 | Hepatitis E virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Hepatitis E virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104414-8 | Hepatitis E virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Hepatitis E virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104416-3 | Lassa virus IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Lassa mammarenavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104417-1 | Lassa virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Lassa mammarenavirus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104419-7 | Legionella sp Ab [Titer] in Serum Qualitative by Immunoassay --1st specimen | Legionella antibody | Serum specimen | Titer | Ordinal value | Immunoassay technique |
| 104422-1 | Leptospira sp Ab [Titer] in Serum by Immunoassay --2nd specimen | Leptospira antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104424-7 | Leptospira sp IgM Ab [Titer] in Serum by Immunoassay --1st specimen | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104425-4 | Leptospira sp IgM Ab [Titer] in Serum by Immunoassay --2nd specimen | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104436-1 | Polio virus 1 Ab [Titer] in Serum by Immunoassay --1st specimen | Human poliovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104437-9 | Polio virus 1 Ab [Titer] in Serum by Immunoassay --2nd specimen | Human poliovirus 1 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104439-5 | Polio virus 3 Ab [Titer] in Serum by Immunoassay --1st specimen | Human poliovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104440-3 | Polio virus 3 Ab [Titer] in Serum by Immunoassay --2nd specimen | Human poliovirus 3 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104443-7 | Rickettsia prowazekii IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Rickettsia prowazekii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104444-5 | Rickettsia prowazekii IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Rickettsia prowazekii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104453-6 | Trichinella spiralis IgG Ab [Titer] in Serum by Immunoassay --1st specimen | Trichinella spiralis IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104454-4 | Trichinella spiralis IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Trichinella spiralis IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104461-9 | Yellow fever virus IgG Ab [Titer] in Serum by Immunoassay | Yellow fever virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104463-5 | Yellow fever virus IgG Ab [Titer] in Serum by Immunoassay --2nd specimen | Yellow fever virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 104491-6 | Ch sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Ch^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104492-4 | Co sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Co^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104493-2 | Co sup(b) Ab [Titer] in Serum or Plasma | Blood group antibody Co^b^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104497-3 | Cs sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Cs^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104499-9 | Do sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Do^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104500-4 | Do sup(b) Ab [Titer] in Serum or Plasma | Blood group antibody Do^b^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104503-8 | Fy3 Ab [Titer] in Serum or Plasma | Blood group antibody Fy3 | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104509-5 | Gy sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Gy^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 104515-2 | Rg sup(a) Ab [Titer] in Serum or Plasma | Blood group antibody Rg^a^ | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 106-5 | Ceforanide [Susceptibility] by Serum bactericidal titer | Ceforanide | – | Titer | Semi-quantitative value | – |
| 10848-0 | Chlamydia sp IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10849-8 | Chlamydia sp IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10863-9 | Endomysium IgA Ab [Titer] in Serum | Endomysium IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 10866-2 | Sulfatide IgG Ab [Titer] in Serum | Sulfatide IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 10867-0 | Sulfatide IgM Ab [Titer] in Serum | Sulfatide IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 10896-9 | Eastern equine encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10897-7 | Eastern equine encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Eastern equine encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10898-5 | Eastern equine encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10899-3 | Eastern equine encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10903-3 | Hyaluronidase Ab [Titer] in Serum | Hyaluronidase antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 10904-1 | La Crosse virus IgG Ab [Titer] in Serum by Immunofluorescence | La Crosse virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10905-8 | La Crosse virus IgM Ab [Titer] in Serum by Immunofluorescence | La Crosse virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10906-6 | Saint Louis encephalitis virus IgG Ab [Titer] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 10907-4 | Saint Louis encephalitis virus IgM Ab [Titer] in Serum by Immunofluorescence | Saint Louis encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 110-7 | Cefotaxime [Susceptibility] by Serum bactericidal titer | Cefotaxime | – | Titer | Semi-quantitative value | – |
| 11008-0 | Cytomegalovirus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Cytomegalovirus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11009-8 | Epstein Barr virus capsid IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Epstein Barr virus capsid IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11010-6 | Epstein Barr virus capsid IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Epstein Barr virus capsid IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 11012-2 | Reovirus Ab [Titer] in Serum by Complement fixation | Reovirus antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 11013-0 | DNA double strand Ab [Titer] in Serum | Double stranded anti DNA antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 11014-8 | Somatotropin Ab [Titer] in Serum or Plasma | Anti-somatotropin antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 11084-1 | Reagin Ab [Titer] in Serum | Homocytotropic antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 11087-4 | Insulin Ab [Titer] in Serum | Anti-insulin antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 11254-0 | Chlamydophila pneumoniae Ab [Titer] in Serum | Chlamydia pneumoniae antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 11262-3 | Parainfluenza virus 3 IgG Ab [Titer] in Serum | Parainfluenza virus 3 IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 11263-1 | Parainfluenza virus 3 IgM Ab [Titer] in Serum | Parainfluenza virus 3 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 114-9 | cefoTEtan [Susceptibility] by Serum bactericidal titer | Cefotetan | – | Titer | Semi-quantitative value | – |
| 11473-6 | Cryptococcus sp Ag [Titer] in Specimen | Cryptococcus antigen | Specimen | Titer | Semi-quantitative value | – |
| 118-0 | cefOXitin [Susceptibility] by Serum bactericidal titer | Cefoxitin | – | Titer | Semi-quantitative value | – |
| 122-2 | Cefpodoxime [Susceptibility] by Serum bactericidal titer | Cefpodoxime | – | Titer | Semi-quantitative value | – |
| 12212-7 | Epstein Barr virus nuclear IgG Ab [Titer] in Serum by Immunofluorescence | Epstein Barr virus nuclear IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 12261-4 | Toxoplasma gondii IgG Ab [Titer] in Serum by Immunoassay | Toxoplasma gondii IgG | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 12262-2 | Toxoplasma gondii IgM Ab [Titer] in Serum by Immunoassay | Toxoplasma gondii IgM | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 126-3 | Cefprozil [Susceptibility] by Serum bactericidal titer | Cefprozil | – | Titer | Semi-quantitative value | – |
| 130-5 | Cefsulodin [Susceptibility] by Serum bactericidal titer | Cefsulodin | – | Titer | Semi-quantitative value | – |
| 1304-5 | D Ab [Titer] in Serum or Plasma | Blood group antibody D | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 13264-7 | Leptospira sp IgG Ab [Titer] in Serum | Leptospira IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 13265-4 | Leptospira sp IgM Ab [Titer] in Serum | Leptospira IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 135-4 | cefTAZidime [Susceptibility] by Serum bactericidal titer | Ceftazidime | – | Titer | Semi-quantitative value | – |
| 13632-5 | Insulin receptor Ab [Titer] in Serum | Insulin receptor antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 13635-8 | Ribosomal Ab [Titer] in Serum | Antiribosomal antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 13661-4 | Ganglioside GD1b IgM Ab [Titer] in Serum | GD1b IgM ganglioside antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 13662-2 | Ganglioside GD1b IgG Ab [Titer] in Serum | GD1b IgG ganglioside antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 139-6 | Ceftizoxime [Susceptibility] by Serum bactericidal titer | Ceftizoxime | – | Titer | Semi-quantitative value | – |
| 13913-9 | Adenovirus Ab [Titer] in Serum by Immunofluorescence | Adenovirus antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 13915-4 | Adenovirus IgM Ab [Titer] in Serum | Adenovirus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 13917-0 | Coccidioides immitis Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Coccidioides immitis antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 13918-8 | Eastern equine encephalitis virus Ab [Titer] in Serum by Immunofluorescence | Eastern equine encephalitis virus antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 13927-9 | Pancreatic islet cell Ab [Titer] in Serum | Anti-pancreatic islet cell antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 13929-5 | Rheumatoid factor [Titer] in Synovial fluid by Sheep Cell Agglutination | Rheumatoid factor | Synovial fluid specimen | Titer | Semi-quantitative value | – |
| 13930-3 | Rheumatoid factor [Titer] in Synovial fluid by Agglutination | Rheumatoid factor | Synovial fluid specimen | Titer | Semi-quantitative value | Agglutination technique |
| 13997-2 | Neuronal nuclear type 1 Ab [Titer] in Serum | Neuronal nuclear type 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 13998-0 | Neuronal nuclear type 2 Ab [Titer] in Serum | Neuronal nuclear type 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14-1 | Amikacin [Susceptibility] by Serum bactericidal titer | Amikacin | – | Titer | Semi-quantitative value | – |
| 14079-8 | Brucella canis IgG Ab [Titer] in Serum by Immunofluorescence | Brucella canis IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14080-6 | Brucella canis IgM Ab [Titer] in Serum by Immunofluorescence | Brucella canis IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14083-0 | Epstein Barr virus early Ab [Titer] in Serum by Immunofluorescence | Epstein-Barr virus early antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14086-3 | Herpes simplex virus 1 IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 1 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14087-1 | Herpes simplex virus 1 IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 1 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14089-7 | Herpes simplex virus 2 IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 2 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14090-5 | Herpes simplex virus 2 IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Human alphaherpesvirus 2 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14094-7 | Trypanosoma cruzi IgG Ab [Titer] in Serum | Trypanosoma cruzi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 14096-2 | Intercalated disk Ab [Titer] in Serum by Immunofluorescence | Antibody to intercalated disc | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14128-3 | Rabies virus Ab [Titer] in Serum | Lyssavirus rabies antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14198-6 | Chlamydophila psittaci Ab [Titer] in Serum by Immunofluorescence | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14199-4 | Chlamydia trachomatis B IgA Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14200-0 | Chlamydia trachomatis B IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14201-8 | Chlamydia trachomatis B IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis B IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14202-6 | Chlamydia trachomatis C IgA Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14203-4 | Chlamydia trachomatis C IgG Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14204-2 | Chlamydia trachomatis C IgM Ab [Titer] in Serum by Immunofluorescence | Chlamydia trachomatis C IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14207-5 | Streptococcal DNAse B [Titer] in Serum | Deoxyribonuclease B antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14213-3 | Herpes simplex virus IgM Ab [Titer] in Serum by Immunofluorescence | Human herpes simplex virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14227-3 | Salmonella typhi H D Ab [Titer] in Serum | Salmonella Typhi group D, H antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14235-6 | Jo-1 extractable nuclear Ab [Titer] in Serum | Anti Jo-1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14248-9 | Purkinje cells Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Purkinje cell antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14254-7 | Ganglioside GQ1b IgG Ab [Titer] in Serum | GQ1b IgG ganglioside antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 14277-8 | Neutrophil cytoplasmic Ab.classic [Titer] in Serum by Immunofluorescence | c-ANCA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 14278-6 | Neutrophil cytoplasmic Ab.perinuclear [Titer] in Serum by Immunofluorescence | p-ANCA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 143-8 | cefTRIAXone [Susceptibility] by Serum bactericidal titer | Ceftriaxone | – | Titer | Semi-quantitative value | – |
| 14612-6 | Nuclear Ab [Titer] in Pericardial fluid | Antinuclear antibody | Pericardial fluid specimen | Titer | Semi-quantitative value | – |
| 14613-4 | Nuclear Ab [Titer] in Body fluid | Antinuclear antibody | Body fluid specimen | Titer | Semi-quantitative value | – |
| 14614-2 | Nuclear Ab [Titer] in Pleural fluid | Antinuclear antibody | Pleural fluid specimen | Titer | Semi-quantitative value | – |
| 14615-9 | Nuclear Ab [Titer] in Peritoneal fluid | Antinuclear antibody | Peritoneal fluid specimen | Titer | Semi-quantitative value | – |
| 14616-7 | Nuclear Ab [Titer] in Synovial fluid | Antinuclear antibody | Synovial fluid specimen | Titer | Semi-quantitative value | – |
| 14634-0 | C reactive protein [Titer] in Serum or Plasma | C reactive protein | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 14658-9 | Cold agglutinin [Titer] in Serum or Plasma | Cold agglutinin | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 147-9 | Cefuroxime Parenteral [Susceptibility] by Serum bactericidal titer | Cefuroxime-containing product in parenteral dose form | – | Titer | Semi-quantitative value | – |
| 14708-2 | Endomysium Ab [Titer] in Serum | Endomysial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 151-1 | Cephalexin [Susceptibility] by Serum bactericidal titer | Cephalexin | – | Titer | Semi-quantitative value | – |
| 15204-1 | Rheumatoid factor [Titer] in Serum by Nephelometry | Rheumatoid factor | Serum specimen | Titer | Semi-quantitative value | Nephelometry |
| 15336-1 | Other Antibiotic [Susceptibility] by Serum bactericidal titer | Antibacterial | – | Titer | Semi-quantitative value | – |
| 15337-9 | Other Antibiotic [Susceptibility] by Serum bactericidal titer --peak | Antibacterial | – | Titer | Semi-quantitative value | – |
| 15338-7 | Other Antibiotic [Susceptibility] by Serum bactericidal titer --trough | Antibacterial | – | Titer | Semi-quantitative value | – |
| 15343-7 | Blood group antibody screen [Titer] in Serum or Plasma | Blood group antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 15344-5 | little i Ab [Titer] in Serum or Plasma | Blood group antibody i | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 15380-9 | Leishmania brasilensis IgG Ab [Titer] in Serum | Leishmania braziliensis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15381-7 | Leishmania brasilensis IgM Ab [Titer] in Serum | Leishmania braziliensis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15382-5 | Leishmania donovani IgG Ab [Titer] in Serum | Leishmania donovani IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15383-3 | Leishmania donovani IgM Ab [Titer] in Serum | Leishmania donovani IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15384-1 | Leishmania mexicana IgG Ab [Titer] in Serum | Leishmania mexicana IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15385-8 | Leishmania mexicana IgM Ab [Titer] in Serum | Leishmania mexicana IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15386-6 | Leishmania tropica IgG Ab [Titer] in Serum | Leishmania tropica IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 15387-4 | Leishmania tropica IgM Ab [Titer] in Serum | Leishmania tropica IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15391-6 | Parainfluenza virus 1 IgM Ab [Titer] in Serum | Parainfluenza virus 1 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15393-2 | Parainfluenza virus 2 IgM Ab [Titer] in Serum | Parainfluenza virus 2 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15397-3 | Trypanosoma cruzi IgM Ab [Titer] in Serum | Trypanosoma cruzi IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 15398-1 | Neuronal nuclear Ab [Titer] in Serum | Neuronal antinuclear antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 155-2 | Cephaloglycin [Susceptibility] by Serum bactericidal titer | Cephaloglycin | – | Titer | Semi-quantitative value | – |
| 159-4 | Cephaloridine [Susceptibility] by Serum bactericidal titer | Cephaloridine | – | Titer | Semi-quantitative value | – |
| 16117-4 | Babesia microti IgG Ab [Titer] in Serum | Babesia microti IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16118-2 | Babesia microti IgM Ab [Titer] in Serum | Babesia microti IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16119-0 | Brucella abortus IgG Ab [Titer] in Serum | Brucella abortus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16120-8 | Brucella abortus IgM Ab [Titer] in Serum | Brucella abortus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16121-6 | Colorado tick fever virus IgG Ab [Titer] in Serum | Colorado tick fever virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 16122-4 | Colorado tick fever virus IgM Ab [Titer] in Serum | Colorado tick fever virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16123-2 | Cryptococcus sp Ab [Titer] in Cerebrospinal Fluid | Cryptococcus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 16124-0 | Cryptococcus sp Ab [Titer] in Serum | Cryptococcus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16133-1 | Legionella pneumophila IgM Ab [Titer] in Serum by Immunofluorescence | Legionella pneumophila IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16139-8 | Neuronal nuclear Ab [Titer] in Cerebrospinal Fluid | Neuronal antinuclear antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 163-6 | Cephalothin [Susceptibility] by Serum bactericidal titer | Cephalothin | – | Titer | Semi-quantitative value | – |
| 16320-4 | Acyclovir [Susceptibility] by Serum bactericidal titer | Acyclovir | – | Titer | Semi-quantitative value | – |
| 16350-1 | Amantadine [Susceptibility] by Serum bactericidal titer | Amantadine | – | Titer | Semi-quantitative value | – |
| 16426-9 | Babesia sp IgM Ab [Titer] in Serum | Babesia IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 16427-7 | Babesia microti Ab [Titer] in Serum | Babesia microti antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16533-2 | Helicobacter pylori Ab [Titer] in Serum | Helicobacter pylori antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16581-1 | Chlamydophila pneumoniae IgA Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila pneumoniae IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16582-9 | Chlamydophila pneumoniae IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila pneumoniae IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16583-7 | Chlamydophila pneumoniae IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila pneumoniae IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16586-0 | Chlamydophila psittaci IgA Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila psittaci IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16587-8 | Chlamydophila psittaci IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydophila psittaci IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16594-4 | Chlamydia trachomatis IgA Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Chlamydia trachomatis IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 16682-7 | Coxsackievirus A2 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 16683-5 | Coxsackievirus A4 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A4 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 167-7 | Cephapirin [Susceptibility] by Serum bactericidal titer | Cephapirin | – | Titer | Semi-quantitative value | – |
| 16736-1 | Dengue virus 1 Ab [Titer] in Serum | Dengue virus type 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16737-9 | Dengue virus 2 Ab [Titer] in Serum | Dengue virus type 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16738-7 | Dengue virus 3 Ab [Titer] in Serum | Dengue virus type 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16739-5 | Dengue virus 4 Ab [Titer] in Serum | Dengue virus type 4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 16875-7 | Francisella tularensis Ab [Titer] in Serum | Francisella tularensis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17036-5 | La Crosse virus Ab [Titer] in Serum | La Crosse virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17037-3 | La Crosse virus Ab [Titer] in Cerebrospinal Fluid | La Crosse virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17038-1 | La Crosse virus IgG Ab [Titer] in Serum | La Crosse virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 17039-9 | La Crosse virus IgM Ab [Titer] in Serum | La Crosse virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 17060-5 | Legionella pneumophila 1 Ab [Titer] in Serum | Legionella pneumophila serogroup 1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17062-1 | Legionella pneumophila 2 Ab [Titer] in Serum | Legionella pneumophila serogroup 2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17064-7 | Legionella pneumophila 3 Ab [Titer] in Serum | Legionella pneumophila serogroup 3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17066-2 | Legionella pneumophila 4 Ab [Titer] in Serum | Legionella pneumophila serogroup 4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17068-8 | Legionella pneumophila 5 Ab [Titer] in Serum | Legionella pneumophila serogroup 5 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17070-4 | Legionella pneumophila 6 Ab [Titer] in Serum | Legionella pneumophila serogroup 6 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 171-9 | Cephradine [Susceptibility] by Serum bactericidal titer | Cephradine | – | Titer | Semi-quantitative value | – |
| 17228-8 | Lymphocytic choriomeningitis virus Ab [Titer] in Cerebrospinal Fluid | Lymphocytic choriomeningitis virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17229-6 | Lymphocytic choriomeningitis virus IgM Ab [Titer] in Cerebrospinal Fluid | Lymphocytic choriomeningitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17300-5 | Mycoplasma hominis Ab [Titer] in Serum by Complement fixation | Mycoplasma hominis antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 175-0 | Chloramphenicol [Susceptibility] by Serum bactericidal titer | Chloramphenicol | – | Titer | Semi-quantitative value | – |
| 17517-4 | Respiratory syncytial virus IgG Ab [Titer] in Cerebrospinal Fluid | Respiratory syncytial virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17518-2 | Respiratory syncytial virus IgG Ab [Titer] in Serum | Respiratory syncytial virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 17519-0 | Respiratory syncytial virus IgM Ab [Titer] in Cerebrospinal Fluid | Respiratory syncytial virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17522-4 | Reticulin IgA Ab [Titer] in Serum by Immunofluorescence | Reticulin IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 17523-2 | Reticulin IgG Ab [Titer] in Serum | Reticulin IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 17524-0 | Reticulin IgG Ab [Titer] in Serum by Immunofluorescence | Reticulin IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 17589-3 | Smith extractable nuclear Ab [Titer] in Serum by Immune diffusion (ID) | Smith antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunodiffusion |
| 17590-1 | Smith extractable nuclear Ab [Titer] in Serum by Immunoassay | Smith antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 17706-3 | Thyroperoxidase Ab [Titer] in Cerebrospinal Fluid by Latex agglutination | Antithyroperoxidase antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 17769-1 | Western equine encephalitis virus Ab [Titer] in Cerebrospinal Fluid | Western equine encephalomyelitis virus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 17770-9 | Western equine encephalitis virus Ab [Titer] in Serum | Western equine encephalomyelitis virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 17854-1 | Ganglioside GM1b IgM Ab [Titer] in Serum | Ganglioside GM1b IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 17857-4 | Rheumatoid factor [Titer] in Serum | Rheumatoid factor | Serum specimen | Titer | Semi-quantitative value | – |
| 179-2 | Chlortetracycline [Susceptibility] by Serum bactericidal titer | Chlortetracycline | – | Titer | Semi-quantitative value | – |
| 18-2 | Amoxicillin [Susceptibility] by Serum bactericidal titer | Amoxicillin | – | Titer | Semi-quantitative value | – |
| 18288-1 | Donath Landsteiner Ab [Titer] in Control Serum and RBC | Cold hemolysin | – | Titer | Semi-quantitative value | – |
| 183-4 | Cinoxacin [Susceptibility] by Serum bactericidal titer | Cinoxacin | – | Titer | Semi-quantitative value | – |
| 18397-0 | Polio virus 1 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 1 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 18398-8 | Polio virus 2 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 18399-6 | Polio virus 3 Ab [Titer] in Cerebrospinal Fluid by Complement fixation | Human poliovirus 3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Complement fixation |
| 187-5 | Ciprofloxacin [Susceptibility] by Serum bactericidal titer | Ciprofloxacin | – | Titer | Semi-quantitative value | – |
| 19053-8 | Brucella sp Ab [Titer] in Serum by Agglutination | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 191-7 | Clarithromycin [Susceptibility] by Serum bactericidal titer | Clarithromycin | – | Titer | Semi-quantitative value | – |
| 195-8 | Clindamycin [Susceptibility] by Serum bactericidal titer | Clindamycin | – | Titer | Semi-quantitative value | – |
| 199-0 | Cloxacillin [Susceptibility] by Serum bactericidal titer | Cloxacillin | – | Titer | Semi-quantitative value | – |
| 203-0 | Colistimethate [Susceptibility] by Serum bactericidal titer | Colistimethate | – | Titer | Semi-quantitative value | – |
| 20417-2 | Histoplasma capsulatum mycelial phase Ab [Titer] in Serum | Histoplasma capsulatum mycelial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 20418-0 | Histoplasma capsulatum yeast phase Ab [Titer] in Serum | Histoplasma capsulatum yeast antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 20483-4 | Mitochondria Ab [Titer] in Serum | Antimitochondrial antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 20484-2 | Cardiolipin IgG Ab [Titer] in Serum | Cardiolipin IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 20485-9 | Cardiolipin IgM Ab [Titer] in Serum | Cardiolipin IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 20490-9 | Epstein Barr virus capsid IgG Ab [Titer] in Serum | Epstein Barr virus capsid IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 20491-7 | Epstein Barr virus capsid IgM Ab [Titer] in Serum | Epstein Barr virus capsid IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 20573-2 | Histoplasma capsulatum mycelial phase Ab [Titer] in Serum by Complement fixation | Histoplasma capsulatum mycelial antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 20574-0 | Histoplasma capsulatum yeast phase Ab [Titer] in Serum by Complement fixation | Histoplasma capsulatum yeast antibody | Serum specimen | Titer | Semi-quantitative value | Complement fixation |
| 20669-8 | Cardiolipin IgA Ab [Titer] in Serum | Cardiolipin IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 207-1 | Colistin [Susceptibility] by Serum bactericidal titer | Colistin | – | Titer | Semi-quantitative value | – |
| 21023-7 | Neutrophil cytoplasmic Ab [Titer] in Serum | Anti neutrophilic cytoplasm antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 21053-4 | Adenovirus IgG Ab [Titer] in Serum | Adenovirus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 21080-7 | Asialoganglioside GM1 Ab [Titer] in Serum | Ganglioside asialo-GM1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 211-3 | Cyclacillin [Susceptibility] by Serum bactericidal titer | Cyclacillin | – | Titer | Semi-quantitative value | – |
| 21121-9 | Borrelia hermsii IgG Ab [Titer] in Serum by Immunofluorescence | Borrelia hermsii IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21122-7 | Borrelia hermsii IgM Ab [Titer] in Serum by Immunofluorescence | Borrelia hermsii IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21125-0 | Brush border Ab [Titer] in Serum by Immunofluorescence | Brush border antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21237-3 | Cytomegalovirus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Cytomegalovirus IgM antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21259-7 | Entamoeba histolytica Ab [Titer] in Serum by Hemagglutination | Entamoeba histolytica antibody | Serum specimen | Titer | Semi-quantitative value | Hemagglutination technique |
| 21260-5 | Epstein Barr virus nuclear Ab [Titer] in Serum by Immunofluorescence | Epstein-Barr virus nuclear antigen antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21282-9 | Ganglioside GD1a IgM Ab [Titer] in Serum by Immunoassay | GD1a IgM ganglioside antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 21283-7 | Ganglioside GD1a IgG Ab [Titer] in Serum by Immunoassay | GD1a IgG ganglioside antibody | Serum specimen | Titer | Semi-quantitative value | Immunoassay technique |
| 21300-9 | Giardia lamblia IgA Ab [Titer] in Serum by Immunofluorescence | Giardia lamblia IgA | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21301-7 | Giardia lamblia IgM Ab [Titer] in Serum by Immunofluorescence | Giardia lamblia IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21322-3 | Hantavirus puumala IgG Ab [Titer] in Serum by Immunofluorescence | Puumala virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21323-1 | Hantavirus puumala IgM Ab [Titer] in Serum by Immunofluorescence | Puumala virus IgM | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21326-4 | Herpes simplex virus 1 IgM Ab [Titer] in Serum | Human alphaherpesvirus 1 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21327-2 | Herpes simplex virus 2 IgM Ab [Titer] in Serum | Human alphaherpesvirus 2 IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21331-4 | HIV 1 p24 Ab [Titer] in Serum by Immunoblot | Human immunodeficiency virus 1 protein 24 antibody | Serum specimen | Titer | Semi-quantitative value | Immunoblot assay |
| 21362-9 | Legionella pneumophila IgG Ab [Titer] in Serum by Immunofluorescence | Legionella pneumophila IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21401-5 | Mumps virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21402-3 | Mumps virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Orthorubulavirus parotitidis IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21409-8 | Myelin IgM Ab [Titer] in Serum | Myelin IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21410-6 | Myelin associated glycoprotein IgM Ab [Titer] in Serum | Myelin associated glycoprotein IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21423-9 | Nuclear Ab [Titer] in Serum by Immunofluorescence (IF) rat liver | Antinuclear antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 21465-0 | Plasmodium falciparum Ab [Titer] in Serum by Immunofluorescence | Plasmodium falciparum antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21466-8 | Plasmodium malariae Ab [Titer] in Serum by Immunofluorescence | Plasmodium malariae antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21467-6 | Plasmodium ovale Ab [Titer] in Serum by Immunofluorescence | Plasmodium ovale antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21468-4 | Plasmodium vivax Ab [Titer] in Serum by Immunofluorescence | Plasmodium vivax antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21489-0 | Rickettsia (Proteus OX19) Ab [Titer] in Serum by Latex agglutination | Proteus OX19 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21490-8 | Rickettsia (Proteus OX2) Ab [Titer] in Serum by Latex agglutination | Proteus OX2 antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21491-6 | Rickettsia (Proteus OXK) Ab [Titer] in Serum by Latex agglutination | Proteus OX K antirickettsial antibody | Serum specimen | Titer | Semi-quantitative value | Latex agglutination test |
| 21492-4 | Rickettsia conorii IgG Ab [Titer] in Serum | Rickettsia conorii IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 21493-2 | Rickettsia conorii IgM Ab [Titer] in Serum | Rickettsia conorii IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 21494-0 | Rickettsia spotted fever group IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia spotted fever group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21495-7 | Rickettsia spotted fever group IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia spotted fever group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21496-5 | Rickettsia typhus group IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia typhus group IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21497-3 | Rickettsia typhus group IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Rickettsia typhus group IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21498-1 | Orientia tsutsugamushi IgG Ab [Titer] in Serum | Orientia tsutsugamushi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 215-4 | cycloSERINE [Susceptibility] by Serum bactericidal titer | Cycloserine | – | Titer | Semi-quantitative value | – |
| 21500-4 | Measles virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Measles virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21501-2 | Measles virus IgG Ab [Titer] in Serum by Immunofluorescence | Measles virus IgG | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21502-0 | Measles virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Measles virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21509-5 | Saint Louis encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21510-3 | Saint Louis encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Saint Louis encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21511-1 | Salmonella paratyphi A H Ab [Titer] in Serum by Agglutination | Salmonella Paratyphi A, H antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 21512-9 | Salmonella paratyphi A H Ab [Titer] in Serum by Immunofluorescence | Salmonella Paratyphi A, H antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21513-7 | Salmonella paratyphi B H Ab [Titer] in Serum by Agglutination | Salmonella enterica subspecies enterica serovar Paratyphi B H antibody | Serum specimen | Titer | Semi-quantitative value | Agglutination technique |
| 21514-5 | Salmonella paratyphi B H Ab [Titer] in Serum by Immunofluorescence | Salmonella enterica subspecies enterica serovar Paratyphi B H antibody | Serum specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21545-9 | Sulfatide IgG Ab [Titer] in Cerebrospinal Fluid | Sulfatide IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 21546-7 | Sulfatide IgM Ab [Titer] in Cerebrospinal Fluid | Sulfatide IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 21569-9 | Toxoplasma gondii IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Toxoplasma gondii IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21571-5 | Toxoplasma gondii IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Toxoplasma gondii IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21592-1 | Varicella zoster virus Ab [Titer] in Cerebrospinal Fluid | Varicellovirus humanalpha3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 21594-7 | Varicella zoster virus Ab [Titer] in Serum | Varicellovirus humanalpha3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 21595-4 | Varicella zoster virus IgG Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Varicellovirus humanalpha3 IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 21596-2 | Varicella zoster virus IgM Ab [Titer] in Cerebrospinal Fluid by Immunofluorescence | Varicellovirus humanalpha3 IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | Immunofluorescence technique |
| 219-6 | Demeclocycline [Susceptibility] by Serum bactericidal titer | Demeclocycline | – | Titer | Semi-quantitative value | – |
| 22079-8 | Actinomyces sp Ab [Titer] in Serum | Actinomyces antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22080-6 | Adenovirus Ab [Titer] in Serum | Adenovirus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22081-4 | Afipia felis IgG Ab [Titer] in Serum | Afipia felis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22082-2 | Afipia felis IgM Ab [Titer] in Serum | Afipia felis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22087-1 | Aspergillus sp Ab [Titer] in Serum | Aspergillus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22106-9 | Babesia sp Ab [Titer] in Serum | Babesia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22107-7 | Babesia sp IgG Ab [Titer] in Serum | Babesia IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22110-1 | Bartonella henselae IgG Ab [Titer] in Serum | Bartonella henselae IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22111-9 | Bartonella henselae IgM Ab [Titer] in Serum | Bartonella henselae IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22112-7 | Blastomyces dermatitidis Ab [Titer] in Serum | Blastomyces dermatitidis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22116-8 | Bordetella pertussis Ab [Titer] in Serum | Bordetella pertussis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22117-6 | Bordetella pertussis Ab [Titer] in Specimen | Bordetella pertussis antibody | Specimen | Titer | Semi-quantitative value | – |
| 22122-6 | Borrelia burgdorferi Ab [Titer] in Serum | Borrelia burgdorferi antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22130-9 | Borrelia burgdorferi IgG Ab [Titer] in Serum | Borrelia burgdorferi IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22137-4 | Borrelia burgdorferi IgM Ab [Titer] in Serum | Borrelia burgdorferi IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22138-2 | Borrelia hermsii IgG Ab [Titer] in Serum | Borrelia hermsii IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22139-0 | Borrelia hermsii IgM Ab [Titer] in Serum | Borrelia hermsii IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22150-7 | Brucella abortus Ab [Titer] in Serum | Brucella abortus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22152-3 | Brucella canis Ab [Titer] in Serum | Brucella canis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22154-9 | Brucella canis IgG Ab [Titer] in Serum | Brucella canis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22156-4 | Brucella canis IgM Ab [Titer] in Serum | Brucella canis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22157-2 | Brucella melitensis Ab [Titer] in Serum | Brucella melitensis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22159-8 | Brucella sp Ab [Titer] in Serum | Brucella antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22160-6 | Brucella suis Ab [Titer] in Serum | Brucella suis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22169-7 | Chlamydophila pneumoniae IgA Ab [Titer] in Cerebrospinal Fluid | Chlamydophila pneumoniae IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22170-5 | Chlamydophila pneumoniae IgA Ab [Titer] in Serum | Chlamydophila pneumoniae IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22171-3 | Chlamydophila pneumoniae IgG Ab [Titer] in Cerebrospinal Fluid | Chlamydophila pneumoniae IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22172-1 | Chlamydophila pneumoniae IgG Ab [Titer] in Serum | Chlamydophila pneumoniae IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22173-9 | Chlamydophila pneumoniae IgM Ab [Titer] in Cerebrospinal Fluid | Chlamydophila pneumoniae IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22174-7 | Chlamydophila pneumoniae IgM Ab [Titer] in Serum | Chlamydophila pneumoniae IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22176-2 | Chlamydophila psittaci Ab [Titer] in Serum | Chlamydophila psittaci antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22177-0 | Chlamydophila psittaci IgA Ab [Titer] in Cerebrospinal Fluid | Chlamydophila psittaci IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22178-8 | Chlamydophila psittaci IgA Ab [Titer] in Serum | Chlamydophila psittaci IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22179-6 | Chlamydophila psittaci IgG Ab [Titer] in Cerebrospinal Fluid | Chlamydophila psittaci IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22180-4 | Chlamydophila psittaci IgG Ab [Titer] in Serum | Chlamydophila psittaci IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22181-2 | Chlamydophila psittaci IgM Ab [Titer] in Serum | Chlamydophila psittaci IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22182-0 | Chlamydia sp Ab [Titer] in Serum | Chlamydia antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22184-6 | Chlamydia sp IgG Ab [Titer] in Serum | Chlamydia IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22186-1 | Chlamydia sp IgM Ab [Titer] in Serum | Chlamydia IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22187-9 | Chlamydia trachomatis Ab [Titer] in Serum | Chlamydia trachomatis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22188-7 | Chlamydia trachomatis IgA Ab [Titer] in Cerebrospinal Fluid | Chlamydia trachomatis IgA | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22189-5 | Chlamydia trachomatis IgA Ab [Titer] in Serum | Chlamydia trachomatis IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22191-1 | Chlamydia trachomatis IgG Ab [Titer] in Serum | Chlamydia trachomatis IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22193-7 | Chlamydia trachomatis IgM Ab [Titer] in Serum | Chlamydia trachomatis IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22194-5 | Chlamydia trachomatis B IgA Ab [Titer] in Serum | Chlamydia trachomatis B IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22195-2 | Chlamydia trachomatis B IgG Ab [Titer] in Serum | Chlamydia trachomatis B IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22196-0 | Chlamydia trachomatis B IgM Ab [Titer] in Serum | Chlamydia trachomatis B IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22197-8 | Chlamydia trachomatis C IgA Ab [Titer] in Serum | Chlamydia trachomatis C IgA | Serum specimen | Titer | Semi-quantitative value | – |
| 22198-6 | Chlamydia trachomatis C IgG Ab [Titer] in Serum | Chlamydia trachomatis C IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22199-4 | Chlamydia trachomatis C IgM Ab [Titer] in Serum | Chlamydia trachomatis C IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22207-5 | Coccidioides immitis Ab [Titer] in Cerebrospinal Fluid | Coccidioides immitis antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22208-3 | Coccidioides immitis Ab [Titer] in Serum | Coccidioides immitis antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22211-7 | Coxiella burnetii Ab [Titer] in Serum | Coxiella burnetii antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22212-5 | Coxsackievirus A10 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A10 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22213-3 | Coxsackievirus A10 Ab [Titer] in Serum | Human coxsackievirus A10 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22214-1 | Coxsackievirus A16 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A16 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22215-8 | Coxsackievirus A16 Ab [Titer] in Serum | Human coxsackievirus A16 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22216-6 | Coxsackievirus A2 Ab [Titer] in Serum | Human coxsackievirus A2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22217-4 | Coxsackievirus A21 Ab [Titer] in Serum | Human coxsackievirus A21 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22218-2 | Coxsackievirus A4 Ab [Titer] in Serum | Human coxsackievirus A4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22219-0 | Coxsackievirus A7 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A7 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22220-8 | Coxsackievirus A7 Ab [Titer] in Serum | Human coxsackievirus A7 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22221-6 | Coxsackievirus A9 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus A9 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22222-4 | Coxsackievirus A9 Ab [Titer] in Serum | Human coxsackievirus A9 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22225-7 | Coxsackievirus B1 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B1 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22226-5 | Coxsackievirus B1 Ab [Titer] in Serum | Human coxsackievirus B1 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22227-3 | Coxsackievirus B2 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B2 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22228-1 | Coxsackievirus B2 Ab [Titer] in Serum | Human coxsackievirus B2 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22229-9 | Coxsackievirus B3 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B3 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22230-7 | Coxsackievirus B3 Ab [Titer] in Serum | Human coxsackievirus B3 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22231-5 | Coxsackievirus B4 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B4 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22232-3 | Coxsackievirus B4 Ab [Titer] in Serum | Human coxsackievirus B4 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22233-1 | Coxsackievirus B5 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B5 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22234-9 | Coxsackievirus B5 Ab [Titer] in Serum | Human coxsackievirus B5 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22235-6 | Coxsackievirus B6 Ab [Titer] in Cerebrospinal Fluid | Human coxsackievirus B6 antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22236-4 | Coxsackievirus B6 Ab [Titer] in Serum | Human coxsackievirus B6 antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22237-2 | Cryptococcus neoformans Ab [Titer] in Serum | Cryptococcus neoformans antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22240-6 | Cytomegalovirus Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22241-4 | Cytomegalovirus Ab [Titer] in Serum or Plasma | Cytomegalovirus antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22245-5 | Cytomegalovirus IgG Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22246-3 | Cytomegalovirus IgG Ab [Titer] in Serum or Plasma | Cytomegalovirus IgG | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22248-9 | Cytomegalovirus IgM Ab [Titer] in Cerebrospinal Fluid | Cytomegalovirus IgM antibody | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22249-7 | Cytomegalovirus IgM Ab [Titer] in Serum or Plasma | Cytomegalovirus IgM antibody | Serum or plasma specimen | Titer | Semi-quantitative value | – |
| 22257-0 | Eastern equine encephalitis virus Ab [Titer] in Serum | Eastern equine encephalitis virus antibody | Serum specimen | Titer | Semi-quantitative value | – |
| 22258-8 | Eastern equine encephalitis virus IgG Ab [Titer] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgG | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22259-6 | Eastern equine encephalitis virus IgG Ab [Titer] in Serum | Eastern equine encephalitis virus IgG | Serum specimen | Titer | Semi-quantitative value | – |
| 22260-4 | Eastern equine encephalitis virus IgM Ab [Titer] in Cerebrospinal Fluid | Eastern equine encephalitis virus IgM | Cerebrospinal fluid specimen | Titer | Semi-quantitative value | – |
| 22261-2 | Eastern equine encephalitis virus IgM Ab [Titer] in Serum | Eastern equine encephalitis virus IgM | Serum specimen | Titer | Semi-quantitative value | – |
| 22263-8 | Ebola virus Ab [Titer] in Serum | Orthoebolavirus antibody | Serum specimen | Titer | Semi-quantitative value | – |

… 1788 weitere; die vollständige Aufzählung steht im ValueSet.
