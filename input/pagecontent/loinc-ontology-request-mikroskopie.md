This page is the review material for the request family **Microscopy** of the [LOINC Ontology proposal](loinc-ontology-valuesets.html): every rule of the family as the LOINC Ontology 2026-10-21 resolves it, decomposed into its attributes, with the codes it selects and what the release 2026-03-21 → 2026-10-21 changed. The method is explained under [How the ValueSets are built](loinc-ontology-method.html); all families are listed under [ValueSets per request](loinc-ontology-requests.html).

Microbiology request: microscopy (MII KDS Mikrobiologie 2027, profiles MII_PR_Mikrobio_Mikroskopie and MII_PR_Mikrobio_Spezifische_Mikroskopie, ValueSets MII_VS_Mikrobio_Allgemeine_Mikroskopie_Tests_LOINC and MII_VS_Mikrobio_Spezifische_Mikroskopie_Tests_LOINC). General microscopy = nominal 'what was seen' (Property = Presence or identity, Scale = Nominal); the preferred code 105059-0 is modelled WITHOUT a technique and with Inheres in = Specimen (484041010000107), the stain-named codes carry the stain as Technique (664-3 = Gram stain technique). Specific microscopy = ordinal threshold presence of a named object by a stain (the LOINC filter PrThr + Ord + stain METHOD_TYP).

### General microscopy — nominal finding by microscopy or staining technique

Nominal microscopic observation with an explicit microscopy or staining technique (Gram, Giemsa, acid-fast, light microscopy ...). Contains 664-3.

ValueSet [mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-by-technique.html). Part of the union ValueSet [mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.html), bound by the derived profile [mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)
```

| Attribute | Value |
|---|---|
| Property | Presence or identity |
| Scale type | Nominal value |
| Technique | `<< Microscopy technique` OR `<< Staining technique` |

The rule selects **383** concepts (383 with a LOINC code, 0 without). Release 2026-03-21 → 2026-10-21: **+7 / −0** (lists on the [release delta](loinc-ontology-release-delta.html) page).

#### Codes (383)

| LOINC | Name | Inheres in | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 10347-3 | Babesia microti identified in Blood by Light microscopy | Babesia microti | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 10355-6 | Microscopic observation [Identifier] in Bone marrow by Wright Giemsa stain | Bone marrow specimen | – | Presence or identity | Nominal value | Wright-Giemsa stain |
| 10357-2 | Microscopic observation [Identifier] in Wound by Gram stain | Specimen from wound | – | Presence or identity | Nominal value | Gram stain |
| 105054-1 | Crystals [type] in Urine sediment by Microscopy | Crystal - body material | Urine sediment specimen | Presence or identity | Nominal value | Microscopy technique |
| 10524-7 | Microscopic observation [Identifier] in Cervix by Cyto stain | Specimen from uterine cervix | – | Presence or identity | Nominal value | Cytology stain |
| 10525-4 | Microscopic observation [Identifier] in Specimen by Cyto stain | Specimen | – | Presence or identity | Nominal value | Cytology stain |
| 10526-2 | Microscopic observation [Identifier] in Sputum by Cyto stain | Sputum specimen | – | Presence or identity | Nominal value | Cytology stain |
| 10527-0 | Microscopic observation [Identifier] in Tissue by Cyto stain | Tissue specimen | – | Presence or identity | Nominal value | Cytology stain |
| 10637-7 | Microscopic observation [Identifier] in Tissue by Night blue stain | Tissue specimen | – | Presence or identity | Nominal value | Night blue stain technique |
| 10646-8 | Astrovirus [Identifier] in Stool by Electron microscopy | Human astrovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10655-9 | Coccidia identified in Duodenal fluid by Acid fast stain | Coccidia | Duodenal fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 10656-7 | Coccidia identified in Stool by Acid fast stain | Coccidia | Stool specimen | Presence or identity | Nominal value | Acid fast stain |
| 10661-7 | Dinoflagellate identified in Water by Light microscopy | Phylum Dinoflagellata | Water specimen | Presence or identity | Nominal value | Light microscopy |
| 10666-6 | Fungus identified in Tissue by Fontana-Masson stain | Fungi | Tissue specimen | Presence or identity | Nominal value | Fontana-Masson silver stain technique |
| 10680-7 | Herpes simplex virus identified in Cerebrospinal Fluid by Electron microscopy | Human herpes simplex virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Electron microscopy |
| 10681-5 | Herpes simplex virus identified in Tissue by Electron microscopy | Human herpes simplex virus | Tissue specimen | Presence or identity | Nominal value | Electron microscopy |
| 10686-4 | Leishmania sp identified in Tissue by Giemsa stain | Leishmania | Tissue specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 10688-0 | Microscopic observation [Identifier] in Hair by KOH preparation | Hair specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 10689-8 | Microscopic observation [Identifier] in Nail by KOH preparation | Nail specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 10696-3 | Norovirus [Identifier] in Stool by Electron microscopy | Norovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10700-3 | Orthopoxvirus [Identifier] in Skin by Electron microscopy | Orthopoxvirus | Specimen from skin | Presence or identity | Nominal value | Electron microscopy |
| 10706-0 | Picornavirus [Identifier] in Stool by Electron microscopy | Family Picornaviridae | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10722-7 | Torovirus [Identifier] in Stool by Electron microscopy | Genus Torovirus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10729-2 | Trypanosoma sp identified in Blood by Light microscopy | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 10734-2 | Varicella zoster virus identified in Skin by Electron microscopy | Varicellovirus humanalpha3 | Specimen from skin | Presence or identity | Nominal value | Electron microscopy |
| 10736-7 | Virus identified in Cerebrospinal Fluid by Electron microscopy | Virus | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Electron microscopy |
| 10737-5 | Virus identified in Stool by Electron microscopy | Virus | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 10738-3 | Virus identified in Tissue by Electron microscopy | Virus | Tissue specimen | Presence or identity | Nominal value | Electron microscopy |
| 10739-1 | Virus identified in Specimen by Electron microscopy | Virus | Specimen | Presence or identity | Nominal value | Electron microscopy |
| 10762-3 | Hemosiderin [Identifier] in Blood by Light microscopy | Hemosiderin | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 10763-1 | Microscopic observation [Identifier] in Body fluid by Sudan black stain | Body fluid specimen | – | Presence or identity | Nominal value | Sudan black B stain technique |
| 10764-9 | Microscopic observation [Identifier] in Sputum by Silver stain | Sputum specimen | – | Presence or identity | Nominal value | Silver stain technique |
| 10765-6 | Microscopic observation [Identifier] in Tissue by Acetate esterase stain | Tissue specimen | – | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 10766-4 | Microscopic observation [Identifier] in Tissue by Alcian blue stain | Tissue specimen | – | Presence or identity | Nominal value | Alcian blue stain technique |
| 10767-2 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.sulfated | Tissue specimen | – | Presence or identity | Nominal value | Sulfated alcian blue stain technique |
| 10768-0 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.with periodic acid-Schiff | Tissue specimen | – | Presence or identity | Nominal value | Alcian blue and periodic acid-Schiff stain technique |
| 10769-8 | Microscopic observation [Identifier] in Tissue by Alizarin red S stain | Tissue specimen | – | Presence or identity | Nominal value | Alizarin red S stain technique |
| 10770-6 | Microscopic observation [Identifier] in Tissue by Argentaffin stain | Tissue specimen | – | Presence or identity | Nominal value | Argentaffin stain technique |
| 10772-2 | Microscopic observation [Identifier] in Tissue by Azure-eosin stain | Tissue specimen | – | Presence or identity | Nominal value | Azure B-eosin stain technique |
| 10773-0 | Microscopic observation [Identifier] in Tissue by Basic fuchsin stain | Tissue specimen | – | Presence or identity | Nominal value | Basic fuchsin stain technique |
| 10774-8 | Microscopic observation [Identifier] in Tissue by Bielschowsky stain | Tissue specimen | – | Presence or identity | Nominal value | Bielschowsky silver stain technique |
| 10775-5 | Microscopic observation [Identifier] in Tissue by Bleach stain | Tissue specimen | – | Presence or identity | Nominal value | Melanin bleach stain technique |
| 10776-3 | Microscopic observation [Identifier] in Tissue by Bodian stain | Tissue specimen | – | Presence or identity | Nominal value | Bodian stain technique |
| 10777-1 | Microscopic observation [Identifier] in Tissue by Brown and Brenn stain | Tissue specimen | – | Presence or identity | Nominal value | Brown and Brenn stain technique |
| 10778-9 | Microscopic observation [Identifier] in Tissue by Butyrate esterase stain | Tissue specimen | – | Presence or identity | Nominal value | Alpha naphthyl butyrate esterase stain technique |
| 10779-7 | Microscopic observation [Identifier] in Tissue by Carmine stain.Best | Tissue specimen | – | Presence or identity | Nominal value | Best carmine stain technique |
| 10780-5 | Microscopic observation [Identifier] in Tissue by Chloracetate esterase stain | Tissue specimen | – | Presence or identity | Nominal value | Chloroacetate esterase stain technique |
| 10781-3 | Microscopic observation [Identifier] in Tissue by Churukian-Schenk stain | Tissue specimen | – | Presence or identity | Nominal value | Churukian-Schenk stain technique |
| 10782-1 | Microscopic observation [Identifier] in Tissue by Congo red stain | Tissue specimen | – | Presence or identity | Nominal value | Congo red stain technique |
| 10783-9 | Microscopic observation [Identifier] in Tissue by Crystal violet stain | Tissue specimen | – | Presence or identity | Nominal value | Crystal violet stain technique |
| 10784-7 | Microscopic observation [Identifier] in Tissue by Esterase stain.non-specific | Tissue specimen | – | Presence or identity | Nominal value | Nonspecific esterase stain technique |
| 10785-4 | Microscopic observation [Identifier] in Tissue by Fite-Faraco stain | Tissue specimen | – | Presence or identity | Nominal value | Fite-Faraco stain technique |
| 10787-0 | Microscopic observation [Identifier] in Tissue by Gridley stain | Tissue specimen | – | Presence or identity | Nominal value | Gridley stain technique |
| 10788-8 | Microscopic observation [Identifier] in Tissue by Hansel stain | Tissue specimen | – | Presence or identity | Nominal value | Hansel stain technique |
| 10789-6 | Microscopic observation [Identifier] in Tissue by Hematoxylin-eosin-Harris regressive stain | Tissue specimen | – | Presence or identity | Nominal value | Harris regressive hematoxylin and eosin stain technique |
| 10790-4 | Microscopic observation [Identifier] in Tissue by Hematoxylin-eosin-Mayers progressive stain | Tissue specimen | – | Presence or identity | Nominal value | Mayer progressive hematoxylin and eosin stain technique |
| 10791-2 | Microscopic observation [Identifier] in Tissue by Mallory-Heidenhain stain | Tissue specimen | – | Presence or identity | Nominal value | Mallory-Heidenhain stain technique |
| 10792-0 | Microscopic observation [Identifier] in Tissue by Methenamine silver stain.Jones | Tissue specimen | – | Presence or identity | Nominal value | Jones methenamine silver stain technique |
| 10793-8 | Microscopic observation [Identifier] in Tissue by Methyl green stain | Tissue specimen | – | Presence or identity | Nominal value | Methyl green stain technique |
| 10794-6 | Microscopic observation [Identifier] in Tissue by Methyl green-pyronine Y stain | Tissue specimen | – | Presence or identity | Nominal value | Methyl green-pyronin Y stain technique |
| 10795-3 | Microscopic observation [Identifier] in Tissue by Methyl violet stain | Tissue specimen | – | Presence or identity | Nominal value | Methyl violet stain technique |
| 10796-1 | Microscopic observation [Identifier] in Tissue by Mucicarmine stain | Tissue specimen | – | Presence or identity | Nominal value | Mayer mucicarmine stain technique |
| 10797-9 | Microscopic observation [Identifier] in Tissue by Neutral red stain | Tissue specimen | – | Presence or identity | Nominal value | Neutral red stain technique |
| 10798-7 | Microscopic observation [Identifier] in Tissue by Oil red O stain | Tissue specimen | – | Presence or identity | Nominal value | Oil red O stain technique |
| 10799-5 | Microscopic observation [Identifier] in Tissue by Pentachrome stain.Movat | Tissue specimen | – | Presence or identity | Nominal value | Movat pentachrome stain technique |
| 10800-1 | Microscopic observation [Identifier] in Tissue by Periodic acid-Schiff stain with diastase digestion | Tissue specimen | – | Presence or identity | Nominal value | Periodic acid-Schiff with diastase stain technique |
| 10802-7 | Microscopic observation [Identifier] in Tissue by Prussian blue stain | Tissue specimen | – | Presence or identity | Nominal value | Prussian blue stain technique |
| 10803-5 | Microscopic observation [Identifier] in Tissue by Quinacrine fluorescent stain | Tissue specimen | – | Presence or identity | Nominal value | Quinacrine fluorescent stain technique |
| 10804-3 | Microscopic observation [Identifier] in Tissue by Reticulin stain | Tissue specimen | – | Presence or identity | Nominal value | Reticulin stain technique |
| 10805-0 | Microscopic observation [Identifier] in Tissue by Safranin stain | Tissue specimen | – | Presence or identity | Nominal value | Safranin stain technique |
| 10806-8 | Microscopic observation [Identifier] in Tissue by Schmorl stain | Tissue specimen | – | Presence or identity | Nominal value | Schmorl stain technique |
| 10807-6 | Microscopic observation [Identifier] in Tissue by Sevier-Munger stain | Tissue specimen | – | Presence or identity | Nominal value | Sevier-Munger stain technique |
| 10808-4 | Microscopic observation [Identifier] in Tissue by Silver impregnation stain.Dieterle | Tissue specimen | – | Presence or identity | Nominal value | Dieterle silver stain technique |
| 10809-2 | Microscopic observation [Identifier] in Tissue by Silver stain | Tissue specimen | – | Presence or identity | Nominal value | Silver stain technique |
| 10810-0 | Microscopic observation [Identifier] in Tissue by Fontana-Masson stain | Tissue specimen | – | Presence or identity | Nominal value | Fontana-Masson silver stain technique |
| 10811-8 | Microscopic observation [Identifier] in Tissue by Silver stain.Grimelius | Tissue specimen | – | Presence or identity | Nominal value | Grimelius silver stain technique |
| 10812-6 | Microscopic observation [Identifier] in Tissue by Steiner stain | Tissue specimen | – | Presence or identity | Nominal value | Steiner stain technique |
| 10813-4 | Microscopic observation [Identifier] in Tissue by Sudan black stain | Tissue specimen | – | Presence or identity | Nominal value | Sudan black B stain technique |
| 10814-2 | Microscopic observation [Identifier] in Tissue by Supravital stain | Tissue specimen | – | Presence or identity | Nominal value | Supravital stain technique |
| 10815-9 | Microscopic observation [Identifier] in Tissue by Tetrachrome stain | Tissue specimen | – | Presence or identity | Nominal value | Tetrachrome stain technique |
| 10817-5 | Microscopic observation [Identifier] in Tissue by Trichrome stain.Gomori-Wheatley | Tissue specimen | – | Presence or identity | Nominal value | Wheatley trichrome stain technique |
| 10818-3 | Microscopic observation [Identifier] in Tissue by Trichrome stain.Masson modified | Tissue specimen | – | Presence or identity | Nominal value | Modified Masson trichrome stain technique |
| 10819-1 | Microscopic observation [Identifier] in Tissue by Wade stain | Tissue specimen | – | Presence or identity | Nominal value | Wade-Fite stain technique |
| 10828-2 | Urate crystals.microscopic observation [type] in Tissue by De Galantha stain | Urate crystal | Tissue specimen | Presence or identity | Nominal value | De Galantha stain technique |
| 10856-3 | Microscopic observation [Identifier] in Genital mucus by Gram stain | Genital mucus specimen | – | Presence or identity | Nominal value | Gram stain |
| 10857-1 | Microsporidia identified in Specimen by Light microscopy | Microsporidia | Specimen | Presence or identity | Nominal value | Light microscopy |
| 10859-7 | Trypanosoma sp identified in Blood by Acridine Orange + Giemsa Stain | Genus Trypanosoma | Blood specimen | Presence or identity | Nominal value | Acridine orange and Giemsa stain technique |
| 11016-3 | Microscopic observation [Identifier] in Blood or Marrow by Esterase stain.non-specific | – | – | Presence or identity | Nominal value | Nonspecific esterase stain technique |
| 11017-1 | Microscopic observation [Identifier] in Blood or Marrow by Chloracetate esterase stain | – | – | Presence or identity | Nominal value | Chloroacetate esterase stain technique |
| 11018-9 | Microscopic observation [Identifier] in Blood or Marrow by Peroxidase stain | – | – | Presence or identity | Nominal value | Peroxidase stain technique |
| 11019-7 | Microscopic observation [Identifier] in Blood or Marrow by Sudan black B stain | – | – | Presence or identity | Nominal value | Sudan black B stain technique |
| 11020-5 | Microscopic observation [Identifier] in Blood or Marrow by Tartrate-resistant acid phosphatase stain | – | – | Presence or identity | Nominal value | Tartrate-resistant acid phosphatase stain technique |
| 11021-3 | Microscopic observation [Identifier] in Blood or Marrow by Terminal deoxynucleotidyl transferase stain | – | – | Presence or identity | Nominal value | Terminal deoxynucleotidyl transferase stain technique |
| 11068-4 | Microscopic observation [Identifier] in Body fluid by Cyto stain | Body fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 11069-2 | Microscopic observation [Identifier] in Gastric fluid by Cyto stain | Gastric fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 11070-0 | Microscopic observation [Identifier] in Urine by Cyto stain | Urine specimen | – | Presence or identity | Nominal value | Cytology stain |
| 11102-1 | Charcot-leyden crystals [type] in Specimen by Trichrome stain | Charcot-Leyden crystals | Specimen | Presence or identity | Nominal value | Trichrome stain |
| 111514-6 | Microscopic observation [Identifier] in Fistula by Gram stain | – | – | Presence or identity | Nominal value | Gram stain |
| 112887-5 | Microscopic observation [Identifier] in Penis by Gram stain | Specimen from penis | – | Presence or identity | Nominal value | Gram stain |
| 113008-7 | Microscopic observation [Identifier] in Drain by Gram stain | Drain device submitted as specimen | – | Presence or identity | Nominal value | Gram stain |
| 113049-1 | Gram positive bacteria identified in Pleural fluid by Gram stain | Gram-positive bacteria | Pleural fluid specimen | Presence or identity | Nominal value | Gram stain |
| 113056-6 | Gram positive bacteria identified in Peritoneal fluid by Gram stain | Gram-positive bacteria | Peritoneal fluid specimen | Presence or identity | Nominal value | Gram stain |
| 11476-9 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain | Gastric fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11477-7 | Microscopic observation [Identifier] in Sputum by Acid fast stain | Sputum specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11478-5 | Microscopic observation [Identifier] in Stool by Acid fast stain | Stool specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11479-3 | Microscopic observation [Identifier] in Tissue by Acid fast stain | Tissue specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11480-1 | Microscopic observation [Identifier] in Urine by Acid fast stain | Urine specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11545-1 | Microscopic observation [Identifier] in Specimen by Acid fast stain | Specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 11546-9 | Microscopic observation [Identifier] in Specimen by Other stain | Specimen | – | Presence or identity | Nominal value | Staining technique |
| 12235-8 | Microscopic observation [Identifier] in Urine sediment by Light microscopy | Urine sediment specimen | – | Presence or identity | Nominal value | Light microscopy |
| 12469-3 | Cystine crystals [type] in Stone by Light microscopy | Cystine crystal | Calculus specimen | Presence or identity | Nominal value | Light microscopy |
| 13326-4 | Pneumocystis sp identified in Specimen by Light microscopy | Pneumocystis | Specimen | Presence or identity | Nominal value | Light microscopy |
| 13496-5 | Triple phosphate crystals [type] in Stone by Light microscopy | Triple phosphate crystal | Calculus specimen | Presence or identity | Nominal value | Light microscopy |
| 13509-5 | Microscopic observation [Identifier] in Blood by Crystal violet stain | Blood specimen | – | Presence or identity | Nominal value | Crystal violet stain technique |
| 13510-3 | Microscopic observation [Identifier] in Bone marrow by Myeloperoxidase stain | Bone marrow specimen | – | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 13512-9 | Microscopic observation [Identifier] in Bone marrow by Butyrate esterase stain | Bone marrow specimen | – | Presence or identity | Nominal value | Alpha naphthyl butyrate esterase stain technique |
| 14355-2 | Microscopic observation [Identifier] in Cervix by KOH preparation | Specimen from uterine cervix | – | Presence or identity | Nominal value | KOH preparation technique |
| 14356-0 | Microscopic observation [Identifier] in Vaginal fluid by KOH preparation | Specimen from vagina | – | Presence or identity | Nominal value | KOH preparation technique |
| 14357-8 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Gram stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 14358-6 | Microscopic observation [Identifier] in Aspirate by Gram stain | Specimen obtained by aspiration | – | Presence or identity | Nominal value | Gram stain |
| 14359-4 | Microscopic observation [Identifier] in Peritoneal fluid by Gram stain | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 14360-2 | Microscopic observation [Identifier] in Pleural fluid by Gram stain | Pleural fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 14361-0 | Microscopic observation [Identifier] in Vaginal fluid by Gram stain | Specimen from vagina | – | Presence or identity | Nominal value | Gram stain |
| 14362-8 | Microscopic observation [Identifier] in Throat by Gram stain | Specimen from throat | – | Presence or identity | Nominal value | Gram stain |
| 14363-6 | Microscopic observation [Identifier] in Synovial fluid by Gram stain | Synovial fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 14364-4 | Microscopic observation [Identifier] in Eye by Gram stain | Specimen from eye | – | Presence or identity | Nominal value | Gram stain |
| 14365-1 | Microscopic observation [Identifier] in Ear by Gram stain | – | – | Presence or identity | Nominal value | Gram stain |
| 14839-5 | Trypanosoma sp identified in Buffy Coat by Light microscopy | Genus Trypanosoma | Buffy coat | Presence or identity | Nominal value | Light microscopy |
| 14841-1 | Microscopic observation [Identifier] in Specimen by Iron hematoxylin stain | Specimen | – | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 14842-9 | Microscopic observation [Identifier] in Specimen by Kinyoun iron hematoxylin stain | Specimen | – | Presence or identity | Nominal value | Kinyoun iron hematoxylin stain technique |
| 16407-9 | Asbestos identified in Sputum by Light microscopy | Asbestos | Sputum specimen | Presence or identity | Nominal value | Light microscopy |
| 17281-7 | Microscopic observation [Identifier] in Sputum by KOH preparation | Sputum specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 18305-3 | Amoeba identified in Aspirate by Iron hematoxylin stain | Amoeba | Specimen obtained by aspiration | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 18306-1 | Hydatid cyst identified in Aspirate by Iron hematoxylin stain | Echinococcus granulosa larva | Specimen obtained by aspiration | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 18326-9 | Microscopic observation [Identifier] in Cervix by Other stain | Specimen from uterine cervix | – | Presence or identity | Nominal value | Staining technique |
| 18327-7 | Microscopic observation [Identifier] in Duodenal fluid by Other stain | Duodenal fluid specimen | – | Presence or identity | Nominal value | Staining technique |
| 18328-5 | Microscopic observation [Identifier] in Body fluid by Other stain | Body fluid specimen | – | Presence or identity | Nominal value | Staining technique |
| 18497-8 | Microscopic observation [Identifier] in Thyroid fine needle aspirate by Cyto stain | Thyroid fine needle aspirate specimen | – | Presence or identity | Nominal value | Cytology stain |
| 18498-6 | Microscopic observation [Identifier] in Breast fine needle aspirate by Cyto stain | Breast fine needle aspirate specimen | – | Presence or identity | Nominal value | Cytology stain |
| 18499-4 | Microscopic observation [Identifier] in Nipple discharge by Cyto stain | Breast nipple discharge specimen | – | Presence or identity | Nominal value | Cytology stain |
| 18501-7 | Microscopic observation [Identifier] in Buccal smear by Cyto stain | Buccal smear specimen | – | Presence or identity | Nominal value | Cytology stain |
| 18502-5 | Microscopic observation [Identifier] in Deep tissue fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 18503-3 | Microscopic observation [Identifier] in Superficial tissue fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 19765-7 | Microscopic observation [Identifier] in Cervical or vaginal smear or scraping by Cyto stain | Specimen from cervix or vagina | – | Presence or identity | Nominal value | Cytology stain |
| 20882-7 | Microscopic observation [Identifier] in Stool by Electron microscopy negative stain | Stool specimen | – | Presence or identity | Nominal value | Negative stain electron microscopy technique |
| 21003-9 | Fungus identified in Specimen by Fungus stain | Fungi | Specimen | Presence or identity | Nominal value | Fungus stain method |
| 21021-1 | Microscopic observation [Identifier] in Bronchial specimen by Gram stain | Specimen from bronchus | – | Presence or identity | Nominal value | Gram stain |
| 21022-9 | Microscopic observation [Identifier] in Dialysis fluid by Gram stain | Dialysate specimen | – | Presence or identity | Nominal value | Gram stain |
| 21391-8 | Microscopic observation [Identifier] in Bone by Acid phosphatase stain | Specimen from bone | – | Presence or identity | Nominal value | Acid phosphatase stain technique |
| 22858-5 | Babesia sp identified in Tissue by Giemsa stain | Babesia | Tissue specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 24002-8 | Microscopic observation [Identifier] in Bronchial specimen by Acid fast stain | Specimen from bronchus | – | Presence or identity | Nominal value | Acid fast stain |
| 24412-9 | Coccidia identified in Small intestine Tissue by Giemsa stain | Coccidia | Tissue specimen from small intestine | Presence or identity | Nominal value | Giemsa stain technique |
| 27112-2 | Microscopic observation [Identifier] in Body fluid by Gram stain | Body fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 31187-8 | Microscopic observation [Identifier] in Lymph node fine needle aspirate by Cyto stain | Specimen from lymph node obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31188-6 | Microscopic observation [Identifier] in Kidney fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 31189-4 | Microscopic observation [Identifier] in Neck mass fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 31190-2 | Microscopic observation [Identifier] in Salivary gland fine needle aspirate by Cyto stain | Specimen from salivary gland obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31191-0 | Microscopic observation [Identifier] in Prostate fine needle aspirate by Cyto stain | Specimen from prostate obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31192-8 | Microscopic observation [Identifier] in Liver fine needle aspirate by Cyto stain | Specimen from liver obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31193-6 | Microscopic observation [Identifier] in Pancreas fine needle aspirate by Cyto stain | Specimen from pancreas obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31194-4 | Microscopic observation [Identifier] in Submandibular fine needle aspirate by Cyto stain | Specimen from submandibular gland obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31195-1 | Microscopic observation [Identifier] in Soft tissue fine needle aspirate by Cyto stain | Soft tissue lesion fine needle aspirate specimen | – | Presence or identity | Nominal value | Cytology stain |
| 31196-9 | Microscopic observation [Identifier] in Abdomen fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 31197-7 | Microscopic observation [Identifier] in Pelvis fine needle aspirate by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 31198-5 | Microscopic observation [Identifier] in Parotid fine needle aspirate by Cyto stain | Specimen from parotid gland obtained by fine needle aspiration biopsy | – | Presence or identity | Nominal value | Cytology stain |
| 31199-3 | Microscopic observation [Identifier] in Lung fine needle aspirate by Cyto stain | Specimen from lung obtained by fine needle aspiration procedure | – | Presence or identity | Nominal value | Cytology stain |
| 32026-7 | Microscopic observation [Identifier] in Nose by Gram stain | Specimen from nose | – | Presence or identity | Nominal value | Gram stain |
| 32188-5 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acid fast stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 32189-3 | Microscopic observation [Identifier] in Body fluid by Acid fast stain | Body fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 32206-5 | Plasmodium sp identified in Blood by Light microscopy | Plasmodium | Blood specimen | Presence or identity | Nominal value | Light microscopy |
| 32699-1 | Microscopic observation [Identifier] in Blood by Acid fast stain | Blood specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 32798-1 | Microscopic observation [Identifier] in Specimen by Oil red O stain | Specimen | – | Presence or identity | Nominal value | Oil red O stain technique |
| 32809-6 | Fungus identified in Bronchial specimen by Fungus stain | Fungi | Specimen from bronchus | Presence or identity | Nominal value | Fungus stain method |
| 32811-2 | Microscopic observation [Identifier] in Bronchial specimen by Iron hematoxylin stain | Specimen from bronchus | – | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 32812-0 | Microscopic observation [Identifier] in Bronchial specimen by Oil red O stain | Specimen from bronchus | – | Presence or identity | Nominal value | Oil red O stain technique |
| 32814-6 | Microscopic observation [Identifier] in Specimen by Chloracetate esterase stain | Specimen | – | Presence or identity | Nominal value | Chloroacetate esterase stain technique |
| 32815-3 | Microscopic observation [Identifier] in Specimen by Sudan black B stain | Specimen | – | Presence or identity | Nominal value | Sudan black B stain technique |
| 32816-1 | Microscopic observation [Identifier] in Specimen by Terminal deoxynucleotidyl transferase stain | Specimen | – | Presence or identity | Nominal value | Terminal deoxynucleotidyl transferase stain technique |
| 32817-9 | Microscopic observation [Identifier] in Specimen by Myeloperoxidase stain | Specimen | – | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 32818-7 | Microscopic observation [Identifier] in Specimen by Acetate esterase stain | Specimen | – | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 32819-5 | Microsporidia identified in Stool by Trichrome stain | Microsporidia | Stool specimen | Presence or identity | Nominal value | Trichrome stain |
| 32824-5 | Microscopic observation [Identifier] in Specimen by Tartrate-resistant acid phosphatase stain | Specimen | – | Presence or identity | Nominal value | Tartrate-resistant acid phosphatase stain technique |
| 33038-1 | Candida sp identified in Vaginal fluid by Cyto stain | Candida | Specimen from vagina | Presence or identity | Nominal value | Cytology stain |
| 33039-9 | Fungus identified in Body fluid by Fungus stain | Fungi | Body fluid specimen | Presence or identity | Nominal value | Fungus stain method |
| 33270-0 | Microscopic observation [Identifier] in Buffy Coat by Light microscopy | Buffy coat | – | Presence or identity | Nominal value | Light microscopy |
| 33675-0 | Microscopic observation [Identifier] in Specimen by Esterase stain.combined | Specimen | – | Presence or identity | Nominal value | Combined esterase stain technique |
| 33699-0 | Microscopic observation [Identifier] in Specimen by Malachite green stain | Specimen | – | Presence or identity | Nominal value | Malachite green stain technique |
| 34166-9 | Microscopic observation [Identifier] in Specimen by Electron microscopy | Specimen | – | Presence or identity | Nominal value | Electron microscopy |
| 34959-7 | Microscopic observation [Identifier] in Blood by Myeloperoxidase stain | Blood specimen | – | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 38397-6 | Crystals [type] in Amniotic fluid by Light microscopy | Crystal - body material | Amniotic fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 38398-4 | Crystals [type] in Pericardial fluid by Light microscopy | Crystal - body material | Pericardial fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 38399-2 | Crystals [type] in Peritoneal fluid by Light microscopy | Crystal - body material | Peritoneal fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 38519-5 | Microscopic observation [Identifier] in Blood or Marrow by Prussian blue stain | – | – | Presence or identity | Nominal value | Prussian blue stain technique |
| 42209-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Cyto stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 42210-5 | Microscopic observation [Identifier] in Bronchial specimen by Cyto stain | Specimen from bronchus | – | Presence or identity | Nominal value | Cytology stain |
| 42343-4 | Toxoplasma gondii identified in Specimen by Other stain | Toxoplasma gondii | Specimen | Presence or identity | Nominal value | Staining technique |
| 42764-1 | Crystals [type] in Vitreous fluid by Light microscopy | Crystal - body material | Vitreous humor specimen | Presence or identity | Nominal value | Light microscopy |
| 43417-5 | Microscopic observation [Identifier] in Esophageal brushing by Cyto stain | Esophageal brushings specimen | – | Presence or identity | Nominal value | Cytology stain |
| 44098-2 | Microscopic observation [Identifier] in Specimen by Wayson stain | Specimen | – | Presence or identity | Nominal value | Wayson stain technique |
| 47611-9 | Crystals [type] in Tissue by Light microscopy | Crystal - body material | Tissue specimen | Presence or identity | Nominal value | Light microscopy |
| 48712-4 | Microscopic observation [Identifier] in Genital specimen by Gram stain | Specimen from genital system | – | Presence or identity | Nominal value | Gram stain |
| 48722-3 | Microscopic observation [Identifier] in Body fluid by Crystal violet stain | Body fluid specimen | – | Presence or identity | Nominal value | Crystal violet stain technique |
| 49034-2 | Microorganism identified in Cervical or vaginal smear or scraping by Cyto stain | Organism | Specimen from cervix or vagina | Presence or identity | Nominal value | Cytology stain |
| 49050-8 | Microscopic observation [Identifier] in Endocervical brush by Cyto stain | – | – | Presence or identity | Nominal value | Cytology stain |
| 51709-4 | Leishmania sp identified in Specimen by Giemsa stain | Leishmania | Specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 51714-4 | Microscopic observation [Identifier] in Blood by Giemsa stain | Blood specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 53522-9 | Microscopic observation [Identifier] in Bronchial specimen by Rhodamine-auramine fluorochrome stain | Specimen from bronchus | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53785-2 | Microscopic observation [Identifier] in Urine by Wright stain | Urine specimen | – | Presence or identity | Nominal value | Wright stain method |
| 53786-0 | Microscopic observation [Identifier] in Stool by Wright stain | Stool specimen | – | Presence or identity | Nominal value | Wright stain method |
| 53904-9 | Microscopic observation [Identifier] in Sputum by Rhodamine-auramine fluorochrome stain | Sputum specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53905-6 | Microscopic observation [Identifier] in Urine by Rhodamine-auramine fluorochrome stain | Urine specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53906-4 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Rhodamine-auramine fluorochrome stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53907-2 | Microscopic observation [Identifier] in Pleural fluid by Rhodamine-auramine fluorochrome stain | Pleural fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53910-6 | Microscopic observation [Identifier] in Peritoneal fluid by Rhodamine-auramine fluorochrome stain | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53912-2 | Microscopic observation [Identifier] in Body fluid by Rhodamine-auramine fluorochrome stain | Body fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53913-0 | Microscopic observation [Identifier] in Synovial fluid by Rhodamine-auramine fluorochrome stain | Synovial fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53914-8 | Microscopic observation [Identifier] in Endometrium by Rhodamine-auramine fluorochrome stain | Specimen from endometrium | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53915-5 | Microscopic observation [Identifier] in Pericardial fluid by Rhodamine-auramine fluorochrome stain | Pericardial fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53916-3 | Microscopic observation [Identifier] in Gastric fluid by Rhodamine-auramine fluorochrome stain | Gastric fluid specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53918-9 | Microscopic observation [Identifier] in Bone marrow by Rhodamine-auramine fluorochrome stain | Bone marrow specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 55222-4 | Microscopic observation [Identifier] in Aspirate by Rhodamine-auramine fluorochrome stain | Specimen obtained by aspiration | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 55600-1 | Microscopic observation [Identifier] in Peritoneal fluid by Cyto stain | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 55601-9 | Microscopic observation [Identifier] in Pericardial fluid by Cyto stain | Pericardial fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 55602-7 | Microscopic observation [Identifier] in Pleural fluid by Cyto stain | Pleural fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 55603-5 | Microscopic observation [Identifier] in Synovial fluid by Cyto stain | Synovial fluid specimen | – | Presence or identity | Nominal value | Cytology stain |
| 55604-3 | Microscopic observation [Identifier] in Endometrium by Cyto stain | Specimen from endometrium | – | Presence or identity | Nominal value | Cytology stain |
| 5779-4 | Crystals [type] in Bile fluid by Light microscopy | Crystal - body material | Bile specimen | Presence or identity | Nominal value | Light microscopy |
| 5780-2 | Crystals [type] in Duodenal fluid by Light microscopy | Crystal - body material | Duodenal fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 5781-0 | Crystals [type] in Synovial fluid by Light microscopy | Crystal - body material | Synovial fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 5782-8 | Crystals [type] in Urine sediment by Light microscopy | Crystal - body material | Urine sediment specimen | Presence or identity | Nominal value | Light microscopy |
| 58942-4 | Microscopic observation [Identifier] in Pleural fluid by Acid fast stain.Ziehl-Neelsen | Pleural fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58943-2 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acid fast stain.Ziehl-Neelsen | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58944-0 | Microscopic observation [Identifier] in Body fluid by Acid fast stain.Ziehl-Neelsen | Body fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58945-7 | Microscopic observation [Identifier] in Peritoneal fluid by Acid fast stain.Ziehl-Neelsen | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 59474-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acridine orange stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Acridine orange stain technique |
| 63433-7 | Microscopic observation [Identifier] in Synovial fluid by Acid fast stain.Ziehl-Neelsen | Synovial fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 638-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by India ink prep | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | India ink staining technique |
| 639-5 | Microscopic observation [Identifier] in Cerebrospinal Fluid by KOH preparation | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 640-3 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Kinyoun | Gastric fluid specimen | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 642-9 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Ziehl-Neelsen | Gastric fluid specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 643-7 | Microscopic observation [Identifier] in Pus by Gram stain | Pus specimen | – | Presence or identity | Nominal value | Gram stain |
| 644-5 | Microscopic observation [Identifier] in Skin by KOH preparation | Specimen from skin | – | Presence or identity | Nominal value | KOH preparation technique |
| 645-2 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Kinyoun | Sputum specimen | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 6464-2 | Microscopic observation [Identifier] in Cervix by Gram stain | Specimen from uterine cervix | – | Presence or identity | Nominal value | Gram stain |
| 6465-9 | Microscopic observation [Identifier] in Duodenal fluid by Trichrome stain | Duodenal fluid specimen | – | Presence or identity | Nominal value | Trichrome stain |
| 6467-5 | Microscopic observation [Identifier] in Genital fluid by Gram stain | Genital fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 6468-3 | Microscopic observation [Identifier] in Sputum by Calcofluor white | Sputum specimen | – | Presence or identity | Nominal value | Calcofluor white stain technique |
| 6469-1 | Microscopic observation [Identifier] in Stool by Trichrome stain | Stool specimen | – | Presence or identity | Nominal value | Trichrome stain |
| 647-8 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen | Sputum specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 6471-7 | Microscopic observation [Identifier] in Tissue by Other stain | Tissue specimen | – | Presence or identity | Nominal value | Staining technique |
| 6472-5 | Microscopic observation [Identifier] in Tissue by Calcofluor white | Tissue specimen | – | Presence or identity | Nominal value | Calcofluor white stain technique |
| 6473-3 | Microscopic observation [Identifier] in Tissue by Trichrome stain | Tissue specimen | – | Presence or identity | Nominal value | Trichrome stain |
| 6474-1 | Microscopic observation [Identifier] in Urethra by Gram stain | Specimen from urethra | – | Presence or identity | Nominal value | Gram stain |
| 648-6 | Microscopic observation [Identifier] in Sputum by Gram stain | Sputum specimen | – | Presence or identity | Nominal value | Gram stain |
| 649-4 | Microscopic observation [Identifier] in Stool by Gram stain | Stool specimen | – | Presence or identity | Nominal value | Gram stain |
| 650-2 | Microscopic observation [Identifier] in Urine by Acid fast stain.Kinyoun | Urine specimen | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 652-8 | Microscopic observation [Identifier] in Urine by Acid fast stain.Ziehl-Neelsen | Urine specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 653-6 | Microscopic observation [Identifier] in Urine by Gram stain | Urine specimen | – | Presence or identity | Nominal value | Gram stain |
| 654-4 | Microscopic observation [Identifier] in Specimen by Acid fast stain.Kinyoun | Specimen | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 656-9 | Microscopic observation [Identifier] in Specimen by Acid fast stain.Ziehl-Neelsen | Specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 657-7 | Microscopic observation [Identifier] in Specimen by Acridine orange stain | Specimen | – | Presence or identity | Nominal value | Acridine orange stain technique |
| 658-5 | Microscopic observation [Identifier] in Specimen by Calcofluor white | Specimen | – | Presence or identity | Nominal value | Calcofluor white stain technique |
| 659-3 | Microscopic observation [Identifier] in Specimen by Carbol-fuchsin stain | Specimen | – | Presence or identity | Nominal value | Carbol-fuchsin stain technique |
| 662-7 | Microscopic observation [Identifier] in Specimen by Giemsa stain | Specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 663-5 | Microscopic observation [Identifier] in Specimen by Gimenez stain | Specimen | – | Presence or identity | Nominal value | Gimenez stain technique |
| 664-3 | Microscopic observation [Identifier] in Specimen by Gram stain | Specimen | – | Presence or identity | Nominal value | Gram stain |
| 665-0 | Microscopic observation [Identifier] in Specimen by Hematoxylin and eosin stain | Specimen | – | Presence or identity | Nominal value | Hematoxylin and eosin stain technique |
| 6655-5 | Microscopic observation [Identifier] in Tissue by Acid fast stain.Kinyoun | Tissue specimen | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 6657-1 | Microscopic observation [Identifier] in Tissue by Acid fast stain.Ziehl-Neelsen | Tissue specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 6658-9 | Microscopic observation [Identifier] in Tissue by Acridine orange stain | Tissue specimen | – | Presence or identity | Nominal value | Acridine orange stain technique |
| 6659-7 | Microscopic observation [Identifier] in Tissue by Carbol-fuchsin stain | Tissue specimen | – | Presence or identity | Nominal value | Carbol-fuchsin stain technique |
| 666-8 | Microscopic observation [Identifier] in Specimen by India ink prep | Specimen | – | Presence or identity | Nominal value | India ink staining technique |
| 6662-1 | Microscopic observation [Identifier] in Tissue by Giemsa stain | Tissue specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 6663-9 | Microscopic observation [Identifier] in Tissue by Gimenez stain | Tissue specimen | – | Presence or identity | Nominal value | Gimenez stain technique |
| 6664-7 | Microscopic observation [Identifier] in Tissue by Gram stain | Tissue specimen | – | Presence or identity | Nominal value | Gram stain |
| 6665-4 | Microscopic observation [Identifier] in Tissue by Hematoxylin and eosin stain | Tissue specimen | – | Presence or identity | Nominal value | Hematoxylin and eosin stain technique |
| 6666-2 | Microscopic observation [Identifier] in Tissue by India ink prep | Tissue specimen | – | Presence or identity | Nominal value | India ink staining technique |
| 6667-0 | Microscopic observation [Identifier] in Tissue by KOH preparation | Tissue specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 6668-8 | Microscopic observation [Identifier] in Tissue by M'Fadyean stain | Tissue specimen | – | Presence or identity | Nominal value | M'Fadyean stain technique |
| 6669-6 | Microscopic observation [Identifier] in Tissue by Macchiavello stain | Tissue specimen | – | Presence or identity | Nominal value | Macchiavello stain technique |
| 667-6 | Microscopic observation [Identifier] in Specimen by KOH preparation | Specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 6671-2 | Microscopic observation [Identifier] in Tissue by Methenamine silver nitrate stain | Tissue specimen | – | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 6672-0 | Microscopic observation [Identifier] in Tissue by Methylene blue stain.Loeffler | Tissue specimen | – | Presence or identity | Nominal value | Loeffler methylene blue stain technique |
| 6673-8 | Microscopic observation [Identifier] in Tissue by Neisser stain | Tissue specimen | – | Presence or identity | Nominal value | Neisser stain technique |
| 6675-3 | Microscopic observation [Identifier] in Tissue by Periodic acid-Schiff stain | Tissue specimen | – | Presence or identity | Nominal value | Periodic acid Schiff stain technique |
| 6677-9 | Microscopic observation [Identifier] in Tissue by Rhodamine-auramine fluorochrome stain | Tissue specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 6678-7 | Microscopic observation [Identifier] in Tissue by Toluidine blue O stain | Tissue specimen | – | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 6679-5 | Microscopic observation [Identifier] in Tissue by Warthin-Starry stain | Tissue specimen | – | Presence or identity | Nominal value | Warthin-Starry stain technique |
| 668-4 | Microscopic observation [Identifier] in Specimen by M'Fadyean stain | Specimen | – | Presence or identity | Nominal value | M'Fadyean stain technique |
| 6681-1 | Microscopic observation [Identifier] in Tissue by Wright stain | Tissue specimen | – | Presence or identity | Nominal value | Wright stain method |
| 6682-9 | Microscopic observation [Identifier] in Tissue by Wright Giemsa stain | Tissue specimen | – | Presence or identity | Nominal value | Wright-Giemsa stain |
| 669-2 | Microscopic observation [Identifier] in Specimen by Macchiavello stain | Specimen | – | Presence or identity | Nominal value | Macchiavello stain technique |
| 670-0 | Microscopic observation [Identifier] in Specimen by Methenamine silver nitrate stain | Specimen | – | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 671-8 | Microscopic observation [Identifier] in Specimen by Methylene blue stain.Loeffler | Specimen | – | Presence or identity | Nominal value | Loeffler methylene blue stain technique |
| 672-6 | Microscopic observation [Identifier] in Specimen by Neisser stain | Specimen | – | Presence or identity | Nominal value | Neisser stain technique |
| 674-2 | Microscopic observation [Identifier] in Specimen by Periodic acid-Schiff stain | Specimen | – | Presence or identity | Nominal value | Periodic acid Schiff stain technique |
| 676-7 | Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain | Specimen | – | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 677-5 | Microscopic observation [Identifier] in Specimen by Toluidine blue O stain | Specimen | – | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 678-3 | Microscopic observation [Identifier] in Specimen by Trichrome stain | Specimen | – | Presence or identity | Nominal value | Trichrome stain |
| 679-1 | Microscopic observation [Identifier] in Specimen by Warthin-Starry stain | Specimen | – | Presence or identity | Nominal value | Warthin-Starry stain technique |
| 681-7 | Microscopic observation [Identifier] in Specimen by Wright stain | Specimen | – | Presence or identity | Nominal value | Wright stain method |
| 682-5 | Microscopic observation [Identifier] in Specimen by Wright Giemsa stain | Specimen | – | Presence or identity | Nominal value | Wright-Giemsa stain |
| 6825-4 | Crystals [type] in Body fluid by Light microscopy | Crystal - body material | Body fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 6826-2 | Crystals [type] in Pleural fluid by Light microscopy | Crystal - body material | Pleural fluid specimen | Presence or identity | Nominal value | Light microscopy |
| 68383-9 | Microscopic observation [Identifier] in Body fluid by KOH preparation | Body fluid specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 68958-8 | Microscopic observation [Identifier] in Urine by KOH preparation | Urine specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 72408-8 | Microscopic observation [Identifier] in Anal by Gram stain | Specimen from anus | – | Presence or identity | Nominal value | Gram stain |
| 73694-2 | Microscopic observation [Identifier] in Blood by KOH preparation | Blood specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 75222-0 | Microscopic observation [Identifier] in Throat by Alberts stain | Specimen from throat | – | Presence or identity | Nominal value | Albert stain technique |
| 76082-7 | Microscopic observation [Identifier] in Bronchoalveolar lavage by Methenamine silver nitrate stain | Bronchoalveolar lavage fluid specimen | – | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 79375-2 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen--2nd specimen | Sputum specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 79376-0 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen--3rd specimen | Sputum specimen | – | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 81423-6 | Microscopic observation [Identifier] in Bone marrow by Acetate esterase stain | Bone marrow specimen | – | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 81424-4 | Microscopic observation [Identifier] in Bone marrow by Toluidine blue O stain | Bone marrow specimen | – | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 81425-1 | Microscopic observation [Identifier] in Bone marrow by Oil red O stain | Bone marrow specimen | – | Presence or identity | Nominal value | Oil red O stain technique |
| 81426-9 | Microscopic observation [Identifier] in Venous blood by Acetate esterase stain | Venous blood specimen | – | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 81427-7 | Microscopic observation [Identifier] in Venous blood by Oil red O stain | Venous blood specimen | – | Presence or identity | Nominal value | Oil red O stain technique |
| 8250-3 | Microscopic observation [Identifier] in Stool by Electron microscopy | Stool specimen | – | Presence or identity | Nominal value | Electron microscopy |
| 87965-0 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Giemsa stain | Cerebrospinal fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 87966-8 | Microscopic observation [Identifier] in Bone marrow by Giemsa stain | Bone marrow specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 87967-6 | Microscopic observation [Identifier] in Bone marrow by Gram stain | Bone marrow specimen | – | Presence or identity | Nominal value | Gram stain |
| 87968-4 | Microscopic observation [Identifier] in Body fluid by Giemsa stain | Body fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 87969-2 | Microscopic observation [Identifier] in Blood by Gram stain | Blood specimen | – | Presence or identity | Nominal value | Gram stain |
| 87970-0 | Microscopic observation [Identifier] in Amniotic fluid by Giemsa stain | Amniotic fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 87971-8 | Microscopic observation [Identifier] in Amniotic fluid by Gram stain | Amniotic fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 87972-6 | Microscopic observation [Identifier] in Sinus by Gram stain | – | – | Presence or identity | Nominal value | Gram stain |
| 87973-4 | Microscopic observation [Identifier] in Semen by Gram stain | Semen sample | – | Presence or identity | Nominal value | Gram stain |
| 87974-2 | Microscopic observation [Identifier] in Burn by Gram stain | Specimen from burn injury | – | Presence or identity | Nominal value | Gram stain |
| 87975-9 | Microscopic observation [Identifier] in Isolate by Gram stain | Microbial isolate | – | Presence or identity | Nominal value | Gram stain |
| 87999-9 | Microscopic observation [Identifier] in Contact lens by Gram stain | Contact lens submitted as specimen | – | Presence or identity | Nominal value | Gram stain |
| 88000-5 | Microscopic observation [Identifier] in Pleural fluid by Giemsa stain | Pleural fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 88001-3 | Microscopic observation [Identifier] in Peritoneal dialysis fluid by Gram stain | Peritoneal dialysate specimen | – | Presence or identity | Nominal value | Gram stain |
| 88144-1 | Microscopic observation [Identifier] in Peritoneal fluid by Acid fast stain | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88145-8 | Microscopic observation [Identifier] in Pericardial fluid by Acid fast stain | Pericardial fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88146-6 | Microscopic observation [Identifier] in Placenta by Gram stain | Specimen from placenta | – | Presence or identity | Nominal value | Gram stain |
| 88147-4 | Microscopic observation [Identifier] in Pericardial fluid by Gram stain | Pericardial fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 88148-2 | Microscopic observation [Identifier] in Genital specimen by Acid fast stain | Specimen from genital system | – | Presence or identity | Nominal value | Acid fast stain |
| 88149-0 | Microscopic observation [Identifier] in Nasopharynx by Gram stain | Specimen from nasopharynx | – | Presence or identity | Nominal value | Gram stain |
| 88150-8 | Microscopic observation [Identifier] in Ocular fluid by Giemsa stain | Eye fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 88151-6 | Microscopic observation [Identifier] in Wound by Acid fast stain | Specimen from wound | – | Presence or identity | Nominal value | Acid fast stain |
| 88152-4 | Microscopic observation [Identifier] in Cervix by Acid fast stain.Kinyoun | Specimen from uterine cervix | – | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 88153-2 | Microscopic observation [Identifier] in Bone marrow by Acid fast stain | Bone marrow specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88154-0 | Microscopic observation [Identifier] in Sinus by Acid fast stain | – | – | Presence or identity | Nominal value | Acid fast stain |
| 88155-7 | Microscopic observation [Identifier] in Ocular fluid by Acid fast stain | Eye fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88156-5 | Microscopic observation [Identifier] in Amniotic fluid by Acid fast stain | Amniotic fluid specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88157-3 | Microscopic observation [Identifier] in Semen by Acid fast stain | Semen sample | – | Presence or identity | Nominal value | Acid fast stain |
| 88158-1 | Microscopic observation [Identifier] in Ocular fluid by Gram stain | Eye fluid specimen | – | Presence or identity | Nominal value | Gram stain |
| 88159-9 | Microscopic observation [Identifier] in Aspirate by Acid fast stain | Specimen obtained by aspiration | – | Presence or identity | Nominal value | Acid fast stain |
| 88170-6 | Microscopic observation [Identifier] in Cornea or Conjunctiva by Gram stain | – | – | Presence or identity | Nominal value | Gram stain |
| 88231-6 | Microscopic observation [Identifier] in Bile fluid by Acid fast stain | Bile specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 88235-7 | Microscopic observation [Identifier] in Synovial fluid by Giemsa stain | Synovial fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 88337-1 | Mite identified in Ear by Light microscopy | Mite | – | Presence or identity | Nominal value | Light microscopy |
| 88632-5 | Microscopic observation [Identifier] in Lower respiratory specimen by Gram stain | Lower respiratory tract specimen | – | Presence or identity | Nominal value | Gram stain |
| 88633-3 | Microscopic observation [Identifier] in Lower respiratory specimen by Giemsa stain | Lower respiratory tract specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 88634-1 | Microscopic observation [Identifier] in Saliva (oral fluid) by Gram stain | Saliva specimen | – | Presence or identity | Nominal value | Gram stain |
| 88635-8 | Microscopic observation [Identifier] in Vomitus by Gram stain | Vomitus specimen | – | Presence or identity | Nominal value | Gram stain |
| 88684-6 | Microscopic observation [Identifier] in Aspirate by Giemsa stain | Specimen obtained by aspiration | – | Presence or identity | Nominal value | Giemsa stain technique |
| 88685-3 | Microscopic observation [Identifier] in Lower respiratory specimen by KOH preparation | Lower respiratory tract specimen | – | Presence or identity | Nominal value | KOH preparation technique |
| 89582-1 | Microscopic observation [Identifier] in Cervix by Acid fast stain | Specimen from uterine cervix | – | Presence or identity | Nominal value | Acid fast stain |
| 89657-1 | Microscopic observation [Identifier] in Lower respiratory specimen by Toluidine blue O stain | Lower respiratory tract specimen | – | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 89658-9 | Microscopic observation [Identifier] in Lower respiratory specimen by Methenamine silver nitrate stain | Lower respiratory tract specimen | – | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 89659-7 | Microscopic observation [Identifier] in Implanted device by Gram stain | Implant submitted as specimen | – | Presence or identity | Nominal value | Gram stain |
| 89660-5 | Microscopic observation [Identifier] in Implanted device by Acid fast stain | Implant submitted as specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 89661-3 | Microscopic observation [Identifier] in Upper respiratory specimen by Acid fast stain | Upper respiratory specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 89662-1 | Microscopic observation [Identifier] in Lower respiratory specimen by Acid fast stain | Lower respiratory tract specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 90261-9 | Microscopic observation [Identifier] in Bile fluid by Giemsa stain | Bile specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 90262-7 | Microscopic observation [Identifier] in Bile fluid by Gram stain | Bile specimen | – | Presence or identity | Nominal value | Gram stain |
| 90263-5 | Microscopic observation [Identifier] in Milk by Gram stain | Milk specimen | – | Presence or identity | Nominal value | Gram stain |
| 90267-6 | Microscopic observation [Identifier] in Pericardial fluid by Giemsa stain | Pericardial fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 90268-4 | Microscopic observation [Identifier] in Peritoneal fluid by Giemsa stain | Peritoneal fluid specimen | – | Presence or identity | Nominal value | Giemsa stain technique |
| 90269-2 | Microscopic observation [Identifier] in Milk by Acid fast stain | Milk specimen | – | Presence or identity | Nominal value | Acid fast stain |
| 90282-5 | Microscopic observation [Identifier] in Catheter tip by Gram stain | Catheter tip submitted as specimen | – | Presence or identity | Nominal value | Gram stain |
| 90296-5 | Microscopic observation [Identifier] in Skin by Gram stain | Specimen from skin | – | Presence or identity | Nominal value | Gram stain |
| 91808-6 | Microscopic observation [Identifier] in Upper respiratory specimen by Gram stain | Upper respiratory specimen | – | Presence or identity | Nominal value | Gram stain |
| 91850-8 | Microscopic observation [Identifier] in Genital specimen by Giemsa stain | Specimen from genital system | – | Presence or identity | Nominal value | Giemsa stain technique |
| 94543-6 | Microscopic observation [Identifier] in Skin by Acid fast stain | Specimen from skin | – | Presence or identity | Nominal value | Acid fast stain |
| 96035-1 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.with hyaluronidase | Tissue specimen | – | Presence or identity | Nominal value | Alcian blue stain with hyaluronidase technique |
| 96713-3 | Microscopic observation [Identifier] in Body fluid by Light microscopy | Body fluid specimen | – | Presence or identity | Nominal value | Light microscopy |
| 9786-5 | Microscopic observation [Identifier] in Blood or Marrow by Periodic acid-Schiff stain | – | – | Presence or identity | Nominal value | Periodic acid Schiff stain technique |
| 9787-3 | Sarcoptes scabiei identified in Skin by Light microscopy | Sarcoptes scabiei | Specimen from skin | Presence or identity | Nominal value | Light microscopy |
| 98025-0 | Fungus identified in Prostatic fluid by Fungus stain | Fungi | Prostatic fluid specimen | Presence or identity | Nominal value | Fungus stain method |
| 98028-4 | Crystals [type] in Semen by Light microscopy | Crystal - body material | Semen sample | Presence or identity | Nominal value | Light microscopy |
| 98029-2 | Crystals [type] in Stool by Light microscopy | Crystal - body material | Stool specimen | Presence or identity | Nominal value | Light microscopy |

### General microscopy — method-neutral 'finding in specimen' pattern

The technique-free pattern of 105059-0: nominal Presence or identity that inheres in the specimen itself (no organism, no technique). Catches the method-neutral microscopy codes that the technique filter misses.

ValueSet [mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen](ValueSet-mii-vs-mikrobio-loinc-ontology-general-microscopy-in-specimen.html). Part of the union ValueSet [mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie](ValueSet-mii-vs-mikrobio-loinc-ontology-allgemeine-mikroskopie.html), bound by the derived profile [mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-allgemeine-mikroskopie.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = 118584009 |Presence or identity (property) (qualifier value)|, 370132008 |Scale type (attribute)| = 117362005 |Nominal value (qualifier value)|, 704319004 |Inheres in (attribute)| = << 123038009 |Specimen (specimen)|
```

| Attribute | Value |
|---|---|
| Property | Presence or identity |
| Scale type | Nominal value |
| Inheres in | `<< Specimen` |

The rule selects **357** concepts (357 with a LOINC code, 0 without). Release 2026-03-21 → 2026-10-21: **+2 / −0** (lists on the [release delta](loinc-ontology-release-delta.html) page).

#### Codes (357)

| LOINC | Name | Inheres in | Property | Scale type | Technique |
|---|---|---|---|---|---|
| 10355-6 | Microscopic observation [Identifier] in Bone marrow by Wright Giemsa stain | Bone marrow specimen | Presence or identity | Nominal value | Wright-Giemsa stain |
| 10357-2 | Microscopic observation [Identifier] in Wound by Gram stain | Specimen from wound | Presence or identity | Nominal value | Gram stain |
| 104866-9 | Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep.computer assisted | Specimen from uterine cervix | Presence or identity | Nominal value | Computer assisted ThinPrep cytology technique |
| 105059-0 | Microscopic observation [Identifier] in Specimen | Specimen | Presence or identity | Nominal value | – |
| 10524-7 | Microscopic observation [Identifier] in Cervix by Cyto stain | Specimen from uterine cervix | Presence or identity | Nominal value | Cytology stain |
| 10525-4 | Microscopic observation [Identifier] in Specimen by Cyto stain | Specimen | Presence or identity | Nominal value | Cytology stain |
| 10526-2 | Microscopic observation [Identifier] in Sputum by Cyto stain | Sputum specimen | Presence or identity | Nominal value | Cytology stain |
| 10527-0 | Microscopic observation [Identifier] in Tissue by Cyto stain | Tissue specimen | Presence or identity | Nominal value | Cytology stain |
| 10637-7 | Microscopic observation [Identifier] in Tissue by Night blue stain | Tissue specimen | Presence or identity | Nominal value | Night blue stain technique |
| 10688-0 | Microscopic observation [Identifier] in Hair by KOH preparation | Hair specimen | Presence or identity | Nominal value | KOH preparation technique |
| 10689-8 | Microscopic observation [Identifier] in Nail by KOH preparation | Nail specimen | Presence or identity | Nominal value | KOH preparation technique |
| 107589-4 | Microscopic observation [Identifier] in Synovial fluid by Acid fast stain.Kinyoun modified | Synovial fluid specimen | Presence or identity | Nominal value | – |
| 107590-2 | Microscopic observation [Identifier] in Drain by Acid fast stain.Kinyoun modified | Drain device submitted as specimen | Presence or identity | Nominal value | – |
| 107591-0 | Microscopic observation [Identifier] in Peritoneal fluid by Acid fast stain.Kinyoun modified | Peritoneal fluid specimen | Presence or identity | Nominal value | – |
| 107592-8 | Microscopic observation [Identifier] in Pericardial fluid by Acid fast stain.Kinyoun modified | Pericardial fluid specimen | Presence or identity | Nominal value | – |
| 107593-6 | Microscopic observation [Identifier] in Bronchoalveolar lavage by Acid fast stain.Kinyoun modified | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | – |
| 107598-5 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acid fast stain.Kinyoun modified | Cerebrospinal fluid specimen | Presence or identity | Nominal value | – |
| 107599-3 | Microscopic observation [Identifier] in Body fluid by Acid fast stain.Kinyoun modified | Body fluid specimen | Presence or identity | Nominal value | – |
| 107600-9 | Microscopic observation [Identifier] in Pus by Acid fast stain.Kinyoun modified | Pus specimen | Presence or identity | Nominal value | – |
| 107601-7 | Microscopic observation [Identifier] in Lymph node by Acid fast stain.Kinyoun modified | Lymph node specimen | Presence or identity | Nominal value | – |
| 107602-5 | Microscopic observation [Identifier] in Aspirate by Acid fast stain.Kinyoun modified | Specimen obtained by aspiration | Presence or identity | Nominal value | – |
| 10763-1 | Microscopic observation [Identifier] in Body fluid by Sudan black stain | Body fluid specimen | Presence or identity | Nominal value | Sudan black B stain technique |
| 10764-9 | Microscopic observation [Identifier] in Sputum by Silver stain | Sputum specimen | Presence or identity | Nominal value | Silver stain technique |
| 10765-6 | Microscopic observation [Identifier] in Tissue by Acetate esterase stain | Tissue specimen | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 10766-4 | Microscopic observation [Identifier] in Tissue by Alcian blue stain | Tissue specimen | Presence or identity | Nominal value | Alcian blue stain technique |
| 10767-2 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.sulfated | Tissue specimen | Presence or identity | Nominal value | Sulfated alcian blue stain technique |
| 10768-0 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.with periodic acid-Schiff | Tissue specimen | Presence or identity | Nominal value | Alcian blue and periodic acid-Schiff stain technique |
| 10769-8 | Microscopic observation [Identifier] in Tissue by Alizarin red S stain | Tissue specimen | Presence or identity | Nominal value | Alizarin red S stain technique |
| 10770-6 | Microscopic observation [Identifier] in Tissue by Argentaffin stain | Tissue specimen | Presence or identity | Nominal value | Argentaffin stain technique |
| 10772-2 | Microscopic observation [Identifier] in Tissue by Azure-eosin stain | Tissue specimen | Presence or identity | Nominal value | Azure B-eosin stain technique |
| 10773-0 | Microscopic observation [Identifier] in Tissue by Basic fuchsin stain | Tissue specimen | Presence or identity | Nominal value | Basic fuchsin stain technique |
| 10774-8 | Microscopic observation [Identifier] in Tissue by Bielschowsky stain | Tissue specimen | Presence or identity | Nominal value | Bielschowsky silver stain technique |
| 10775-5 | Microscopic observation [Identifier] in Tissue by Bleach stain | Tissue specimen | Presence or identity | Nominal value | Melanin bleach stain technique |
| 10776-3 | Microscopic observation [Identifier] in Tissue by Bodian stain | Tissue specimen | Presence or identity | Nominal value | Bodian stain technique |
| 10777-1 | Microscopic observation [Identifier] in Tissue by Brown and Brenn stain | Tissue specimen | Presence or identity | Nominal value | Brown and Brenn stain technique |
| 10778-9 | Microscopic observation [Identifier] in Tissue by Butyrate esterase stain | Tissue specimen | Presence or identity | Nominal value | Alpha naphthyl butyrate esterase stain technique |
| 10779-7 | Microscopic observation [Identifier] in Tissue by Carmine stain.Best | Tissue specimen | Presence or identity | Nominal value | Best carmine stain technique |
| 10780-5 | Microscopic observation [Identifier] in Tissue by Chloracetate esterase stain | Tissue specimen | Presence or identity | Nominal value | Chloroacetate esterase stain technique |
| 10781-3 | Microscopic observation [Identifier] in Tissue by Churukian-Schenk stain | Tissue specimen | Presence or identity | Nominal value | Churukian-Schenk stain technique |
| 10782-1 | Microscopic observation [Identifier] in Tissue by Congo red stain | Tissue specimen | Presence or identity | Nominal value | Congo red stain technique |
| 10783-9 | Microscopic observation [Identifier] in Tissue by Crystal violet stain | Tissue specimen | Presence or identity | Nominal value | Crystal violet stain technique |
| 10784-7 | Microscopic observation [Identifier] in Tissue by Esterase stain.non-specific | Tissue specimen | Presence or identity | Nominal value | Nonspecific esterase stain technique |
| 10785-4 | Microscopic observation [Identifier] in Tissue by Fite-Faraco stain | Tissue specimen | Presence or identity | Nominal value | Fite-Faraco stain technique |
| 10787-0 | Microscopic observation [Identifier] in Tissue by Gridley stain | Tissue specimen | Presence or identity | Nominal value | Gridley stain technique |
| 10788-8 | Microscopic observation [Identifier] in Tissue by Hansel stain | Tissue specimen | Presence or identity | Nominal value | Hansel stain technique |
| 10789-6 | Microscopic observation [Identifier] in Tissue by Hematoxylin-eosin-Harris regressive stain | Tissue specimen | Presence or identity | Nominal value | Harris regressive hematoxylin and eosin stain technique |
| 10790-4 | Microscopic observation [Identifier] in Tissue by Hematoxylin-eosin-Mayers progressive stain | Tissue specimen | Presence or identity | Nominal value | Mayer progressive hematoxylin and eosin stain technique |
| 10791-2 | Microscopic observation [Identifier] in Tissue by Mallory-Heidenhain stain | Tissue specimen | Presence or identity | Nominal value | Mallory-Heidenhain stain technique |
| 10792-0 | Microscopic observation [Identifier] in Tissue by Methenamine silver stain.Jones | Tissue specimen | Presence or identity | Nominal value | Jones methenamine silver stain technique |
| 10793-8 | Microscopic observation [Identifier] in Tissue by Methyl green stain | Tissue specimen | Presence or identity | Nominal value | Methyl green stain technique |
| 10794-6 | Microscopic observation [Identifier] in Tissue by Methyl green-pyronine Y stain | Tissue specimen | Presence or identity | Nominal value | Methyl green-pyronin Y stain technique |
| 10795-3 | Microscopic observation [Identifier] in Tissue by Methyl violet stain | Tissue specimen | Presence or identity | Nominal value | Methyl violet stain technique |
| 10796-1 | Microscopic observation [Identifier] in Tissue by Mucicarmine stain | Tissue specimen | Presence or identity | Nominal value | Mayer mucicarmine stain technique |
| 10797-9 | Microscopic observation [Identifier] in Tissue by Neutral red stain | Tissue specimen | Presence or identity | Nominal value | Neutral red stain technique |
| 10798-7 | Microscopic observation [Identifier] in Tissue by Oil red O stain | Tissue specimen | Presence or identity | Nominal value | Oil red O stain technique |
| 10799-5 | Microscopic observation [Identifier] in Tissue by Pentachrome stain.Movat | Tissue specimen | Presence or identity | Nominal value | Movat pentachrome stain technique |
| 10800-1 | Microscopic observation [Identifier] in Tissue by Periodic acid-Schiff stain with diastase digestion | Tissue specimen | Presence or identity | Nominal value | Periodic acid-Schiff with diastase stain technique |
| 10801-9 | Microscopic observation [Identifier] in Tissue by Phosphotungstic acid Hematoxylin (PTAH) Stain | Tissue specimen | Presence or identity | Nominal value | – |
| 10802-7 | Microscopic observation [Identifier] in Tissue by Prussian blue stain | Tissue specimen | Presence or identity | Nominal value | Prussian blue stain technique |
| 10803-5 | Microscopic observation [Identifier] in Tissue by Quinacrine fluorescent stain | Tissue specimen | Presence or identity | Nominal value | Quinacrine fluorescent stain technique |
| 10804-3 | Microscopic observation [Identifier] in Tissue by Reticulin stain | Tissue specimen | Presence or identity | Nominal value | Reticulin stain technique |
| 10805-0 | Microscopic observation [Identifier] in Tissue by Safranin stain | Tissue specimen | Presence or identity | Nominal value | Safranin stain technique |
| 10806-8 | Microscopic observation [Identifier] in Tissue by Schmorl stain | Tissue specimen | Presence or identity | Nominal value | Schmorl stain technique |
| 10807-6 | Microscopic observation [Identifier] in Tissue by Sevier-Munger stain | Tissue specimen | Presence or identity | Nominal value | Sevier-Munger stain technique |
| 10808-4 | Microscopic observation [Identifier] in Tissue by Silver impregnation stain.Dieterle | Tissue specimen | Presence or identity | Nominal value | Dieterle silver stain technique |
| 10809-2 | Microscopic observation [Identifier] in Tissue by Silver stain | Tissue specimen | Presence or identity | Nominal value | Silver stain technique |
| 10810-0 | Microscopic observation [Identifier] in Tissue by Fontana-Masson stain | Tissue specimen | Presence or identity | Nominal value | Fontana-Masson silver stain technique |
| 10811-8 | Microscopic observation [Identifier] in Tissue by Silver stain.Grimelius | Tissue specimen | Presence or identity | Nominal value | Grimelius silver stain technique |
| 10812-6 | Microscopic observation [Identifier] in Tissue by Steiner stain | Tissue specimen | Presence or identity | Nominal value | Steiner stain technique |
| 10813-4 | Microscopic observation [Identifier] in Tissue by Sudan black stain | Tissue specimen | Presence or identity | Nominal value | Sudan black B stain technique |
| 10814-2 | Microscopic observation [Identifier] in Tissue by Supravital stain | Tissue specimen | Presence or identity | Nominal value | Supravital stain technique |
| 10815-9 | Microscopic observation [Identifier] in Tissue by Tetrachrome stain | Tissue specimen | Presence or identity | Nominal value | Tetrachrome stain technique |
| 10817-5 | Microscopic observation [Identifier] in Tissue by Trichrome stain.Gomori-Wheatley | Tissue specimen | Presence or identity | Nominal value | Wheatley trichrome stain technique |
| 10818-3 | Microscopic observation [Identifier] in Tissue by Trichrome stain.Masson modified | Tissue specimen | Presence or identity | Nominal value | Modified Masson trichrome stain technique |
| 10819-1 | Microscopic observation [Identifier] in Tissue by Wade stain | Tissue specimen | Presence or identity | Nominal value | Wade-Fite stain technique |
| 10856-3 | Microscopic observation [Identifier] in Genital mucus by Gram stain | Genital mucus specimen | Presence or identity | Nominal value | Gram stain |
| 11068-4 | Microscopic observation [Identifier] in Body fluid by Cyto stain | Body fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 11069-2 | Microscopic observation [Identifier] in Gastric fluid by Cyto stain | Gastric fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 11070-0 | Microscopic observation [Identifier] in Urine by Cyto stain | Urine specimen | Presence or identity | Nominal value | Cytology stain |
| 112887-5 | Microscopic observation [Identifier] in Penis by Gram stain | Specimen from penis | Presence or identity | Nominal value | Gram stain |
| 113008-7 | Microscopic observation [Identifier] in Drain by Gram stain | Drain device submitted as specimen | Presence or identity | Nominal value | Gram stain |
| 11476-9 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain | Gastric fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 11477-7 | Microscopic observation [Identifier] in Sputum by Acid fast stain | Sputum specimen | Presence or identity | Nominal value | Acid fast stain |
| 11478-5 | Microscopic observation [Identifier] in Stool by Acid fast stain | Stool specimen | Presence or identity | Nominal value | Acid fast stain |
| 11479-3 | Microscopic observation [Identifier] in Tissue by Acid fast stain | Tissue specimen | Presence or identity | Nominal value | Acid fast stain |
| 11480-1 | Microscopic observation [Identifier] in Urine by Acid fast stain | Urine specimen | Presence or identity | Nominal value | Acid fast stain |
| 11545-1 | Microscopic observation [Identifier] in Specimen by Acid fast stain | Specimen | Presence or identity | Nominal value | Acid fast stain |
| 11546-9 | Microscopic observation [Identifier] in Specimen by Other stain | Specimen | Presence or identity | Nominal value | Staining technique |
| 12235-8 | Microscopic observation [Identifier] in Urine sediment by Light microscopy | Urine sediment specimen | Presence or identity | Nominal value | Light microscopy |
| 13509-5 | Microscopic observation [Identifier] in Blood by Crystal violet stain | Blood specimen | Presence or identity | Nominal value | Crystal violet stain technique |
| 13510-3 | Microscopic observation [Identifier] in Bone marrow by Myeloperoxidase stain | Bone marrow specimen | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 13512-9 | Microscopic observation [Identifier] in Bone marrow by Butyrate esterase stain | Bone marrow specimen | Presence or identity | Nominal value | Alpha naphthyl butyrate esterase stain technique |
| 14317-2 | Microscopic observation [Identifier] in Genital specimen by Wet preparation | Specimen from genital system | Presence or identity | Nominal value | Wet preparation technique |
| 14318-0 | Microscopic observation [Identifier] in Cervix by Wet preparation | Specimen from uterine cervix | Presence or identity | Nominal value | Wet preparation technique |
| 14319-8 | Microscopic observation [Identifier] in Vaginal fluid by Wet preparation | Specimen from vagina | Presence or identity | Nominal value | Wet preparation technique |
| 14353-7 | Microscopic observation [Identifier] in Pleural fluid by Acid fast stain.Kinyoun modified | Pleural fluid specimen | Presence or identity | Nominal value | – |
| 14354-5 | Microscopic observation [Identifier] in Wound by Acid fast stain.Kinyoun modified | Specimen from wound | Presence or identity | Nominal value | – |
| 14355-2 | Microscopic observation [Identifier] in Cervix by KOH preparation | Specimen from uterine cervix | Presence or identity | Nominal value | KOH preparation technique |
| 14356-0 | Microscopic observation [Identifier] in Vaginal fluid by KOH preparation | Specimen from vagina | Presence or identity | Nominal value | KOH preparation technique |
| 14357-8 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Gram stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Gram stain |
| 14358-6 | Microscopic observation [Identifier] in Aspirate by Gram stain | Specimen obtained by aspiration | Presence or identity | Nominal value | Gram stain |
| 14359-4 | Microscopic observation [Identifier] in Peritoneal fluid by Gram stain | Peritoneal fluid specimen | Presence or identity | Nominal value | Gram stain |
| 14360-2 | Microscopic observation [Identifier] in Pleural fluid by Gram stain | Pleural fluid specimen | Presence or identity | Nominal value | Gram stain |
| 14361-0 | Microscopic observation [Identifier] in Vaginal fluid by Gram stain | Specimen from vagina | Presence or identity | Nominal value | Gram stain |
| 14362-8 | Microscopic observation [Identifier] in Throat by Gram stain | Specimen from throat | Presence or identity | Nominal value | Gram stain |
| 14363-6 | Microscopic observation [Identifier] in Synovial fluid by Gram stain | Synovial fluid specimen | Presence or identity | Nominal value | Gram stain |
| 14364-4 | Microscopic observation [Identifier] in Eye by Gram stain | Specimen from eye | Presence or identity | Nominal value | Gram stain |
| 14841-1 | Microscopic observation [Identifier] in Specimen by Iron hematoxylin stain | Specimen | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 14842-9 | Microscopic observation [Identifier] in Specimen by Kinyoun iron hematoxylin stain | Specimen | Presence or identity | Nominal value | Kinyoun iron hematoxylin stain technique |
| 17281-7 | Microscopic observation [Identifier] in Sputum by KOH preparation | Sputum specimen | Presence or identity | Nominal value | KOH preparation technique |
| 18326-9 | Microscopic observation [Identifier] in Cervix by Other stain | Specimen from uterine cervix | Presence or identity | Nominal value | Staining technique |
| 18327-7 | Microscopic observation [Identifier] in Duodenal fluid by Other stain | Duodenal fluid specimen | Presence or identity | Nominal value | Staining technique |
| 18328-5 | Microscopic observation [Identifier] in Body fluid by Other stain | Body fluid specimen | Presence or identity | Nominal value | Staining technique |
| 18497-8 | Microscopic observation [Identifier] in Thyroid fine needle aspirate by Cyto stain | Thyroid fine needle aspirate specimen | Presence or identity | Nominal value | Cytology stain |
| 18498-6 | Microscopic observation [Identifier] in Breast fine needle aspirate by Cyto stain | Breast fine needle aspirate specimen | Presence or identity | Nominal value | Cytology stain |
| 18499-4 | Microscopic observation [Identifier] in Nipple discharge by Cyto stain | Breast nipple discharge specimen | Presence or identity | Nominal value | Cytology stain |
| 18500-9 | Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep | Specimen from uterine cervix | Presence or identity | Nominal value | ThinPrep cytology technique |
| 18501-7 | Microscopic observation [Identifier] in Buccal smear by Cyto stain | Buccal smear specimen | Presence or identity | Nominal value | Cytology stain |
| 19765-7 | Microscopic observation [Identifier] in Cervical or vaginal smear or scraping by Cyto stain | Specimen from cervix or vagina | Presence or identity | Nominal value | Cytology stain |
| 20431-3 | Microscopic observation [Identifier] in Specimen by Smear | Specimen | Presence or identity | Nominal value | Smearing technique |
| 20881-9 | Microscopic observation [Identifier] in Tissue by Electron microscopy thin sectiion | Tissue specimen | Presence or identity | Nominal value | – |
| 20882-7 | Microscopic observation [Identifier] in Stool by Electron microscopy negative stain | Stool specimen | Presence or identity | Nominal value | Negative stain electron microscopy technique |
| 20883-5 | Microscopic observation [Identifier] in Urine by Dark field examination | Urine specimen | Presence or identity | Nominal value | – |
| 20884-3 | Microscopic observation [Identifier] in Stool by Dark field examination | Stool specimen | Presence or identity | Nominal value | – |
| 20885-0 | Microscopic observation [Identifier] in Gastric fluid by Dark field examination | Gastric fluid specimen | Presence or identity | Nominal value | – |
| 21021-1 | Microscopic observation [Identifier] in Bronchial specimen by Gram stain | Specimen from bronchus | Presence or identity | Nominal value | Gram stain |
| 21022-9 | Microscopic observation [Identifier] in Dialysis fluid by Gram stain | Dialysate specimen | Presence or identity | Nominal value | Gram stain |
| 21391-8 | Microscopic observation [Identifier] in Bone by Acid phosphatase stain | Specimen from bone | Presence or identity | Nominal value | Acid phosphatase stain technique |
| 23901-2 | Microscopic observation [Identifier] in Body fluid by Wet preparation | Body fluid specimen | Presence or identity | Nominal value | Wet preparation technique |
| 24002-8 | Microscopic observation [Identifier] in Bronchial specimen by Acid fast stain | Specimen from bronchus | Presence or identity | Nominal value | Acid fast stain |
| 27112-2 | Microscopic observation [Identifier] in Body fluid by Gram stain | Body fluid specimen | Presence or identity | Nominal value | Gram stain |
| 29776-2 | Microscopic observation [Identifier] in Blood by Brilliant cresyl blue | Blood specimen | Presence or identity | Nominal value | – |
| 31187-8 | Microscopic observation [Identifier] in Lymph node fine needle aspirate by Cyto stain | Specimen from lymph node obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31190-2 | Microscopic observation [Identifier] in Salivary gland fine needle aspirate by Cyto stain | Specimen from salivary gland obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31191-0 | Microscopic observation [Identifier] in Prostate fine needle aspirate by Cyto stain | Specimen from prostate obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31192-8 | Microscopic observation [Identifier] in Liver fine needle aspirate by Cyto stain | Specimen from liver obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31193-6 | Microscopic observation [Identifier] in Pancreas fine needle aspirate by Cyto stain | Specimen from pancreas obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31194-4 | Microscopic observation [Identifier] in Submandibular fine needle aspirate by Cyto stain | Specimen from submandibular gland obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31195-1 | Microscopic observation [Identifier] in Soft tissue fine needle aspirate by Cyto stain | Soft tissue lesion fine needle aspirate specimen | Presence or identity | Nominal value | Cytology stain |
| 31198-5 | Microscopic observation [Identifier] in Parotid fine needle aspirate by Cyto stain | Specimen from parotid gland obtained by fine needle aspiration biopsy | Presence or identity | Nominal value | Cytology stain |
| 31199-3 | Microscopic observation [Identifier] in Lung fine needle aspirate by Cyto stain | Specimen from lung obtained by fine needle aspiration procedure | Presence or identity | Nominal value | Cytology stain |
| 32026-7 | Microscopic observation [Identifier] in Nose by Gram stain | Specimen from nose | Presence or identity | Nominal value | Gram stain |
| 32151-3 | Microscopic observation [Identifier] in Vaginal fluid by Non-gynecological cytology method | Specimen from vagina | Presence or identity | Nominal value | – |
| 32186-9 | Microscopic observation [Identifier] in Penis by Tzanck smear | Specimen from penis | Presence or identity | Nominal value | – |
| 32187-7 | Microscopic observation [Identifier] in Skin by Tzanck smear | Specimen from skin | Presence or identity | Nominal value | – |
| 32188-5 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acid fast stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 32189-3 | Microscopic observation [Identifier] in Body fluid by Acid fast stain | Body fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 32190-1 | Microscopic observation [Identifier] in Cerebrospinal Fluid | Cerebrospinal fluid specimen | Presence or identity | Nominal value | – |
| 32699-1 | Microscopic observation [Identifier] in Blood by Acid fast stain | Blood specimen | Presence or identity | Nominal value | Acid fast stain |
| 32700-7 | Microscopic observation [Identifier] in Blood by Malaria smear | Blood specimen | Presence or identity | Nominal value | – |
| 32785-8 | Microscopic observation [Identifier] in Specimen by Non-gynecological cytology method | Specimen | Presence or identity | Nominal value | – |
| 32798-1 | Microscopic observation [Identifier] in Specimen by Oil red O stain | Specimen | Presence or identity | Nominal value | Oil red O stain technique |
| 32811-2 | Microscopic observation [Identifier] in Bronchial specimen by Iron hematoxylin stain | Specimen from bronchus | Presence or identity | Nominal value | Iron hematoxylin stain technique |
| 32812-0 | Microscopic observation [Identifier] in Bronchial specimen by Oil red O stain | Specimen from bronchus | Presence or identity | Nominal value | Oil red O stain technique |
| 32814-6 | Microscopic observation [Identifier] in Specimen by Chloracetate esterase stain | Specimen | Presence or identity | Nominal value | Chloroacetate esterase stain technique |
| 32815-3 | Microscopic observation [Identifier] in Specimen by Sudan black B stain | Specimen | Presence or identity | Nominal value | Sudan black B stain technique |
| 32816-1 | Microscopic observation [Identifier] in Specimen by Terminal deoxynucleotidyl transferase stain | Specimen | Presence or identity | Nominal value | Terminal deoxynucleotidyl transferase stain technique |
| 32817-9 | Microscopic observation [Identifier] in Specimen by Myeloperoxidase stain | Specimen | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 32818-7 | Microscopic observation [Identifier] in Specimen by Acetate esterase stain | Specimen | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 32824-5 | Microscopic observation [Identifier] in Specimen by Tartrate-resistant acid phosphatase stain | Specimen | Presence or identity | Nominal value | Tartrate-resistant acid phosphatase stain technique |
| 33270-0 | Microscopic observation [Identifier] in Buffy Coat by Light microscopy | Buffy coat | Presence or identity | Nominal value | Light microscopy |
| 33271-8 | Microscopic observation [Identifier] in Blood by Malaria thin smear | Blood specimen | Presence or identity | Nominal value | – |
| 33675-0 | Microscopic observation [Identifier] in Specimen by Esterase stain.combined | Specimen | Presence or identity | Nominal value | Combined esterase stain technique |
| 33699-0 | Microscopic observation [Identifier] in Specimen by Malachite green stain | Specimen | Presence or identity | Nominal value | Malachite green stain technique |
| 34166-9 | Microscopic observation [Identifier] in Specimen by Electron microscopy | Specimen | Presence or identity | Nominal value | Electron microscopy |
| 34959-7 | Microscopic observation [Identifier] in Blood by Myeloperoxidase stain | Blood specimen | Presence or identity | Nominal value | Myeloperoxidase stain technique |
| 35347-4 | Microscopic observation [Identifier] in Specimen by Immunofluorescence | Specimen | Presence or identity | Nominal value | Immunofluorescence technique |
| 35737-6 | Microscopic observation [Identifier] in Amniotic fluid by Nile blue prusside | Amniotic fluid specimen | Presence or identity | Nominal value | – |
| 39086-4 | Microscopic observation [Identifier] in Vaginal fluid by Cyto stain.thin prep | Specimen from vagina | Presence or identity | Nominal value | ThinPrep cytology technique |
| 42209-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Cyto stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 42210-5 | Microscopic observation [Identifier] in Bronchial specimen by Cyto stain | Specimen from bronchus | Presence or identity | Nominal value | Cytology stain |
| 43417-5 | Microscopic observation [Identifier] in Esophageal brushing by Cyto stain | Esophageal brushings specimen | Presence or identity | Nominal value | Cytology stain |
| 43427-4 | Microscopic observation [Identifier] in Tissue by Rapid stain | Tissue specimen | Presence or identity | Nominal value | – |
| 44098-2 | Microscopic observation [Identifier] in Specimen by Wayson stain | Specimen | Presence or identity | Nominal value | Wayson stain technique |
| 45043-7 | Microscopic observation [Identifier] in Specimen by Tzanck smear | Specimen | Presence or identity | Nominal value | – |
| 48712-4 | Microscopic observation [Identifier] in Genital specimen by Gram stain | Specimen from genital system | Presence or identity | Nominal value | Gram stain |
| 48722-3 | Microscopic observation [Identifier] in Body fluid by Crystal violet stain | Body fluid specimen | Presence or identity | Nominal value | Crystal violet stain technique |
| 50389-6 | Microscopic observation [Identifier] in Bronchial brush by Cyto stain.thin prep | Bronchial brushings specimen | Presence or identity | Nominal value | ThinPrep cytology technique |
| 51700-3 | Microscopic observation [Identifier] in Specimen by Lactophenol blue | Specimen | Presence or identity | Nominal value | – |
| 51714-4 | Microscopic observation [Identifier] in Blood by Giemsa stain | Blood specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 53522-9 | Microscopic observation [Identifier] in Bronchial specimen by Rhodamine-auramine fluorochrome stain | Specimen from bronchus | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53785-2 | Microscopic observation [Identifier] in Urine by Wright stain | Urine specimen | Presence or identity | Nominal value | Wright stain method |
| 53786-0 | Microscopic observation [Identifier] in Stool by Wright stain | Stool specimen | Presence or identity | Nominal value | Wright stain method |
| 53904-9 | Microscopic observation [Identifier] in Sputum by Rhodamine-auramine fluorochrome stain | Sputum specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53905-6 | Microscopic observation [Identifier] in Urine by Rhodamine-auramine fluorochrome stain | Urine specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53906-4 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Rhodamine-auramine fluorochrome stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53907-2 | Microscopic observation [Identifier] in Pleural fluid by Rhodamine-auramine fluorochrome stain | Pleural fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53910-6 | Microscopic observation [Identifier] in Peritoneal fluid by Rhodamine-auramine fluorochrome stain | Peritoneal fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53912-2 | Microscopic observation [Identifier] in Body fluid by Rhodamine-auramine fluorochrome stain | Body fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53913-0 | Microscopic observation [Identifier] in Synovial fluid by Rhodamine-auramine fluorochrome stain | Synovial fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53914-8 | Microscopic observation [Identifier] in Endometrium by Rhodamine-auramine fluorochrome stain | Specimen from endometrium | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53915-5 | Microscopic observation [Identifier] in Pericardial fluid by Rhodamine-auramine fluorochrome stain | Pericardial fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53916-3 | Microscopic observation [Identifier] in Gastric fluid by Rhodamine-auramine fluorochrome stain | Gastric fluid specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 53918-9 | Microscopic observation [Identifier] in Bone marrow by Rhodamine-auramine fluorochrome stain | Bone marrow specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 55222-4 | Microscopic observation [Identifier] in Aspirate by Rhodamine-auramine fluorochrome stain | Specimen obtained by aspiration | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 55600-1 | Microscopic observation [Identifier] in Peritoneal fluid by Cyto stain | Peritoneal fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 55601-9 | Microscopic observation [Identifier] in Pericardial fluid by Cyto stain | Pericardial fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 55602-7 | Microscopic observation [Identifier] in Pleural fluid by Cyto stain | Pleural fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 55603-5 | Microscopic observation [Identifier] in Synovial fluid by Cyto stain | Synovial fluid specimen | Presence or identity | Nominal value | Cytology stain |
| 55604-3 | Microscopic observation [Identifier] in Endometrium by Cyto stain | Specimen from endometrium | Presence or identity | Nominal value | Cytology stain |
| 57851-8 | Microscopic observation [Identifier] in Urethra by Wet preparation | Specimen from urethra | Presence or identity | Nominal value | Wet preparation technique |
| 58942-4 | Microscopic observation [Identifier] in Pleural fluid by Acid fast stain.Ziehl-Neelsen | Pleural fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58943-2 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acid fast stain.Ziehl-Neelsen | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58944-0 | Microscopic observation [Identifier] in Body fluid by Acid fast stain.Ziehl-Neelsen | Body fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 58945-7 | Microscopic observation [Identifier] in Peritoneal fluid by Acid fast stain.Ziehl-Neelsen | Peritoneal fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 59474-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Acridine orange stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Acridine orange stain technique |
| 63433-7 | Microscopic observation [Identifier] in Synovial fluid by Acid fast stain.Ziehl-Neelsen | Synovial fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 638-7 | Microscopic observation [Identifier] in Cerebrospinal Fluid by India ink prep | Cerebrospinal fluid specimen | Presence or identity | Nominal value | India ink staining technique |
| 639-5 | Microscopic observation [Identifier] in Cerebrospinal Fluid by KOH preparation | Cerebrospinal fluid specimen | Presence or identity | Nominal value | KOH preparation technique |
| 640-3 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Kinyoun | Gastric fluid specimen | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 641-1 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Kinyoun modified | Gastric fluid specimen | Presence or identity | Nominal value | – |
| 642-9 | Microscopic observation [Identifier] in Gastric fluid by Acid fast stain.Ziehl-Neelsen | Gastric fluid specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 643-7 | Microscopic observation [Identifier] in Pus by Gram stain | Pus specimen | Presence or identity | Nominal value | Gram stain |
| 644-5 | Microscopic observation [Identifier] in Skin by KOH preparation | Specimen from skin | Presence or identity | Nominal value | KOH preparation technique |
| 645-2 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Kinyoun | Sputum specimen | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 646-0 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Kinyoun modified | Sputum specimen | Presence or identity | Nominal value | – |
| 6464-2 | Microscopic observation [Identifier] in Cervix by Gram stain | Specimen from uterine cervix | Presence or identity | Nominal value | Gram stain |
| 6465-9 | Microscopic observation [Identifier] in Duodenal fluid by Trichrome stain | Duodenal fluid specimen | Presence or identity | Nominal value | Trichrome stain |
| 6466-7 | Microscopic observation [Identifier] in Duodenal fluid by Wet preparation | Duodenal fluid specimen | Presence or identity | Nominal value | Wet preparation technique |
| 6467-5 | Microscopic observation [Identifier] in Genital fluid by Gram stain | Genital fluid specimen | Presence or identity | Nominal value | Gram stain |
| 6468-3 | Microscopic observation [Identifier] in Sputum by Calcofluor white | Sputum specimen | Presence or identity | Nominal value | Calcofluor white stain technique |
| 6469-1 | Microscopic observation [Identifier] in Stool by Trichrome stain | Stool specimen | Presence or identity | Nominal value | Trichrome stain |
| 647-8 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen | Sputum specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 6470-9 | Microscopic observation [Identifier] in Stool by Wet preparation | Stool specimen | Presence or identity | Nominal value | Wet preparation technique |
| 6471-7 | Microscopic observation [Identifier] in Tissue by Other stain | Tissue specimen | Presence or identity | Nominal value | Staining technique |
| 6472-5 | Microscopic observation [Identifier] in Tissue by Calcofluor white | Tissue specimen | Presence or identity | Nominal value | Calcofluor white stain technique |
| 6473-3 | Microscopic observation [Identifier] in Tissue by Trichrome stain | Tissue specimen | Presence or identity | Nominal value | Trichrome stain |
| 6474-1 | Microscopic observation [Identifier] in Urethra by Gram stain | Specimen from urethra | Presence or identity | Nominal value | Gram stain |
| 648-6 | Microscopic observation [Identifier] in Sputum by Gram stain | Sputum specimen | Presence or identity | Nominal value | Gram stain |
| 649-4 | Microscopic observation [Identifier] in Stool by Gram stain | Stool specimen | Presence or identity | Nominal value | Gram stain |
| 650-2 | Microscopic observation [Identifier] in Urine by Acid fast stain.Kinyoun | Urine specimen | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 651-0 | Microscopic observation [Identifier] in Urine by Acid fast stain.Kinyoun modified | Urine specimen | Presence or identity | Nominal value | – |
| 652-8 | Microscopic observation [Identifier] in Urine by Acid fast stain.Ziehl-Neelsen | Urine specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 653-6 | Microscopic observation [Identifier] in Urine by Gram stain | Urine specimen | Presence or identity | Nominal value | Gram stain |
| 654-4 | Microscopic observation [Identifier] in Specimen by Acid fast stain.Kinyoun | Specimen | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 655-1 | Microscopic observation [Identifier] in Specimen by Acid fast stain.Kinyoun modified | Specimen | Presence or identity | Nominal value | – |
| 656-9 | Microscopic observation [Identifier] in Specimen by Acid fast stain.Ziehl-Neelsen | Specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 657-7 | Microscopic observation [Identifier] in Specimen by Acridine orange stain | Specimen | Presence or identity | Nominal value | Acridine orange stain technique |
| 658-5 | Microscopic observation [Identifier] in Specimen by Calcofluor white | Specimen | Presence or identity | Nominal value | Calcofluor white stain technique |
| 659-3 | Microscopic observation [Identifier] in Specimen by Carbol-fuchsin stain | Specimen | Presence or identity | Nominal value | Carbol-fuchsin stain technique |
| 660-1 | Microscopic observation [Identifier] in Specimen by Dark field examination | Specimen | Presence or identity | Nominal value | – |
| 6607-6 | Microscopic observation [Identifier] in Tissue by Dark field examination | Tissue specimen | Presence or identity | Nominal value | – |
| 661-9 | Microscopic observation [Identifier] in Specimen by Dry mount | Specimen | Presence or identity | Nominal value | – |
| 662-7 | Microscopic observation [Identifier] in Specimen by Giemsa stain | Specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 663-5 | Microscopic observation [Identifier] in Specimen by Gimenez stain | Specimen | Presence or identity | Nominal value | Gimenez stain technique |
| 664-3 | Microscopic observation [Identifier] in Specimen by Gram stain | Specimen | Presence or identity | Nominal value | Gram stain |
| 665-0 | Microscopic observation [Identifier] in Specimen by Hematoxylin and eosin stain | Specimen | Presence or identity | Nominal value | Hematoxylin and eosin stain technique |
| 6655-5 | Microscopic observation [Identifier] in Tissue by Acid fast stain.Kinyoun | Tissue specimen | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 6656-3 | Microscopic observation [Identifier] in Tissue by Acid fast stain.Kinyoun modified | Tissue specimen | Presence or identity | Nominal value | – |
| 6657-1 | Microscopic observation [Identifier] in Tissue by Acid fast stain.Ziehl-Neelsen | Tissue specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 6658-9 | Microscopic observation [Identifier] in Tissue by Acridine orange stain | Tissue specimen | Presence or identity | Nominal value | Acridine orange stain technique |
| 6659-7 | Microscopic observation [Identifier] in Tissue by Carbol-fuchsin stain | Tissue specimen | Presence or identity | Nominal value | Carbol-fuchsin stain technique |
| 666-8 | Microscopic observation [Identifier] in Specimen by India ink prep | Specimen | Presence or identity | Nominal value | India ink staining technique |
| 6661-3 | Microscopic observation [Identifier] in Tissue by Dry mount | Tissue specimen | Presence or identity | Nominal value | – |
| 6662-1 | Microscopic observation [Identifier] in Tissue by Giemsa stain | Tissue specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 6663-9 | Microscopic observation [Identifier] in Tissue by Gimenez stain | Tissue specimen | Presence or identity | Nominal value | Gimenez stain technique |
| 6664-7 | Microscopic observation [Identifier] in Tissue by Gram stain | Tissue specimen | Presence or identity | Nominal value | Gram stain |
| 6665-4 | Microscopic observation [Identifier] in Tissue by Hematoxylin and eosin stain | Tissue specimen | Presence or identity | Nominal value | Hematoxylin and eosin stain technique |
| 6666-2 | Microscopic observation [Identifier] in Tissue by India ink prep | Tissue specimen | Presence or identity | Nominal value | India ink staining technique |
| 6667-0 | Microscopic observation [Identifier] in Tissue by KOH preparation | Tissue specimen | Presence or identity | Nominal value | KOH preparation technique |
| 6668-8 | Microscopic observation [Identifier] in Tissue by M'Fadyean stain | Tissue specimen | Presence or identity | Nominal value | M'Fadyean stain technique |
| 6669-6 | Microscopic observation [Identifier] in Tissue by Macchiavello stain | Tissue specimen | Presence or identity | Nominal value | Macchiavello stain technique |
| 667-6 | Microscopic observation [Identifier] in Specimen by KOH preparation | Specimen | Presence or identity | Nominal value | KOH preparation technique |
| 6670-4 | Microscopic observation [Identifier] in Tissue by Malaria smear | Tissue specimen | Presence or identity | Nominal value | – |
| 6671-2 | Microscopic observation [Identifier] in Tissue by Methenamine silver nitrate stain | Tissue specimen | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 6672-0 | Microscopic observation [Identifier] in Tissue by Methylene blue stain.Loeffler | Tissue specimen | Presence or identity | Nominal value | Loeffler methylene blue stain technique |
| 6673-8 | Microscopic observation [Identifier] in Tissue by Neisser stain | Tissue specimen | Presence or identity | Nominal value | Neisser stain technique |
| 6675-3 | Microscopic observation [Identifier] in Tissue by Periodic acid-Schiff stain | Tissue specimen | Presence or identity | Nominal value | Periodic acid Schiff stain technique |
| 6677-9 | Microscopic observation [Identifier] in Tissue by Rhodamine-auramine fluorochrome stain | Tissue specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 6678-7 | Microscopic observation [Identifier] in Tissue by Toluidine blue O stain | Tissue specimen | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 6679-5 | Microscopic observation [Identifier] in Tissue by Warthin-Starry stain | Tissue specimen | Presence or identity | Nominal value | Warthin-Starry stain technique |
| 668-4 | Microscopic observation [Identifier] in Specimen by M'Fadyean stain | Specimen | Presence or identity | Nominal value | M'Fadyean stain technique |
| 6680-3 | Microscopic observation [Identifier] in Tissue by Wet preparation | Tissue specimen | Presence or identity | Nominal value | Wet preparation technique |
| 6681-1 | Microscopic observation [Identifier] in Tissue by Wright stain | Tissue specimen | Presence or identity | Nominal value | Wright stain method |
| 6682-9 | Microscopic observation [Identifier] in Tissue by Wright Giemsa stain | Tissue specimen | Presence or identity | Nominal value | Wright-Giemsa stain |
| 669-2 | Microscopic observation [Identifier] in Specimen by Macchiavello stain | Specimen | Presence or identity | Nominal value | Macchiavello stain technique |
| 670-0 | Microscopic observation [Identifier] in Specimen by Methenamine silver nitrate stain | Specimen | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 671-8 | Microscopic observation [Identifier] in Specimen by Methylene blue stain.Loeffler | Specimen | Presence or identity | Nominal value | Loeffler methylene blue stain technique |
| 672-6 | Microscopic observation [Identifier] in Specimen by Neisser stain | Specimen | Presence or identity | Nominal value | Neisser stain technique |
| 674-2 | Microscopic observation [Identifier] in Specimen by Periodic acid-Schiff stain | Specimen | Presence or identity | Nominal value | Periodic acid Schiff stain technique |
| 676-7 | Microscopic observation [Identifier] in Specimen by Rhodamine-auramine fluorochrome stain | Specimen | Presence or identity | Nominal value | Rhodamine-auramine fluorochrome stain technique |
| 677-5 | Microscopic observation [Identifier] in Specimen by Toluidine blue O stain | Specimen | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 678-3 | Microscopic observation [Identifier] in Specimen by Trichrome stain | Specimen | Presence or identity | Nominal value | Trichrome stain |
| 679-1 | Microscopic observation [Identifier] in Specimen by Warthin-Starry stain | Specimen | Presence or identity | Nominal value | Warthin-Starry stain technique |
| 680-9 | Microscopic observation [Identifier] in Specimen by Wet preparation | Specimen | Presence or identity | Nominal value | Wet preparation technique |
| 681-7 | Microscopic observation [Identifier] in Specimen by Wright stain | Specimen | Presence or identity | Nominal value | Wright stain method |
| 682-5 | Microscopic observation [Identifier] in Specimen by Wright Giemsa stain | Specimen | Presence or identity | Nominal value | Wright-Giemsa stain |
| 68383-9 | Microscopic observation [Identifier] in Body fluid by KOH preparation | Body fluid specimen | Presence or identity | Nominal value | KOH preparation technique |
| 68958-8 | Microscopic observation [Identifier] in Urine by KOH preparation | Urine specimen | Presence or identity | Nominal value | KOH preparation technique |
| 72408-8 | Microscopic observation [Identifier] in Anal by Gram stain | Specimen from anus | Presence or identity | Nominal value | Gram stain |
| 73694-2 | Microscopic observation [Identifier] in Blood by KOH preparation | Blood specimen | Presence or identity | Nominal value | KOH preparation technique |
| 75222-0 | Microscopic observation [Identifier] in Throat by Alberts stain | Specimen from throat | Presence or identity | Nominal value | Albert stain technique |
| 76082-7 | Microscopic observation [Identifier] in Bronchoalveolar lavage by Methenamine silver nitrate stain | Bronchoalveolar lavage fluid specimen | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 79375-2 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen--2nd specimen | Sputum specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 79376-0 | Microscopic observation [Identifier] in Sputum by Acid fast stain.Ziehl-Neelsen--3rd specimen | Sputum specimen | Presence or identity | Nominal value | Ziehl-Neelsen stain technique |
| 81423-6 | Microscopic observation [Identifier] in Bone marrow by Acetate esterase stain | Bone marrow specimen | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 81424-4 | Microscopic observation [Identifier] in Bone marrow by Toluidine blue O stain | Bone marrow specimen | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 81425-1 | Microscopic observation [Identifier] in Bone marrow by Oil red O stain | Bone marrow specimen | Presence or identity | Nominal value | Oil red O stain technique |
| 81426-9 | Microscopic observation [Identifier] in Venous blood by Acetate esterase stain | Venous blood specimen | Presence or identity | Nominal value | Alpha naphthyl acetate esterase stain technique |
| 81427-7 | Microscopic observation [Identifier] in Venous blood by Oil red O stain | Venous blood specimen | Presence or identity | Nominal value | Oil red O stain technique |
| 8250-3 | Microscopic observation [Identifier] in Stool by Electron microscopy | Stool specimen | Presence or identity | Nominal value | Electron microscopy |
| 87965-0 | Microscopic observation [Identifier] in Cerebrospinal Fluid by Giemsa stain | Cerebrospinal fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 87966-8 | Microscopic observation [Identifier] in Bone marrow by Giemsa stain | Bone marrow specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 87967-6 | Microscopic observation [Identifier] in Bone marrow by Gram stain | Bone marrow specimen | Presence or identity | Nominal value | Gram stain |
| 87968-4 | Microscopic observation [Identifier] in Body fluid by Giemsa stain | Body fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 87969-2 | Microscopic observation [Identifier] in Blood by Gram stain | Blood specimen | Presence or identity | Nominal value | Gram stain |
| 87970-0 | Microscopic observation [Identifier] in Amniotic fluid by Giemsa stain | Amniotic fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 87971-8 | Microscopic observation [Identifier] in Amniotic fluid by Gram stain | Amniotic fluid specimen | Presence or identity | Nominal value | Gram stain |
| 87973-4 | Microscopic observation [Identifier] in Semen by Gram stain | Semen sample | Presence or identity | Nominal value | Gram stain |
| 87974-2 | Microscopic observation [Identifier] in Burn by Gram stain | Specimen from burn injury | Presence or identity | Nominal value | Gram stain |
| 87975-9 | Microscopic observation [Identifier] in Isolate by Gram stain | Microbial isolate | Presence or identity | Nominal value | Gram stain |
| 87999-9 | Microscopic observation [Identifier] in Contact lens by Gram stain | Contact lens submitted as specimen | Presence or identity | Nominal value | Gram stain |
| 88000-5 | Microscopic observation [Identifier] in Pleural fluid by Giemsa stain | Pleural fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 88001-3 | Microscopic observation [Identifier] in Peritoneal dialysis fluid by Gram stain | Peritoneal dialysate specimen | Presence or identity | Nominal value | Gram stain |
| 88144-1 | Microscopic observation [Identifier] in Peritoneal fluid by Acid fast stain | Peritoneal fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 88145-8 | Microscopic observation [Identifier] in Pericardial fluid by Acid fast stain | Pericardial fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 88146-6 | Microscopic observation [Identifier] in Placenta by Gram stain | Specimen from placenta | Presence or identity | Nominal value | Gram stain |
| 88147-4 | Microscopic observation [Identifier] in Pericardial fluid by Gram stain | Pericardial fluid specimen | Presence or identity | Nominal value | Gram stain |
| 88148-2 | Microscopic observation [Identifier] in Genital specimen by Acid fast stain | Specimen from genital system | Presence or identity | Nominal value | Acid fast stain |
| 88149-0 | Microscopic observation [Identifier] in Nasopharynx by Gram stain | Specimen from nasopharynx | Presence or identity | Nominal value | Gram stain |
| 88150-8 | Microscopic observation [Identifier] in Ocular fluid by Giemsa stain | Eye fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 88151-6 | Microscopic observation [Identifier] in Wound by Acid fast stain | Specimen from wound | Presence or identity | Nominal value | Acid fast stain |
| 88152-4 | Microscopic observation [Identifier] in Cervix by Acid fast stain.Kinyoun | Specimen from uterine cervix | Presence or identity | Nominal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 88153-2 | Microscopic observation [Identifier] in Bone marrow by Acid fast stain | Bone marrow specimen | Presence or identity | Nominal value | Acid fast stain |
| 88155-7 | Microscopic observation [Identifier] in Ocular fluid by Acid fast stain | Eye fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 88156-5 | Microscopic observation [Identifier] in Amniotic fluid by Acid fast stain | Amniotic fluid specimen | Presence or identity | Nominal value | Acid fast stain |
| 88157-3 | Microscopic observation [Identifier] in Semen by Acid fast stain | Semen sample | Presence or identity | Nominal value | Acid fast stain |
| 88158-1 | Microscopic observation [Identifier] in Ocular fluid by Gram stain | Eye fluid specimen | Presence or identity | Nominal value | Gram stain |
| 88159-9 | Microscopic observation [Identifier] in Aspirate by Acid fast stain | Specimen obtained by aspiration | Presence or identity | Nominal value | Acid fast stain |
| 88231-6 | Microscopic observation [Identifier] in Bile fluid by Acid fast stain | Bile specimen | Presence or identity | Nominal value | Acid fast stain |
| 88235-7 | Microscopic observation [Identifier] in Synovial fluid by Giemsa stain | Synovial fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 88632-5 | Microscopic observation [Identifier] in Lower respiratory specimen by Gram stain | Lower respiratory tract specimen | Presence or identity | Nominal value | Gram stain |
| 88633-3 | Microscopic observation [Identifier] in Lower respiratory specimen by Giemsa stain | Lower respiratory tract specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 88634-1 | Microscopic observation [Identifier] in Saliva (oral fluid) by Gram stain | Saliva specimen | Presence or identity | Nominal value | Gram stain |
| 88635-8 | Microscopic observation [Identifier] in Vomitus by Gram stain | Vomitus specimen | Presence or identity | Nominal value | Gram stain |
| 88684-6 | Microscopic observation [Identifier] in Aspirate by Giemsa stain | Specimen obtained by aspiration | Presence or identity | Nominal value | Giemsa stain technique |
| 88685-3 | Microscopic observation [Identifier] in Lower respiratory specimen by KOH preparation | Lower respiratory tract specimen | Presence or identity | Nominal value | KOH preparation technique |
| 89582-1 | Microscopic observation [Identifier] in Cervix by Acid fast stain | Specimen from uterine cervix | Presence or identity | Nominal value | Acid fast stain |
| 89657-1 | Microscopic observation [Identifier] in Lower respiratory specimen by Toluidine blue O stain | Lower respiratory tract specimen | Presence or identity | Nominal value | Toluidine blue O stain technique |
| 89658-9 | Microscopic observation [Identifier] in Lower respiratory specimen by Methenamine silver nitrate stain | Lower respiratory tract specimen | Presence or identity | Nominal value | Grocott methenamine silver stain technique |
| 89659-7 | Microscopic observation [Identifier] in Implanted device by Gram stain | Implant submitted as specimen | Presence or identity | Nominal value | Gram stain |
| 89660-5 | Microscopic observation [Identifier] in Implanted device by Acid fast stain | Implant submitted as specimen | Presence or identity | Nominal value | Acid fast stain |
| 89661-3 | Microscopic observation [Identifier] in Upper respiratory specimen by Acid fast stain | Upper respiratory specimen | Presence or identity | Nominal value | Acid fast stain |
| 89662-1 | Microscopic observation [Identifier] in Lower respiratory specimen by Acid fast stain | Lower respiratory tract specimen | Presence or identity | Nominal value | Acid fast stain |
| 90261-9 | Microscopic observation [Identifier] in Bile fluid by Giemsa stain | Bile specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 90262-7 | Microscopic observation [Identifier] in Bile fluid by Gram stain | Bile specimen | Presence or identity | Nominal value | Gram stain |
| 90263-5 | Microscopic observation [Identifier] in Milk by Gram stain | Milk specimen | Presence or identity | Nominal value | Gram stain |
| 90267-6 | Microscopic observation [Identifier] in Pericardial fluid by Giemsa stain | Pericardial fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 90268-4 | Microscopic observation [Identifier] in Peritoneal fluid by Giemsa stain | Peritoneal fluid specimen | Presence or identity | Nominal value | Giemsa stain technique |
| 90269-2 | Microscopic observation [Identifier] in Milk by Acid fast stain | Milk specimen | Presence or identity | Nominal value | Acid fast stain |
| 90282-5 | Microscopic observation [Identifier] in Catheter tip by Gram stain | Catheter tip submitted as specimen | Presence or identity | Nominal value | Gram stain |
| 90296-5 | Microscopic observation [Identifier] in Skin by Gram stain | Specimen from skin | Presence or identity | Nominal value | Gram stain |
| 91808-6 | Microscopic observation [Identifier] in Upper respiratory specimen by Gram stain | Upper respiratory specimen | Presence or identity | Nominal value | Gram stain |
| 91850-8 | Microscopic observation [Identifier] in Genital specimen by Giemsa stain | Specimen from genital system | Presence or identity | Nominal value | Giemsa stain technique |
| 94543-6 | Microscopic observation [Identifier] in Skin by Acid fast stain | Specimen from skin | Presence or identity | Nominal value | Acid fast stain |
| 96035-1 | Microscopic observation [Identifier] in Tissue by Alcian blue stain.with hyaluronidase | Tissue specimen | Presence or identity | Nominal value | Alcian blue stain with hyaluronidase technique |
| 96713-3 | Microscopic observation [Identifier] in Body fluid by Light microscopy | Body fluid specimen | Presence or identity | Nominal value | Light microscopy |

### Specific microscopy — ordinal threshold presence by microscopy or staining technique

Object sought and stain named in the code, result is the detection (LOINC PrThr + Ord + stain). Host cells (leukocytes, erythrocytes, epithelia) are included because the technique, not a class, selects.

ValueSet [mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold](ValueSet-mii-vs-mikrobio-loinc-ontology-specific-microscopy-threshold.html). Bound by the derived profile [mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie](StructureDefinition-mii-pr-mikrobio-loinc-ontology-spezifische-mikroskopie.html).

```
<< 363787002 |Observable entity (observable entity)| : 370130000 |Property (attribute)| = (118589004 |Threshold (property) (qualifier value)| OR 705057003 |Presence (property) (qualifier value)|), 370132008 |Scale type (attribute)| = 117363000 |Ordinal value (qualifier value)|, 246501002 |Technique (attribute)| = (<< 278289002 |Microscopy technique (qualifier value)| OR << 703857004 |Staining technique (qualifier value)|)
```

| Attribute | Value |
|---|---|
| Property | Threshold OR Presence |
| Scale type | Ordinal value |
| Technique | `<< Microscopy technique` OR `<< Staining technique` |

The rule selects **331** concepts (331 with a LOINC code, 0 without). Release 2026-03-21 → 2026-10-21: **+16 / −1** (lists on the [release delta](loinc-ontology-release-delta.html) page).

#### Codes (331)

| LOINC | Name | Component | Direct site | Property | Scale type | Technique |
|---|---|---|---|---|---|---|
| 100915-8 | Burr cells [Presence] in Body fluid by Light microscopy | Burr cell | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 101225-1 | Hemosiderin [Presence] in Blood or Marrow by Prussian blue stain | Hemosiderin | – | Threshold | Ordinal value | Prussian blue stain technique |
| 101339-0 | Cholesterol [Presence] in Fibroblast by Filipin stain | Cholesterol | – | Threshold | Ordinal value | Filipin stain technique |
| 101376-2 | Megakaryocytes [Presence] in Blood by Light microscopy | Megakaryocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10371-3 | Bite cells [Presence] in Blood by Light microscopy | Bite cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10372-1 | Blister cells [Presence] in Blood by Light microscopy | Blister cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10374-7 | Helmet cells [Presence] in Blood by Light microscopy | Helmet cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10375-4 | Irregularly contracted cells [Presence] in Blood by Light microscopy | Irregularly contracted cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10376-2 | Oval macrocytes [Presence] in Blood by Light microscopy | Oval macrocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10377-0 | Pencil cells [Presence] in Blood by Light microscopy | Pencil cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10378-8 | Polychromasia [Presence] in Blood by Light microscopy | Polychromatophilic stain reaction | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10379-6 | Erythrocytes.dual population [Presence] in Blood by Light microscopy | Dual red blood cell population | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10380-4 | Stomatocytes [Presence] in Blood by Light microscopy | Stomatocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 10381-2 | Target cells [Presence] in Blood by Light microscopy | Target cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 104348-8 | Borrelia recurrentis [Presence] in Blood by Microscopy | Borrelia recurrentis | Blood specimen | Threshold | Ordinal value | Microscopy technique |
| 104350-4 | Borrelia recurrentis [Presence] in Specimen by Microscopy | Borrelia recurrentis | Specimen | Threshold | Ordinal value | Microscopy technique |
| 105052-5 | Bacteria [Presence] in Urine sediment by Microscopy | Domain Bacteria | Urine sediment specimen | Threshold | Ordinal value | Microscopy technique |
| 105053-3 | Calcium oxalate crystals [Presence] in Urine sediment by Microscopy | Calcium oxalate crystal | Urine sediment specimen | Threshold | Ordinal value | Microscopy technique |
| 106049-0 | Fungus [Presence] in Tissue by KOH preparation | Fungi | Tissue specimen | Threshold | Ordinal value | KOH preparation technique |
| 10675-7 | Hepatitis B virus surface Ag [Presence] in Tissue by Orcein stain | Hepatitis B surface antigen | Tissue specimen | Threshold | Ordinal value | Orcein stain technique |
| 106775-0 | Epithelial cells [Presence] in Synovial fluid by Light microscopy | Epithelial cell | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 106776-8 | Yeast [Presence] in Synovial fluid by Light microscopy | Yeast | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 106778-4 | Yeast [Presence] in Bronchoalveolar lavage by Light microscopy | Yeast | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Light microscopy |
| 107167-9 | Microscopic observation [Presence] in Sputum tracheal aspirate by Gram stain | – | Sputum specimen obtained by aspiration from trachea | Threshold | Ordinal value | Gram stain |
| 10726-8 | Toxoplasma gondii [Presence] in Tissue by Giemsa stain | Toxoplasma gondii | Tissue specimen | Threshold | Ordinal value | Giemsa stain technique |
| 107465-7 | Leukocytes [Presence] in Pus by Light microscopy | Leukocyte | Pus specimen | Threshold | Ordinal value | Light microscopy |
| 107466-5 | Epithelial cells [Presence] in Pus by Light microscopy | Epithelial cell | Pus specimen | Threshold | Ordinal value | Light microscopy |
| 107468-1 | Yeast [Presence] in Pus by Light microscopy | Yeast | Pus specimen | Threshold | Ordinal value | Light microscopy |
| 107469-9 | Leukocytes [Presence] in Aspirate by Light microscopy | Leukocyte | Specimen obtained by aspiration | Threshold | Ordinal value | Light microscopy |
| 107470-7 | Epithelial cells [Presence] in Aspirate by Light microscopy | Epithelial cell | Specimen obtained by aspiration | Threshold | Ordinal value | Light microscopy |
| 107471-5 | Yeast [Presence] in Aspirate by Light microscopy | Yeast | Specimen obtained by aspiration | Threshold | Ordinal value | Light microscopy |
| 107472-3 | Leukocytes [Presence] in Tissue by Light microscopy | Leukocyte | Tissue specimen | Threshold | Ordinal value | Light microscopy |
| 107475-6 | Leukocytes [Presence] in Wound deep by Light microscopy | Leukocyte | Specimen from deep wound | Threshold | Ordinal value | Light microscopy |
| 107476-4 | Leukocytes [Presence] in Wound shallow by Light microscopy | Leukocyte | Specimen from superficial wound | Threshold | Ordinal value | Light microscopy |
| 107477-2 | Yeast [Presence] in Wound shallow by Light microscopy | Yeast | Specimen from superficial wound | Threshold | Ordinal value | Light microscopy |
| 107478-0 | Epithelial cells [Presence] in Wound shallow by Light microscopy | Epithelial cell | Specimen from superficial wound | Threshold | Ordinal value | Light microscopy |
| 107483-0 | Leukocytes [Presence] in Pericardial fluid by Light microscopy | Leukocyte | Pericardial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 107484-8 | Epithelial cells [Presence] in Pericardial fluid by Light microscopy | Epithelial cell | Pericardial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 107485-5 | Yeast [Presence] in Pericardial fluid by Light microscopy | Yeast | Pericardial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 107497-0 | Leukocytes [Presence] in Bronchial specimen by Light microscopy | Leukocyte | Specimen from bronchus | Threshold | Ordinal value | Light microscopy |
| 107498-8 | Epithelial cells [Presence] in Bronchial specimen by Light microscopy | Epithelial cell | Specimen from bronchus | Threshold | Ordinal value | Light microscopy |
| 107526-6 | Yeast [Presence] in Vaginal fluid by Gram stain | Yeast | Specimen from vagina | Threshold | Ordinal value | Gram stain |
| 107528-2 | Granulocytes [Presence] in Vaginal fluid by Gram stain | Granulocytic cell | Specimen from vagina | Threshold | Ordinal value | Gram stain |
| 111555-9 | Microscopic observation [Presence] in Bronchoalveolar aspirate by Acid fast stain.Ziehl-Neelsen | – | – | Threshold | Ordinal value | Ziehl-Neelsen stain technique |
| 112407-2 | Bacteria [Presence] in Urine by Light microscopy | Domain Bacteria | Urine specimen | Threshold | Ordinal value | Light microscopy |
| 11274-8 | Elliptocytes [Presence] in Blood by Light microscopy | Elliptocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 11280-5 | Cabot rings [Presence] in Blood by Light microscopy | Cabot's ring body | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 11281-3 | Auer rods [Presence] in Blood by Light microscopy | Auer rod | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 113024-4 | Yeast [Presence] in Urethra by Gram stain | Yeast | Specimen from urethra | Threshold | Ordinal value | Gram stain |
| 113028-5 | Gram positive bacteria [Presence] in Urethra by Gram stain | Gram-positive bacteria | Specimen from urethra | Threshold | Ordinal value | Gram stain |
| 113032-7 | Gram positive bacteria [Presence] in Bronchoalveolar lavage by Gram stain | Gram-positive bacteria | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Gram stain |
| 113042-6 | Gram positive bacteria [Presence] in Vaginal fluid by Gram stain | Gram-positive bacteria | Specimen from vagina | Threshold | Ordinal value | Gram stain |
| 113045-9 | Yeast [Presence] in Pleural fluid by Gram stain | Yeast | Pleural fluid specimen | Threshold | Ordinal value | Gram stain |
| 113053-3 | Yeast [Presence] in Peritoneal fluid by Gram stain | Yeast | Peritoneal fluid specimen | Threshold | Ordinal value | Gram stain |
| 113058-2 | Leukocytes [Presence] in Peritoneal fluid by Gram stain | Leukocyte | Peritoneal fluid specimen | Threshold | Ordinal value | Gram stain |
| 113059-0 | Gram positive bacteria [Presence] in Sputum by Gram stain | Gram-positive bacteria | Sputum specimen | Threshold | Ordinal value | Gram stain |
| 113060-8 | Yeast [Presence] in Bronchoalveolar aspirate by Gram stain | Yeast | – | Threshold | Ordinal value | Gram stain |
| 113064-0 | Gram positive bacteria [Presence] in Bronchoalveolar aspirate by Gram stain | Gram-positive bacteria | – | Threshold | Ordinal value | Gram stain |
| 113071-5 | Yeast [Presence] in Tissue by Gram stain | Yeast | Tissue specimen | Threshold | Ordinal value | Gram stain |
| 113075-6 | Gram positive bacteria [Presence] in Tissue by Gram stain | Gram-positive bacteria | Tissue specimen | Threshold | Ordinal value | Gram stain |
| 113081-4 | Gram positive bacteria [Presence] in Aspirate by Gram stain | Gram-positive bacteria | Specimen obtained by aspiration | Threshold | Ordinal value | Gram stain |
| 113082-2 | Yeast [Presence] in Sputum by Gram stain | Yeast | Sputum specimen | Threshold | Ordinal value | Gram stain |
| 113089-7 | Gram positive bacteria [Presence] in Pus by Gram stain | Gram-positive bacteria | Pus specimen | Threshold | Ordinal value | Gram stain |
| 12248-1 | Epithelial cells.renal [Presence] in Urine sediment by Light microscopy | Renal epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 12258-0 | Epithelial cells.squamous [Presence] in Urine sediment by Light microscopy | Squamous epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 12452-9 | Epithelial cells [Presence] in Semen by Light microscopy | Epithelial cell | Semen sample | Threshold | Ordinal value | Light microscopy |
| 12454-5 | Urate crystals amorphous [Presence] in Urine sediment by Light microscopy | Amorphous urate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 12512-0 | Calcium hydrogen phosphate dihydrate crystals [Presence] in Urine sediment by Light microscopy | Calcium hydrogen phosphate dihydrate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 13048-4 | Sezary cells [Presence] in Blood by Light microscopy | Sézary cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 13330-6 | Barr bodies [Presence] in Cervix by Light microscopy | Sex chromatin | Specimen from uterine cervix | Threshold | Ordinal value | Light microscopy |
| 13596-2 | Histiocytes [Presence] in Nose by Light microscopy | Resident tissue macrophage | Specimen from nose | Threshold | Ordinal value | Light microscopy |
| 13627-5 | Erythrocytes [Presence] in Semen by Light microscopy | Erythrocyte | Semen sample | Threshold | Ordinal value | Light microscopy |
| 13655-6 | Leukocytes [Presence] in Stool by Light microscopy | Leukocyte | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 13942-8 | Spermatozoa Motile [Presence] in Semen by Light microscopy | Motile spermatozoa | Semen sample | Threshold | Ordinal value | Light microscopy |
| 14103-6 | Epithelial cells [Presence] in Stool by Light microscopy | Epithelial cell | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 14105-1 | Leukocytes [Presence] in Nose by Light microscopy | Leukocyte | Specimen from nose | Threshold | Ordinal value | Light microscopy |
| 14124-2 | Bacteria [Presence] in Semen by Light microscopy | Domain Bacteria | Semen sample | Threshold | Ordinal value | Light microscopy |
| 14125-9 | Entamoeba histolytica [Presence] in Stool by Trichrome stain | Entamoeba histolytica | Stool specimen | Threshold | Ordinal value | Trichrome stain |
| 14327-1 | Epithelial cells.squamous [Presence] in Sputum by Light microscopy | Squamous epithelial cell | Sputum specimen | Threshold | Ordinal value | Light microscopy |
| 14328-9 | Leukocytes [Presence] in Sputum by Light microscopy | Leukocyte | Sputum specimen | Threshold | Ordinal value | Light microscopy |
| 14329-7 | Mucus [Presence] in Sputum by Light microscopy | Mucus | Sputum specimen | Threshold | Ordinal value | Light microscopy |
| 16614-0 | Cholesterol crystals [Presence] in Body fluid by Light microscopy | Cholesterol crystal | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 16822-9 | Epithelial cells [Presence] in Nose by Light microscopy | Epithelial cell | Specimen from nose | Threshold | Ordinal value | Light microscopy |
| 17257-7 | Mesothelial cells [Presence] in Body fluid by Light microscopy | Mesothelial cell | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 17773-3 | Yeast [Presence] in Stool by Light microscopy | Yeast | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 17783-2 | Hemosiderin [Presence] in Urine by Light microscopy | Hemosiderin | Urine specimen | Threshold | Ordinal value | Light microscopy |
| 18192-5 | Bacteria [Presence] in Nose by Light microscopy | Domain Bacteria | Specimen from nose | Threshold | Ordinal value | Light microscopy |
| 18311-1 | Pelger Huet cells [Presence] in Blood by Light microscopy | Pelger Huet cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 18312-9 | Platelet satellitism [Presence] in Blood by Light microscopy | Rosette | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 18319-4 | Neutrophils.vacuolated [Presence] in Blood by Light microscopy | Vacuolated neutrophil | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 18422-6 | Microcytes [Presence] in Urine by Light microscopy | Microcytic erythrocyte | Urine specimen | Threshold | Ordinal value | Light microscopy |
| 20453-7 | Epithelial cells [Presence] in Urine sediment by Light microscopy | Epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 20455-2 | Leukocytes [Presence] in Urine sediment by Light microscopy | Leukocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 20457-8 | Fungi.filamentous [Presence] in Urine sediment by Light microscopy | Filamentous fungus | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 20472-7 | Eosinophils [Presence] in Specimen by Wright stain | Eosinophilic granulocytic cell | Specimen | Threshold | Ordinal value | Wright stain method |
| 20473-5 | Granulocytes [Presence] in Specimen by Wright stain | Granulocytic cell | Specimen | Threshold | Ordinal value | Wright stain method |
| 20780-3 | Cryptosporidium sp [Presence] in Large intestine or small intestine Tissue by Acid fast stain | Cryptosporidium | – | Threshold | Ordinal value | Acid fast stain |
| 20781-1 | Cryptosporidium sp [Presence] in Stool by Acid fast stain | Cryptosporidium | Stool specimen | Threshold | Ordinal value | Acid fast stain |
| 20949-4 | Rickettsia sp [Presence] in Blood by Light microscopy | Rickettsia | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 21384-3 | Mesothelial cells [Presence] in Peritoneal fluid by Light microscopy | Mesothelial cell | Peritoneal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 21550-9 | Synovial lining cells [Presence] in Synovial fluid by Light microscopy | Synoviocytes | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 22992-2 | Chlamydophila psittaci [Presence] in Specimen by Giemsa stain | Chlamydia psittaci | Specimen | Threshold | Ordinal value | Giemsa stain technique |
| 22993-0 | Chlamydophila psittaci [Presence] in Placenta by Electron microscopy | Chlamydia psittaci | Specimen from placenta | Threshold | Ordinal value | Electron microscopy |
| 23016-9 | Coxiella burnetii [Presence] in Placenta by Light microscopy | Coxiella burnetii | Specimen from placenta | Threshold | Ordinal value | Light microscopy |
| 23025-0 | Dermatophilus congolensis [Presence] in Skin by Giemsa stain | Dermatophilus congolensis | Specimen from skin | Threshold | Ordinal value | Giemsa stain technique |
| 23388-2 | Rabies virus [Presence] in Brain by Light microscopy | Lyssavirus rabies | Specimen from brain | Threshold | Ordinal value | Light microscopy |
| 23499-7 | Trichinella spiralis [Presence] in Tissue by Light microscopy | Trichinella spiralis | Tissue specimen | Threshold | Ordinal value | Light microscopy |
| 23595-2 | Dermatophilus congolensis [Presence] in Exudate by Giemsa stain | Dermatophilus congolensis | Exudate specimen | Threshold | Ordinal value | Giemsa stain technique |
| 23596-0 | Dermatophilus congolensis [Presence] in Exudate by Carbol-fuchsin stain | Dermatophilus congolensis | Exudate specimen | Threshold | Ordinal value | Carbol-fuchsin stain technique |
| 23597-8 | Dermatophilus congolensis [Presence] in Exudate by Methylene blue stain | Dermatophilus congolensis | Exudate specimen | Threshold | Ordinal value | Methylene blue stain technique |
| 23897-2 | Mesothelial cells [Presence] in Specimen by Light microscopy | Mesothelial cell | Specimen | Threshold | Ordinal value | Light microscopy |
| 23898-0 | Mesothelial cells [Presence] in Cerebrospinal Fluid by Light microscopy | Mesothelial cell | Cerebrospinal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 24124-0 | Casts [Presence] in Urine sediment by Light microscopy | Cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 24408-7 | Babesia canis [Presence] in Blood by Giemsa stain | Babesia canis | Blood specimen | Threshold | Ordinal value | Giemsa stain technique |
| 24413-7 | Eperythrozoon sp [Presence] in Blood by Giemsa stain | Eperythrozoon | Blood specimen | Threshold | Ordinal value | Giemsa stain technique |
| 24421-0 | Haemobartonella felis [Presence] in Blood by Light microscopy | Mycoplasma haemofelis | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 25145-4 | Bacteria [Presence] in Urine sediment by Light microscopy | Domain Bacteria | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25156-1 | Eosinophils [Presence] in Urine sediment by Light microscopy | Eosinophilic granulocytic cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25157-9 | Epithelial casts [Presence] in Urine sediment by Light microscopy | Epithelial cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25158-7 | Oval fat bodies (globules) [Presence] in Urine sediment by Light microscopy | Oval fat body | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25159-5 | Fatty casts [Presence] in Urine sediment by Light microscopy | Fatty cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25160-3 | Granular casts [Presence] in Urine sediment by Light microscopy | Granular cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 25162-9 | Hyaline casts [Presence] in Urine sediment by Light microscopy | Protein cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 29990-9 | Spermatozoa [Presence] in Semen by Light microscopy --post vasectomy | Spermatozoa | Semen sample | Threshold | Ordinal value | Light microscopy |
| 29992-5 | Eosinophils [Presence] in Nose by Wright stain | Eosinophilic granulocytic cell | Specimen from nose | Threshold | Ordinal value | Wright stain method |
| 29993-3 | Eosinophils [Presence] in Sputum by Wright stain | Eosinophilic granulocytic cell | Sputum specimen | Threshold | Ordinal value | Wright stain method |
| 32034-1 | Granulocytes [Presence] in Cerebrospinal Fluid by Wright stain | Granulocytic cell | Cerebrospinal fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32035-8 | Granulocytes [Presence] in Body fluid by Wright stain | Granulocytic cell | Body fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32036-6 | Granulocytes [Presence] in Pericardial fluid by Wright stain | Granulocytic cell | Pericardial fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32037-4 | Granulocytes [Presence] in Pleural fluid by Wright stain | Granulocytic cell | Pleural fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32038-2 | Granulocytes [Presence] in Peritoneal fluid by Wright stain | Granulocytic cell | Peritoneal fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32039-0 | Granulocytes [Presence] in Synovial fluid by Wright stain | Granulocytic cell | Synovial fluid specimen | Threshold | Ordinal value | Wright stain method |
| 32142-2 | Leukocytes [Presence] in Synovial fluid by Light microscopy | Leukocyte | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 32146-3 | Platelets Large [Presence] in Blood by Light microscopy | Macrothrombocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 32158-8 | Klebsiella granulomatis [Presence] in Genital specimen by Light microscopy | Klebsiella granulomatis | Specimen from genital system | Threshold | Ordinal value | Light microscopy |
| 32173-7 | Eosinophils [Presence] in Blood by Wright stain | Eosinophilic granulocytic cell | Blood specimen | Threshold | Ordinal value | Wright stain method |
| 32175-2 | Coarse Granular Casts [Presence] in Urine sediment by Light microscopy | Coarse granular cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 32176-0 | Fine Granular Casts [Presence] in Urine sediment by Light microscopy | Fine granular cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 32208-1 | Platelets Small [Presence] in Blood by Light microscopy | Microthrombocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 32356-8 | Yeast [Presence] in Urine sediment by Light microscopy | Yeast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 32724-7 | Trichomonas sp [Presence] in Urine by Light microscopy | Trichomonas | Urine specimen | Threshold | Ordinal value | Light microscopy |
| 32776-7 | Erythrocytes [Presence] in Urine sediment by Light microscopy | Erythrocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 32778-3 | Fibrin strands [Presence] in Blood by Light microscopy | Fibrin strand | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 33044-9 | Pyknosis [Presence] in Blood by Light microscopy | Karyopyknosis | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 33056-3 | Sezary cells [Presence] in Specimen by Light microscopy | Sézary cell | Specimen | Threshold | Ordinal value | Light microscopy |
| 33215-5 | Neutrophils.agranular [Presence] in Blood by Light microscopy | Agranular neutrophil | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 33216-3 | Platelets agranular [Presence] in Blood by Light microscopy | Agranular platelet | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 33249-4 | Hyperchromia [Presence] in Blood by Light microscopy | Hyperchromatism | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 33784-0 | Bacterial casts [Presence] in Urine sediment by Light microscopy | Bacterial cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 33804-6 | RBC casts [Presence] in Urine sediment by Light microscopy | Erythrocyte cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 33825-1 | WBC casts [Presence] in Urine sediment by Light microscopy | Leukocyte cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 33862-4 | Waxy casts [Presence] in Urine sediment by Light microscopy | Waxy cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 34174-3 | Hemoglobin casts [Presence] in Urine sediment by Light microscopy | Hemoglobin cast | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 34469-7 | Leukocytes [Presence] in Bile fluid by Light microscopy | Leukocyte | Bile specimen | Threshold | Ordinal value | Light microscopy |
| 34471-3 | Calcium bilirubinate crystals [Presence] in Bile fluid by Light microscopy | Calcium bilirubinate crystal | Bile specimen | Threshold | Ordinal value | Light microscopy |
| 34472-1 | Cholesterol crystals [Presence] in Bile fluid by Light microscopy | Cholesterol crystal | Bile specimen | Threshold | Ordinal value | Light microscopy |
| 34702-1 | Mycoplasma sp [Presence] in Specimen by Hoechst stain | Genus Mycoplasma | Specimen | Threshold | Ordinal value | Hoechst stain technique |
| 35436-5 | Spermatozoa [Presence] in Semen by Light microscopy --post reanastomosis | Spermatozoa | Semen sample | Threshold | Ordinal value | Light microscopy |
| 38458-6 | Crystals [Presence] in Synovial fluid by Light microscopy | Crystal - body material | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 38903-1 | Lymphocytes [Presence] in Stool by Light microscopy | Lymphocyte | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 38994-0 | Histiocytes [Presence] in Urine sediment by Light microscopy | Resident tissue macrophage | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 38996-5 | Neutrophils [Presence] in Urine by Light microscopy | Neutrophilic granulocytic cell | Urine specimen | Threshold | Ordinal value | Light microscopy |
| 40630-6 | Nucleated erythrocytes [Presence] in Blood by Light microscopy | Nucleated red blood cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 40654-6 | Neutrophils.hypogranulated [Presence] in Blood by Light microscopy | Hypogranular white blood cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 40682-7 | Urate crystals [Presence] in Body fluid by Light microscopy | Urate crystal | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 40688-4 | Megakaryocytes [Presence] in Bone marrow by Microscopy | Megakaryocyte | Bone marrow specimen | Threshold | Ordinal value | Microscopy technique |
| 40716-3 | Hairy cells [Presence] in Blood by Light microscopy | Hairy cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 40743-7 | Plasma cells [Presence] in Blood by Light microscopy | Plasma cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 41222-1 | Yeast [Presence] in Body fluid by Light microscopy | Yeast | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41242-9 | Yeast [Presence] in Cerebrospinal Fluid by Light microscopy | Yeast | Cerebrospinal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41488-8 | Cryptosporidium sp [Presence] in Specimen by Acid fast stain | Cryptosporidium | Specimen | Threshold | Ordinal value | Acid fast stain |
| 41598-4 | Bacteria [Presence] in Pericardial fluid by Light microscopy | Domain Bacteria | Pericardial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41599-2 | Bacteria [Presence] in Body fluid by Light microscopy | Domain Bacteria | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41600-8 | Bacteria [Presence] in Synovial fluid by Light microscopy | Domain Bacteria | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41601-6 | Bacteria [Presence] in Peritoneal fluid by Light microscopy | Domain Bacteria | Peritoneal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41602-4 | Bacteria [Presence] in Cerebrospinal Fluid by Light microscopy | Domain Bacteria | Cerebrospinal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 41603-2 | Bacteria [Presence] in Pleural fluid by Light microscopy | Domain Bacteria | Pleural fluid specimen | Threshold | Ordinal value | Light microscopy |
| 42327-7 | Leukocytes [Presence] in Stool by Methylene blue stain | Leukocyte | Stool specimen | Threshold | Ordinal value | Methylene blue stain technique |
| 42524-9 | Mucus [Presence] in Stool by Light microscopy | Mucus | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 43154-4 | Spermatozoa [Presence] in Semen by Light microscopy --post concentration | Spermatozoa | Semen sample | Threshold | Ordinal value | Light microscopy |
| 43400-1 | Lactobacillus sp morphotypes [Presence] in Vaginal fluid by Light microscopy | Lactobacillus | Specimen from vagina | Threshold | Ordinal value | Light microscopy |
| 44017-2 | Blasts [Presence] in Blood by Light microscopy | Blast cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 44018-0 | Basophils [Presence] in Body fluid by Light microscopy | Basophilic granulocytic cell | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44039-6 | Bacteria [Presence] in Eye by Light microscopy | Domain Bacteria | Specimen from eye | Threshold | Ordinal value | Light microscopy |
| 44040-4 | Basophils [Presence] in Cerebrospinal Fluid by Light microscopy | Basophilic granulocytic cell | Cerebrospinal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44041-2 | Basophils [Presence] in Synovial fluid by Light microscopy | Basophilic granulocytic cell | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44042-0 | Basophils [Presence] in Pericardial fluid by Light microscopy | Basophilic granulocytic cell | Pericardial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44043-8 | Basophils [Presence] in Pleural fluid by Light microscopy | Basophilic granulocytic cell | Pleural fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44044-6 | Basophils [Presence] in Peritoneal fluid by Light microscopy | Basophilic granulocytic cell | Peritoneal fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44048-7 | Basophils [Presence] in Nose by Light microscopy | Basophilic granulocytic cell | Specimen from nose | Threshold | Ordinal value | Light microscopy |
| 44275-6 | Coxiella burnetii [Presence] in Specimen by Light microscopy | Coxiella burnetii | Specimen | Threshold | Ordinal value | Light microscopy |
| 44721-9 | Histiocytes [Presence] in Blood by Light microscopy | Resident tissue macrophage | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 44722-7 | Histiocytes [Presence] in Body fluid by Light microscopy | Resident tissue macrophage | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 44723-5 | Histiocytes [Presence] in Bone marrow by Light microscopy | Resident tissue macrophage | Bone marrow specimen | Threshold | Ordinal value | Light microscopy |
| 45379-5 | Eosinophils [Presence] in Stool by Light microscopy | Eosinophilic granulocytic cell | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 45380-3 | Basophilic stippling fine [Presence] in Blood by Light microscopy | Fine basophilic stippling | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 45381-1 | Basophilic stippling coarse [Presence] in Blood by Light microscopy | Coarse basophilic stippling | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 48048-3 | Neutrophils [Presence] in Nose by Wright stain | Neutrophilic granulocytic cell | Specimen from nose | Threshold | Ordinal value | Wright stain method |
| 48049-1 | Eosinophils [Presence] in Stool by Wright stain | Eosinophilic granulocytic cell | Stool specimen | Threshold | Ordinal value | Wright stain method |
| 48050-9 | Neutrophils [Presence] in Stool by Wright stain | Neutrophilic granulocytic cell | Stool specimen | Threshold | Ordinal value | Wright stain method |
| 48055-8 | Pneumocystis jirovecii [Presence] in Specimen by Calcofluor white | Pneumocystis jirovecii | Specimen | Threshold | Ordinal value | Calcofluor white stain technique |
| 48069-9 | Spherocytes.micro [Presence] in Blood by Light microscopy | Microspherocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 48707-4 | Hemoglobin C crystals [Presence] in Red Blood Cells by Light microscopy | Hemoglobin C crystal | Erythrocyte specimen | Threshold | Ordinal value | Light microscopy |
| 48710-8 | Eosinophils [Presence] in Specimen by Light microscopy | Eosinophilic granulocytic cell | Specimen | Threshold | Ordinal value | Light microscopy |
| 48973-2 | Leukocytes [Presence] in Stool by Methylene blue stain --2nd specimen | Leukocyte | Stool specimen | Threshold | Ordinal value | Methylene blue stain technique |
| 48981-5 | Anaplasma sp [Presence] in Specimen by Light microscopy | Anaplasma | Specimen | Threshold | Ordinal value | Light microscopy |
| 48982-3 | Ehrlichia sp [Presence] in Specimen by Light microscopy | Ehrlichia | Specimen | Threshold | Ordinal value | Light microscopy |
| 49755-2 | Crystals [Presence] in Urine sediment by Light microscopy | Crystal - body material | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 49839-4 | Eosinophils [Presence] in Urine sediment by Wright stain | Eosinophilic granulocytic cell | Urine sediment specimen | Threshold | Ordinal value | Wright stain method |
| 49967-3 | Charcoal [Presence] in Urine sediment by Light microscopy | Activated charcoal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 50260-9 | Prekeratocytes [Presence] in Blood by Light microscopy | Prekeratocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 50340-9 | Eosinophils [Presence] in Nose by Hansel stain | Eosinophilic granulocytic cell | Specimen from nose | Threshold | Ordinal value | Hansel stain technique |
| 50341-7 | Eosinophils [Presence] in Sputum by Hansel stain | Eosinophilic granulocytic cell | Sputum specimen | Threshold | Ordinal value | Hansel stain technique |
| 50672-5 | Leukocyte toxic vacuoles [Presence] in Blood by Light microscopy | Leukocyte toxic vacuoles | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 50674-1 | Spherocytes [Presence] in Cord blood by Light microscopy | Spherocyte | Cord blood specimen | Threshold | Ordinal value | Light microscopy |
| 51582-5 | Anisochromasia [Presence] in Blood by Light microscopy | Anisochromia | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 51587-4 | Plasmodium sp [Presence] in Blood by Light microscopy | Plasmodium | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 51645-0 | Micromegakaryocytes [Presence] in Blood by Light microscopy | Micromegakaryocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 53541-9 | Epithelial cells [Presence] in Blood by Light microscopy | Epithelial cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 53788-6 | Sodium urate crystals [Presence] in Urine sediment by Light microscopy | Sodium urate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 53969-2 | Microcytes [Presence] in Urine sediment by Light microscopy | Microcytic erythrocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 53970-0 | Macrocytes [Presence] in Urine sediment by Light microscopy | Macrocytic erythrocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 53971-8 | Spherocytes [Presence] in Urine sediment by Light microscopy | Spherocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 53972-6 | Burr cells [Presence] in Urine sediment by Light microscopy | Burr cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 53978-3 | Epithelial cells.non-squamous [Presence] in Urine sediment by Light microscopy | Non-squamous epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 55178-8 | Calcium phosphate crystals [Presence] in Specimen by Light microscopy | Calcium phosphate crystal | Specimen | Threshold | Ordinal value | Light microscopy |
| 55179-6 | Sodium urate crystals [Presence] in Specimen by Light microscopy | Sodium urate crystal | Specimen | Threshold | Ordinal value | Light microscopy |
| 55303-2 | Fungus [Presence] in Skin by KOH preparation | Fungi | Specimen from skin | Threshold | Ordinal value | KOH preparation technique |
| 55304-0 | Fungus [Presence] in Sputum by KOH preparation | Fungi | Sputum specimen | Threshold | Ordinal value | KOH preparation technique |
| 55305-7 | Fungus [Presence] in Specimen by KOH preparation | Fungi | Specimen | Threshold | Ordinal value | KOH preparation technique |
| 55306-5 | Fungus [Presence] in Nail by KOH preparation | Fungi | Nail specimen | Threshold | Ordinal value | KOH preparation technique |
| 55307-3 | Fungus [Presence] in Vaginal fluid by KOH preparation | Fungi | Specimen from vagina | Threshold | Ordinal value | KOH preparation technique |
| 55313-1 | Yeast [Presence] in Vaginal fluid by KOH preparation | Yeast | Specimen from vagina | Threshold | Ordinal value | KOH preparation technique |
| 55314-9 | Yeast [Presence] in Nail by KOH preparation | Yeast | Nail specimen | Threshold | Ordinal value | KOH preparation technique |
| 55315-6 | Yeast [Presence] in Specimen by KOH preparation | Yeast | Specimen | Threshold | Ordinal value | KOH preparation technique |
| 55316-4 | Yeast [Presence] in Sputum by KOH preparation | Yeast | Sputum specimen | Threshold | Ordinal value | KOH preparation technique |
| 55317-2 | Yeast [Presence] in Skin by KOH preparation | Yeast | Specimen from skin | Threshold | Ordinal value | KOH preparation technique |
| 55318-0 | Fungus [Presence] in Bronchial specimen by KOH preparation | Fungi | Specimen from bronchus | Threshold | Ordinal value | KOH preparation technique |
| 55320-6 | Yeast [Presence] in Bronchial specimen by KOH preparation | Yeast | Specimen from bronchus | Threshold | Ordinal value | KOH preparation technique |
| 55835-3 | Vegetable fibers [Presence] in Stool by Light microscopy | Plant fiber | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 5766-1 | Ammonium urate crystals [Presence] in Urine sediment by Light microscopy | Ammonium urate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5771-1 | Bilirubin crystals [Presence] in Urine sediment by Light microscopy | Bilirubin crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5772-9 | Calcium carbonate crystals [Presence] in Synovial fluid by Light microscopy | Calcium carbonate crystal | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 5773-7 | Calcium carbonate crystals [Presence] in Urine sediment by Light microscopy | Calcium carbonate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5774-5 | Calcium oxalate crystals [Presence] in Urine sediment by Light microscopy | Calcium oxalate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5775-2 | Calcium phosphate crystals [Presence] in Urine sediment by Light microscopy | Calcium phosphate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5776-0 | Calcium sulfate crystals [Presence] in Urine sediment by Light microscopy | Calcium sulfate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5777-8 | Cholesterol crystals [Presence] in Urine sediment by Light microscopy | Cholesterol crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5784-4 | Cystine crystals [Presence] in Urine sediment by Light microscopy | Cystine crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5795-0 | Hippurate crystals [Presence] in Urine sediment by Light microscopy | Hippurate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5798-4 | Leucine crystals [Presence] in Urine sediment by Light microscopy | Leucine crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5812-3 | Sulfonamide crystals [Presence] in Urine sediment by Light microscopy | Sulfonamide crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5813-1 | Trichomonas vaginalis [Presence] in Urine sediment by Light microscopy | Trichomonas vaginalis | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5814-9 | Triple phosphate crystals [Presence] in Urine sediment by Light microscopy | Triple phosphate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5815-6 | Tyrosine crystals [Presence] in Urine sediment by Light microscopy | Tyrosine crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5816-4 | Urate crystals [Presence] in Synovial fluid by Light microscopy | Urate crystal | Synovial fluid specimen | Threshold | Ordinal value | Light microscopy |
| 5817-2 | Urate crystals [Presence] in Urine sediment by Light microscopy | Urate crystal | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 58456-5 | Bladder cells [Presence] in Urine sediment by Light microscopy | Urinary bladder epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 5908-9 | Giant platelets [Presence] in Blood by Light microscopy | Giant platelet | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 59839-1 | Urate crystals [Presence] in Tissue by Light microscopy | Urate crystal | Tissue specimen | Threshold | Ordinal value | Light microscopy |
| 60520-4 | Eosinophils [Presence] in Body fluid by Light microscopy | Eosinophilic granulocytic cell | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 67848-2 | Leukocyte clumps [Presence] in Urine sediment by Light microscopy | Leukocytic agglutination | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 702-1 | Anisocytosis [Presence] in Blood by Light microscopy | Anisocytosis | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 703-9 | Basophilic stippling [Presence] in Blood by Light microscopy | Basophilic stippling | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 716-1 | Heinz bodies [Presence] in Blood by Light microscopy | Heinz body | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 72161-3 | Epithelial cells [Presence] in Specimen by Gram stain | Epithelial cell | Specimen | Threshold | Ordinal value | Gram stain |
| 72162-1 | Erythrocytes [Presence] in Specimen by Gram stain | Erythrocyte | Specimen | Threshold | Ordinal value | Gram stain |
| 72163-9 | Leukocytes [Presence] in Specimen by Gram stain | Leukocyte | Specimen | Threshold | Ordinal value | Gram stain |
| 72277-7 | Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy | Trichomonas vaginalis | Prostatic fluid specimen | Threshold | Ordinal value | Light microscopy |
| 72338-7 | Erythrocytes [Presence] in Prostatic fluid by Light microscopy | Erythrocyte | Prostatic fluid specimen | Threshold | Ordinal value | Light microscopy |
| 72339-5 | Lecithin [Presence] in Prostatic fluid by Light microscopy | Lecithin | Prostatic fluid specimen | Threshold | Ordinal value | Light microscopy |
| 72340-3 | Bacteria [Presence] in Prostatic fluid by Light microscopy | Domain Bacteria | Prostatic fluid specimen | Threshold | Ordinal value | Light microscopy |
| 72357-7 | Microscopic observation [Presence] in Specimen by Acid fast stain | – | Specimen | Threshold | Ordinal value | Acid fast stain |
| 728-6 | Hypochromia [Presence] in Blood by Light microscopy | Hypochromatism | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 733-6 | Variant lymphocytes [Presence] in Blood by Light microscopy | Atypical lymphocytes | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 738-5 | Macrocytes [Presence] in Blood by Light microscopy | Macrocytic erythrocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 741-9 | Microcytes [Presence] in Blood by Light microscopy | Microcytic erythrocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 74750-1 | Lymphocytes clefted [Presence] in Blood or Tissue by Light microscopy | Cleft lymphocyte | Tissue specimen or whole blood specimen | Threshold | Ordinal value | Light microscopy |
| 74759-2 | Yeast [Presence] in Specimen by Gram stain | Yeast | Specimen | Threshold | Ordinal value | Gram stain |
| 74783-2 | Malignant cells [Presence] in Body fluid by Light microscopy | Malignant neoplasm cell | Body fluid specimen | Threshold | Ordinal value | Light microscopy |
| 76083-5 | Microscopic observation [Presence] in Bronchoalveolar lavage by Acid fast stain.Ziehl-Neelsen | – | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Ziehl-Neelsen stain technique |
| 765-8 | Neutrophils.hypersegmented [Presence] in Blood by Light microscopy | Hypersegmented neutrophil | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 76705-3 | Trichomonas vaginalis [Presence] in Specimen by Gram stain | Trichomonas vaginalis | Specimen | Threshold | Ordinal value | Gram stain |
| 774-0 | Ovalocytes [Presence] in Blood by Light microscopy | Ovalocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7789-1 | Acanthocytes [Presence] in Blood by Light microscopy | Acanthocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 779-9 | Poikilocytosis [Presence] in Blood by Light microscopy | Poikilocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7790-9 | Burr cells [Presence] in Blood by Light microscopy | Burr cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7791-7 | Dacrocytes [Presence] in Blood by Light microscopy | Dacryocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7792-5 | Dohle body [Presence] in Blood by Light microscopy | Döhle body | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7793-3 | Howell-Jolly bodies [Presence] in Blood by Light microscopy | Howell-Jolly body | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7795-8 | Pappenheimer bodies [Presence] in Blood by Light microscopy | Pappenheimer body | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7796-6 | Platelet clump [Presence] in Blood by Light microscopy | Platelet clumps | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7797-4 | Rouleaux [Presence] in Blood by Light microscopy | Rouleaux formation | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7798-2 | Smudge cells [Presence] in Blood by Light microscopy | Smudge cell | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 7809-7 | Astrovirus [Presence] in Stool by Electron microscopy | Human astrovirus | Stool specimen | Threshold | Ordinal value | Electron microscopy |
| 7973-1 | Norovirus [Presence] in Stool by Electron microscopy | Norovirus | Stool specimen | Threshold | Ordinal value | Electron microscopy |
| 800-3 | Schistocytes [Presence] in Blood by Light microscopy | Schistocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 801-1 | Sickle cells [Presence] in Blood by Light microscopy | Drepanocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 8011-9 | Rotavirus [Presence] in Stool by Electron microscopy | Rotavirus | Stool specimen | Threshold | Ordinal value | Electron microscopy |
| 802-9 | Spherocytes [Presence] in Blood by Light microscopy | Spherocyte | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 803-7 | Toxic granules [Presence] in Blood by Light microscopy | Toxic leukocyte granulations | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 80725-5 | Trichomonas sp [Presence] in Semen by Light microscopy | Trichomonas | Semen sample | Threshold | Ordinal value | Light microscopy |
| 8246-1 | Amorphous sediment [Presence] in Urine sediment by Light microscopy | Amorphous sediment | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 8247-9 | Mucus [Presence] in Urine sediment by Light microscopy | Mucus | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 8248-7 | Spermatozoa [Presence] in Urine sediment by Light microscopy | Spermatozoa | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 8249-5 | Transitional cells [Presence] in Urine sediment by Light microscopy | Transitional epithelial cell | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 85338-2 | LCIS [Presence] in Breast cancer specimen by Light microscopy | Lobular carcinoma in situ | – | Threshold | Ordinal value | Light microscopy |
| 87243-2 | Microscopic observation [Presence] in Specimen by Auramine fluorochrome stain | – | Specimen | Threshold | Ordinal value | Auramine stain technique |
| 88113-6 | Erythrocytes [Presence] in Cerebrospinal Fluid by Gram stain | Erythrocyte | Cerebrospinal fluid specimen | Threshold | Ordinal value | Gram stain |
| 88114-4 | Leukocytes [Presence] in Cerebrospinal Fluid by Gram stain | Leukocyte | Cerebrospinal fluid specimen | Threshold | Ordinal value | Gram stain |
| 88171-4 | Microscopic observation [Presence] in Cornea or Conjunctiva by Acid fast stain | – | – | Threshold | Ordinal value | Acid fast stain |
| 88172-2 | Microscopic observation [Presence] in Isolate by Acid fast stain | – | Microbial isolate | Threshold | Ordinal value | Acid fast stain |
| 88173-0 | Microscopic observation [Presence] in Pleural fluid by Acid fast stain | – | Pleural fluid specimen | Threshold | Ordinal value | Acid fast stain |
| 88234-0 | Microscopic observation [Presence] in Synovial fluid by Acid fast stain | – | Synovial fluid specimen | Threshold | Ordinal value | Acid fast stain |
| 88340-5 | Mite [Presence] in Ear by Light microscopy | Mite | – | Threshold | Ordinal value | Light microscopy |
| 88343-9 | Leukocytes [Presence] in Ear by Light microscopy | Leukocyte | – | Threshold | Ordinal value | Light microscopy |
| 88366-0 | Microscopic observation [Presence] in Vomitus by Acid fast stain | – | Vomitus specimen | Threshold | Ordinal value | Acid fast stain |
| 88631-7 | Microscopic observation [Presence] in Lower respiratory specimen by Acid fast stain.Kinyoun | – | Lower respiratory tract specimen | Threshold | Ordinal value | Acid fast Kinyoun's cold carbolfuchsin stain |
| 88689-5 | Pneumocystis jirovecii [Presence] in Lower respiratory specimen by Calcofluor white | Pneumocystis jirovecii | Lower respiratory tract specimen | Threshold | Ordinal value | Calcofluor white stain technique |
| 90286-6 | Trichomonas vaginalis [Presence] in Vaginal fluid by Light microscopy | Trichomonas vaginalis | Specimen from vagina | Threshold | Ordinal value | Light microscopy |
| 90303-9 | Trichomonas vaginalis [Presence] in Cervix by Light microscopy | Trichomonas vaginalis | Specimen from uterine cervix | Threshold | Ordinal value | Light microscopy |
| 91135-4 | Acanthocytes [Presence] in Urine sediment by Light microscopy | Acanthocyte | Urine sediment specimen | Threshold | Ordinal value | Light microscopy |
| 91845-8 | Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy | Trichomonas vaginalis | Specimen from genital system | Threshold | Ordinal value | Light microscopy |
| 9317-9 | Platelet adequacy [Presence] in Blood by Light microscopy | Platelet | Blood specimen | Threshold | Ordinal value | Light microscopy |
| 94856-2 | Microscopic observation [Presence] in Sputum by Acid fast stain --2nd specimen | – | Sputum specimen | Threshold | Ordinal value | Acid fast stain |
| 94857-0 | Microscopic observation [Presence] in Sputum by Acid fast stain --3rd specimen | – | Sputum specimen | Threshold | Ordinal value | Acid fast stain |
| 95074-1 | Bacteria [Presence] in Bronchoalveolar lavage by Light microscopy | Domain Bacteria | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Light microscopy |
| 96733-1 | Connective tissue [Presence] in Stool by Light microscopy | Connective tissue | Stool specimen | Threshold | Ordinal value | Light microscopy |
| 98027-6 | Lecithin [Presence] in Semen by Light microscopy | Lecithin | Semen sample | Threshold | Ordinal value | Light microscopy |
| 99052-3 | Epithelial cells [Presence] in Bronchoalveolar lavage by Light microscopy | Epithelial cell | Bronchoalveolar lavage fluid specimen | Threshold | Ordinal value | Light microscopy |
| 99394-9 | Siderocytes [Presence] in Blood or Marrow by Prussian blue stain | Siderocyte | – | Threshold | Ordinal value | Prussian blue stain technique |
