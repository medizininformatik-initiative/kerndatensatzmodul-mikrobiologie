<!-- markdownlint-disable MD041 -->
<!-- Structure from kerndatensatz-basis input/pagecontent/changes.md (branch main)
     — one section per version, newest first — and from the MII release-notes
     template, which prescribes "Keep a Changelog".

     Maintenance rule: for every release add a new `### <version>` section at the
     top, in BOTH languages, as part of the release pull request. Do not change a
     published section afterwards.
     German mirror: input/translations/de/pagecontent/changes.md. -->

This document describes the significant changes per release of the IG.

| Version | Date | Type | Content |
|---------|------|------|---------|
| 2027.0.0 | tbd | Content update | The information model was improved and uses FHIR data types instead of references to profile canonicals. It is split across three logical models: report, abstract investigation and investigation types. New profile for specific culture, split out of specific determination; culture results uniformly as growth / no growth, indeterminate results via `dataAbsentReason`. The MRE class reference was replaced by a category-based resistance category status (MRSA/VRE/LRE/LVRE, Positive/Negative); MRGN remains a standalone classification. |
| 2027.0.0-alpha.5 | 2026-06-18 | Content/technical update (preview) | CapabilityStatement extended: `DiagnosticReport` added with the microbiology profile, supported search parameters for `Observation` and `DiagnosticReport` completed and aligned with the SearchParameters of the Laboratory module, and local SearchParameters for `Observation.interpretation` and `triggeredBy` added. |
| 2027.0.0-alpha.4 | 2026-06-11 | Technical correction (preview) | Technical corrections without content changes to the IG; in particular, unification of the version labelling in the packages. |
| 2027.0.0-alpha.3 | 2026-05-13 | Technical correction (preview) | Re-release of packages with technical corrections; no content changes to the IG. |
| 2027.0.0-alpha.2 | 2026-04-16 | Content update (preview) | Bindings in several profiles relaxed from `required` to `extensible`, method binding for resistance mechanisms moved to a new ValueSet, DiagnosticReport category aligned to MB including a coding slice and an optional LOINC report type (`mibi-sub-category`), and terminology content for avidity/morphology extended. |
| 2027.0.0-alpha.1 | 2026-04-14 | Breaking (preview) | Nationally and European-agreed realignment of the microbiology modelling with new/replaced profile URLs (canonicals), an Observation-oriented structure without `Observation.component`, updated terminology bindings and a reworked IG navigation. |

### 2027.0.0

Date: tbd

#### High level (what changed in domain terms?)

- The logical model used to be a directory of the FHIR profiles: its leaf elements were typed with the canonical URLs of the profiles and contained no domain data elements. The information model now describes the data elements with FHIR data types (`CodeableConcept`, `Quantity`, `Ratio`, `dateTime`, `Coding`, `Reference`).
- The model is split across three logical models. This allows relations between the classes to be expressed as `Reference`, and the statements that apply to every investigation are defined once on an abstract base class and inherited, instead of being repeated for every investigation type.
- Purely FHIR-technical statements without domain content are not part of the information model; this includes the category slices and the extensions for alternative unit representation and numeric precision.
- Targeted detection stays in one profile whatever the technique - culture, molecular, immunological or biochemical. The question and the type of its answer are the same: is the named target there, `Detected` or `Not detected`. The culture is stated by the test code, whose method axis carries `Organism specific culture`, so it is not repeated in the result. The HL7 EU Lab Semantic Workgroup keeps targeted culture separate and binds growth codes there; this guide deviates and asks about it as ballot question 7.
- General culture and general determination stay cleanly separated: culture answers whether something grows, determination which pathogen it is. Growth codes are therefore bound on general culture only.
- An indeterminate result is no longer coded via `value[x]` but via `Observation.dataAbsentReason`.
- The MRE modelling was changed from an organism classification to a category-based status. Previously `valueCodeableConcept` carried the concrete resistant organism (e.g. MRSA, VRE) and thereby duplicated information from identification, susceptibility and resistance mechanisms. In addition, the underlying SNOMED subtree was broader than "MRE": single-substance resistances such as `838510005 Linezolid resistant Enterococcus` are not automatically multi-resistance.
- Every Observation now expresses the status of **one** named resistance category: `MRSA status = Positive`, `VRE status = Negative` and so on.
- `Negative` means that a pathogen present was assessed on the basis of the relevant investigations and does not meet the criteria of the category. It is not to be equated with a negative pathogen detection; where no sufficient assessment is possible, `dataAbsentReason` is used.
- The derivation is expressed via `Observation.derivedFrom` and not via the `triggeredBy` extension. The underlying investigations should be given, but may be omitted where the status is taken directly from an already categorised laboratory report.
- MRGN remains a standalone classification and is not rebuilt into single-status statements. For the case that an assessed isolate cannot be assigned to any MRGN class, a negative value was added that the LOINC answer list does not contain.

- Specimens now have a profile. The module required `Observation.specimen` for every investigation but gave the reference no target profile, so any Specimen satisfied it. `mii-pr-mikrobio-probe` derives from the biobank base profile that exists for exactly this purpose, and every investigation profile now points at it.
- Microscopy was split into an open and a targeted half, as culture and determination already were. The distinction is the result space: general microscopy answers with the morphological group seen, targeted microscopy with the semiquantitative grade in which a named object was seen. LOINC separates the two by scale, nominal against ordinal.
- Microscopy can now carry a morphology together with its amount. "Few Gram-positive cocci" needs two statements and `value[x]` carries one, so the amount is a component. Its code is `103392008 |Semi-quantitative value|`, the concept the HL7 EU Lab Semantic Workgroup proposes for it.
- The staining technique left `Observation.method` for an extension of its own, `extension[faerbung]`. The element is `0..1` and SNOMED CT holds staining and microscopy in separate hierarchies, so only one of the two could be stated; now both can. The extension binds the hierarchy the HL7 EU Lab Semantic Workgroup uses for the stain, `37926009 |Microbial stain method (procedure)|`, and is given whenever a stain was used, including where the test code names it. The Workgroup places the stain on `Specimen.processing.procedure`; this guide deviates and asks about it as ballot question 2.
- Parasitology became expressible on the result side. Three organism roots were missing — helminths, arachnids and insects — so a worm egg, a scabies mite or a fly larva had no result code. The test code side still depends on a LOINC code that does not yet exist.
- Serology is exempt from post-coordinating the specimen. The HL7 EU Lab Semantic Workgroup allows the specimen to stay pre-coordinated there, because few materials are involved and most are serum. The exemption covers the test code only; a Specimen resource is still expected.
- Susceptibility results may now be given as a category where no measurement exists, which the European model settles explicitly. One invariant remains, asking as a warning that a measured value carry an interpretation.
- Points that the sources leave open, or where this guide deviates from them, are now stated as **ballot questions** rather than resolved silently. Seven are open, each on the page it belongs to and collected on the index page. Their answers depend on what sites can deliver, which is why they are put to the ballot rather than decided here.
- The Bartlett score was spelled "Barlett" throughout, in the canonical URLs as well. The score is named after John G. Bartlett; "Barlett" is not a name. Since the misspelling had reached three published canonicals, correcting only the visible text would have left the URLs permanently wrong, so the identifiers were corrected too. This is a breaking change for a typing error, taken deliberately in a major version with a ballot rather than carried forward indefinitely.
- The diagnostic chain is now documented where it is used: every profile that takes part in one states its own position in it, rather than the relations being described only on the profile-selection page.

#### Detailed changes for implementers (per artefact URL / canonical)

##### Profiles (StructureDefinitions)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-spezifische-bestimmung` | content updated | the result ValueSet additionally contained `Positive`, `No growth` and the full organism ValueSet | still covers targeted detection by any technique, culture included; the result is now only detection or exclusion, and the test and method ValueSets name the culture codes explicitly | Results carrying organism or growth codes are no longer conformant | Change a targeted culture result from `Organism growth` / `No growth` to `Detected` / `Not detected`; represent organism statements via `mii-pr-mikrobio-allgemeine-bestimmung` |
| `mii-pr-mikrobio-allgemeine-kultur` | content updated | `code` fixed to `11475-1`; `value[x]` bound to `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | `code` from `mii-vs-mikrobio-allgemeine-kultur-tests-loinc` (extensible), which also admits the method-neutral `41852-5`, with the new invariant `allgemeine-kultur-method-with-neutral-code` requiring `Observation.method` for that code; `value[x]` bound to `mii-vs-mikrobio-kultur-ergebnis-snomed`, shared by both cultures (required); the detected organism is no longer represented here but via determination | The code binding is a relaxation, every previously valid instance stays valid - but with `41852-5` the method becomes mandatory, because only it identifies the investigation as a culture. The result codes `Positive` and `Indeterminate` are no longer valid | Change results to `365698005` or `264868006`, indeterminacy via `dataAbsentReason`. `11475-1` remains recommended: it names the technique itself and so distinguishes the culture from general identification, which the European sources leave unaddressed |
| `mii-pr-mikrobio-probe` | new | - | Specimen profile derived from `MII_PR_Biobank_Specimen_Bioprobe_Core`; keeps the inherited specimen type binding and documents the microbiological expectations on `type`, `collection.collected[x]` and `parent` | `Observation.specimen` now has a target profile; a Specimen must satisfy the biobank base profile, which makes `status`, `type`, `subject`, `collection` and `collection.collected[x]` mandatory | Add `collection.collected[x]` to existing Specimen resources. Note the inherited requirement of a storage temperature extension below `Specimen.processing`, which is ballot question 3 |
| `mii-pr-mikrobio-spezifische-mikroskopie` | new | previously not representable | Targeted microscopy: an ordinal LOINC code names the object and the stain, `value[x]` carries the semiquantitative grade as `CodeableConcept`, or a count per high power field as `Quantity` or `Range`, and `extension[faerbung]` states the stain | Acid-fast stains, host cell counts and clue cells become codeable; they had no profile before | Move such findings here from general microscopy, where the amount had to be forced into `interpretation` |
| `mii-pr-mikrobio-mikroskopie` | content updated | `code` fixed to `105059-0`; no component; title "Mikroskopie" | `code` from `mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc` (extensible), which also admits `664-3`; new `component[menge]` for the semiquantitative amount; the stain moves into `extension[faerbung]` and `method` keeps the microscopy technique; title "Allgemeine Mikroskopie" | The fixed code is no longer enforced; a morphology and its amount can be sent together | `105059-0` remains preferred. Move stain codes out of `Observation.method` into `extension[faerbung]`, taking the procedure code instead of the qualifier value - `62777006` for `708061008` |
| `mii-pr-mikrobio-empfindlichkeit` | content updated | `value[x]` only `Quantity`; `method` unbound; `^purpose` without a delimitation note | `value[x]` takes `Quantity` or `CodeableConcept`; `method` bound to `mii-vs-mikrobio-empfindlichkeit-methode-snomed` (extensible); the norm is required wherever the category stands - `valueCodeableConcept.extension[Norm]` and `interpretation.extension[Norm]` are both `1..1`; one invariant left, asking as a warning that a measured value carry an interpretation; `^purpose` now states that single-substance resistances of an identified pathogen are represented here (e.g. `29258-1` with `interpretation` R or S) and that targeted detection of a resistant pathogen belongs to specific determination | A laboratory that reports only SIR no longer has to leave `value[x]` empty, and no longer has to repeat the category in `interpretation` to give the norm a place. Method codes are now constrained where they were free | State the norm beside the category, wherever you put the category |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | content updated | description: expected susceptibility derived from genotypic findings | description: derived from genotypic resistance detections; `code` documents the boundary against measured susceptibility | Documentation only, no constraint change | The scope stays genotypic on purpose: measured on 2026-09-10 LOINC has 99 `[Susceptibility]` codes with method Genotyping and none with an immunoassay method, so a protein-based prediction is not codeable |
| `mii-pr-mikrobio-diagnostic-report` | content updated | `result` referenced 18 investigation profiles; `category[mibi-sub-category]` was `0..1`; `conclusion` unmentioned | `result` now names the 2027 profile set including targeted microscopy; `category[mibi-sub-category]` widened to `0..*`; `conclusion` documented as the load-bearing element for serological reports | Reports covering several study types - e.g. bacteriological and mycological - can give all applicable report types, and may reference targeted microscopy | no migration needed; single values transmitted so far remain valid |
| `mii-pr-mikrobio-titer`, `-aviditaet`, `-antigen-antikoerper-quantitativ`, `-spezifische-bestimmung` | content updated | the specimen post-coordination convention applied without exception | `code` states that serology is exempt: a pre-coordinated specimen is permitted there. On specific determination the exemption attaches to the serological use, since the profile also serves the molecular bench | Documentation only. The exemption covers the test code, not `Observation.specimen`, which is still required | - |
| `mii-pr-mikrobio-keimzahl` | content updated | `valueQuantity.code` documented only the denominator-free case | `valueQuantity.code` states the preference for the CFU-annotated units over `/mL`, `/g` and `1` | Documentation only; all units remain valid | Prefer `[CFU]/mL`, `[CFU]/g`, `[CFU]`. `/mL` is a bare reciprocal in UCUM and `1` the dimensionless one; the migration is mechanical |
| `mii-pr-mikrobio-allgemeine-bestimmung` | content updated | `code` fixed to `41852-5`; title "MII PR Mikrobio Allgemeine Bestimmung" | `code` from `mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc` (extensible); title "MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)" | The fixed code is no longer enforced; id and canonical unchanged | `41852-5` stays valid and is part of the new value set. "Bestimmung" is ambiguous in a culture context, where the profile in fact carries the MALDI-TOF species identification |
| all Observation profiles of the module | content updated | `Observation.specimen` `1..` without a target profile | `specimen only Reference(mii-pr-mikrobio-probe)` | A referenced Specimen must now satisfy the new profile | Check existing Specimen resources against `mii-pr-mikrobio-probe`, in particular for `collection.collected[x]` |
| `mii-pr-mikrobio-bartlett-score` | replaced | `mii-pr-mikrobio-barlett-score` | same profile under the corrected identifier; name, title and description now read "Bartlett", as LOINC `75371-5` does | The old canonical no longer resolves; references and `meta.profile` must be re-pointed | Replace `barlett` with `bartlett` in the canonical. No content change beyond the spelling, so no data migration is needed |
| `mii-pr-mikrobio-nugent-score` | content updated | `valueQuantity.unit` was fixed to `1`; no value-range check | the fixed `unit` is dropped in favour of a `^comment`; new invariant `nugent-score-0-to-10` (`value >= 0 and value <= 10`, severity `error`) | Instances with a score outside 0-10 are rejected; `Quantity.unit` is freely choosable, e.g. `Nugent score`, with the UCUM `code` `1` unchanged | Check existing instances against the value range; populate `unit` meaningfully where useful |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | content updated | description: detection of resistance genes or resistance mutations in a specimen | description additionally covers proteins and functional tests (e.g. CIM test) as well as isolates as investigation material | The domain scope is broader than previously documented | Check functional resistance tests previously represented elsewhere against this profile |
| `mii-pr-mikrobio-virulenzfaktor` | content updated | description: detection in a specimen | description: detection in a specimen or an isolate | Clarification of the investigation material | - |
| `mii-pr-mikrobio-resistenzkategorie-status` | new | `mii-pr-mikrobio-mre-klasse` carried the concrete resistant organism (MRSA, VRE) in `valueCodeableConcept` | one Observation per named resistance category, `Positive` / `Negative` as the value, the category in `Observation.code`, and `derivedFrom` `0..*` Must Support for the investigations it rests on | The MRE statement is no longer an organism classification. `Negative` means the pathogen was assessed against the category's criteria and does not meet them - it is not a negative pathogen detection | Split organism-valued MRE instances: the category status goes here, the organism into `mii-pr-mikrobio-allgemeine-bestimmung`, the underlying susceptibility findings into `derivedFrom` |
| `mii-pr-mikrobio-mre-klasse` | removed/deprecated | the MRE class as an organism classification | replaced by `mii-pr-mikrobio-resistenzkategorie-status` | The canonical no longer resolves; `meta.profile` and references must be re-pointed | See the row above. The underlying SNOMED subtree was also broader than "MRE": single-substance resistances such as `838510005 Linezolid resistant Enterococcus` are not automatically multi-resistance |
| `mii-pr-mikrobio-mrgn-klasse` | content updated | `valueCodeableConcept` only with the LOINC classes; no statement on the delimitation against pathogen detection | `valueCodeableConcept` additionally with `keine-mrgn-klasse`; `^purpose` and `valueCodeableConcept ^short` make clear that the profile classifies an already identified isolate and does not replace a detection test, and `derivedFrom` is now `0..*` Must Support with the same rationale as at the resistance category status | Assessed isolates without an MRGN assignment can be represented; the `required` binding remains; the susceptibility findings the classification rests on should be referenced | Move negative cases previously transmitted as a missing Observation or via `dataAbsentReason` to `keine-mrgn-klasse` |
| all Observation profiles of the module | content updated | `dataAbsentReason` inherited unbound from the laboratory base | bound via the shared RuleSet to `mii-vs-mikrobio-data-absent-reason` (extensible) | Indeterminate results are represented here instead of via `value[x]` | Move occurrences of `82334004` from `value[x]` to `dataAbsentReason` |
| all Observation profiles of the module | content updated | each profile sliced `Observation.category` itself, and the microbiology category was one CodeableConcept carrying `MB`, `26436-6`, `laboratory` and `18725-2` together | the slicing comes from the laboratory base profile; the module adds only `category[mibi-category] = MB`, while `laboratory` and `26436-6` sit in the base profile's own `observation-category` slice and `18725-2` is dropped | An instance now carries TWO category entries instead of one with four codings | Split the category: `observation-category` with `laboratory` and `26436-6`, plus a separate entry with `MB`. See any example |
| `mii-ex-mikrobio-faerbung` | new | the stain was carried in `Observation.method` | Extension on `Observation` with a `CodeableConcept` bound to `mii-vs-mikrobio-faerbung-snomed` (extensible) | Stain and microscopy technique can now be stated together, which `Observation.method` could not at `0..1`; the stain is readable in one place whichever test code a laboratory picks | Move stain codes from `method` to the extension and take the procedure code instead of the qualifier value, e.g. `62777006` for `708061008`. Give the extension also where the test code names the stain |
| `mii-ex-mikrobio-empfindlichkeit-norm` | content updated | context `Observation.interpretation` only | context additionally `Observation.value[x]` | The norm can now be stated where the category stands, so a categorical result no longer has to be repeated in `interpretation` just to give the norm a place | No migration: widening the context is additive, and instances carrying the norm on `interpretation` stay valid |

##### Terminologies (ValueSets)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-allgemeine-bestimmung-tests-loinc` | new | the code was fixed in the profile | six codes: `41852-5`, `23667-9`, `42805-2`, `41461-5`, `66885-5`, `101534-6`, extensible | General determination accepts the identification codes a laboratory actually sends, not one fixed code | `41852-5` stays valid |
| `mii-vs-mikrobio-allgemeine-kultur-tests-loinc` | new | the code was fixed in the profile | `11475-1` and `41852-5`, extensible | The general culture accepts the method-neutral code | `11475-1` stays recommended |
| `mii-vs-mikrobio-allgemeine-mikroskopie-tests-loinc` | new | the code was fixed in the profile | `105059-0` plus the nominal codes that carry a stain: `664-3` Gram, `11545-1` acid fast, `676-7` rhodamine-auramine | General microscopy accepts a code that carries the stain | `105059-0` stays recommended |
| `mii-vs-mikrobio-spezifische-mikroskopie-tests-loinc` | new | - | Ordinal `[Presence]` codes filtered per stain: Gram, acid fast, auramine, with `SCALE_TYP` `Ord` | Test codes for targeted microscopy | The stain list is deliberately incomplete: it covers the stains a laboratory has evidenced |
| `mii-vs-mikrobio-mikroskopie-semiquantitativ-snomed` | new | - | The semiquantitative grades, grouped by SNOMED axis: presence findings `441614007`, `441517005`, `441521003`; degree descriptors `Few`, `Moderate number`, `Numerous`, `Scanty`; `None`, `No organisms seen`; `Present`, `Absent` | Result value set of targeted microscopy and of the new microscopy component | The two axes are not interchangeable; which family the European model prefers is still open |
| `mii-vs-mikrobio-empfindlichkeit-methode-snomed` | new | `Observation.method` was unbound on the susceptibility profile | The five techniques the HL7 EU Lab Semantic Workgroup names: broth dilution, disk diffusion, gradient strip, manual and automated MIC microdilution | Method codes are constrained where they were free | The HL7 EU Lab Semantic Workgroup names procedure concepts for the same five techniques; this module keeps qualifier values, as its other nine method lists do. Reported back |
| `mii-vs-mikrobio-faerbung-snomed` | new | - | The descendants of `37926009 Microbial stain method (procedure)` | Stains are coded with the same hierarchy the HL7 EU Lab Semantic Workgroup uses, so the value can move to the Specimen later without being recoded | The procedure axis, not the qualifier axis used before: `62777006` instead of `708061008` |
| `mii-vs-mikrobio-morphologie-methode-snomed` | content updated | microscopy techniques below `278289002` and staining techniques below `703857004` | `278289002` alone | Stain codes are no longer valid in `Observation.method` | Move them to `extension[faerbung]`, see the extension row above |
| `mii-vs-mikrobio-organismen-snomedct` | content updated | six roots | nine roots; added `441649000` Cestoda/Trematoda/Nemata, `76222001` Arachnid, `106763003` Class insecta | Multicellular parasites become expressible as an identification result | Purely additive. The fourth root, slime mould, is annotated "to be confirmed" in the source itself |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | content updated | 15 codes, all `(finding)`, all arranged forms | 29 codes grouped by axis: arranged forms as `(finding)`, bare morphologies as `(organism)` because SNOMED carries them only there, fungal morphology, and `No organisms seen` / `No cells seen` / `Clue cells present` | The commonest Gram findings become expressible; of the previous 15 codes a real laboratory catalogue used three | The four bare bacterial morphologies are descendants of the bacteria domain and therefore also valid values of general determination. Read the granularity from the profile or the test code, never from `value[x]` alone |
| `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` | content updated | eight units, mL and L mixed without preference | ten units in three groups; `ng/L` and `pg/L` added, litre marked as preferred | All previous units stay valid | The HL7 EU Lab Semantic Workgroup recommends litre for serology; `[IU]/mL` remains permitted as the internationally common notation |
| all ValueSets and examples of the module | content updated | LOINC and SNOMED CT were referenced without a version | LOINC pinned to `2.82`, SNOMED CT to the 2026-07-01 international release, in every ValueSet composition and in `Coding.version` of the examples | Expansions become reproducible for this release line; consumers validating `Coding.version` see a value where there was none | No migration: the version is additive. A server expanding against another release may return a different expansion |
| `mii-vs-mikrobio-spezifische-bestimmung-methode-snomed` | content updated | nine techniques | twelve; added `702675006` probe with target amplification, `1259932009` loop-mediated isothermal amplification and `1304162005` nucleic acid sequencing | The commonest modern targeted PCR, isothermal amplification and sequencing become codeable | Beside `258066000`, not instead of it: not every amplification is probe-based |
| `mii-vs-mikrobio-allgemeine-kultur-methode-snomed` | content updated | aerobic and anaerobic culture | additionally `702658000` microbial culture technique | A laboratory that does not distinguish aerobic from anaerobic has a method code | Needed because the method-neutral test code now requires a method |
| `mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc` | content updated | filter only | additionally `106843-6` and `103673-0`, enumerated | Two genuine susceptibility tests enter the set | Both carry `PROPERTY` `Susc` but sit in `CLASS` MICRO and DRUG/TOX; the HL7 EU Lab Semantic Workgroup itself asks Regenstrief to correct them |
| `mii-vs-mikrobio-bartlett-score-loinc` | replaced | `mii-vs-mikrobio-barlett-score-loinc` | same value set under the corrected identifier | The old canonical no longer resolves | Replace `barlett` with `bartlett` in the canonical |
| `mii-vs-mikrobio-kultur-ergebnis-snomed` | new | - | Shared result ValueSet for general and specific culture with `365698005 Organism growth` and `264868006 No growth` | Uniform result coding for both culture profiles | see `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` |
| `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | removed/deprecated | `Positive`, `No growth`, `Indeterminate`; general culture only | replaced by `mii-vs-mikrobio-kultur-ergebnis-snomed` | Old reference invalid | Move to the new canonical; `Positive` to `365698005`, `Indeterminate` to `dataAbsentReason` |
| `mii-vs-mikrobio-data-absent-reason` | new | - | FHIR base codes for missing data, extended by `82334004 Indeterminate` | Target terminology for indeterminate results | Move indeterminate results from `value[x]` here |
| `mii-vs-mikrobio-allgemeine-bestimmung-ergebnis-snomed` | new | `mii-pr-mikrobio-allgemeine-bestimmung` bound `value` directly to `mii-vs-mikrobio-organismen-snomedct`; a negative result could not be represented | organism ValueSet plus `260415000 Not detected` | Where the specimen was examined but no pathogen identified, that is now representable as a result instead of as a missing value | Move negative cases previously omitted or transmitted via `dataAbsentReason` to `260415000`; `dataAbsentReason` remains reserved for the indeterminate result |
| `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | content updated | ten LOINC method types including `LP6429-7`, each only with `PROPERTY` `LP6850-4` (Prid) | nine method types without `LP6429-7`, each additionally with `PROPERTY` `LP217195-9` (PrThr); extended by the individual codes `105904-7` (method-neutral VRE detection, `METHOD_TYP` empty) and `35492-8` (MRSA PCR, listed by LOINC under `CLASS` `LP7755-4`) | Culture codes are no longer contained here. The PrThr terms are a prerequisite for negative detection results; the individual codes are not caught by the filters and are therefore included explicitly | Move culture cases to the new profile and test ValueSet |
| `mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed` | content updated | `Detected`/`Not detected` plus `Positive`, `No growth`, `Indeterminate` and the full organism ValueSet | only `Detected` / `Not detected` | Organism and growth codes as well as `Indeterminate` are no longer valid | Organism statements via general determination, growth via culture, indeterminacy via `dataAbsentReason` |
| `mii-cs-mikrobio-resistenzkategorie` | new | - | MII CodeSystem with the investigation codes `mrsa-status`, `vre-status`, `lre-status`, `lvre-status` | Necessary because neither SNOMED CT (hierarchy *Observable entity*) nor LOINC contains suitable concepts | The state of research and the rejected candidates are documented in the CodeSystem; if a standard code becomes available it is to be adopted with priority |
| `mii-vs-mikrobio-resistenzkategorie-status` | new | - | Investigation codes for the resistance category status, bound `required` | Binds `Observation.code` of the new profile | - |
| `mii-vs-mikrobio-resistenzkategorie-status-ergebnis` | new | - | `10828004 Positive` / `260385009 Negative`, bound `required` | Binds `Observation.value` of the new profile | - |
| `mii-vs-mikrobio-mre-klasse-snomedct` | removed/deprecated | SNOMED subtree `Resistant bacteria` / `fungi` / `virus` as the value of the MRE class | dropped without replacement | Old reference invalid; the value is no longer an organism species | Move to `mii-vs-mikrobio-resistenzkategorie-status-ergebnis`, move the organism statement into pathogen identification |
| `mii-cs-mikrobio-mrgn-ergebnis` | new | - | MII CodeSystem with `keine-mrgn-klasse` | The LOINC answer list `LL6195-3` for `99780-9` contains only 2MRGN/3MRGN/4MRGN and therefore no negative value | - |
| `mii-vs-mikrobio-mrgn-klasse-loinc` | content updated | only `LA33214-0`, `LA33215-7`, `LA33216-5` | additionally `keine-mrgn-klasse` | Assessed isolates without an MRGN assignment can be represented; the `required` binding remains | - |
| `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` | content updated | all LOINC codes with `CLASS` `LP7755-4` and `PROPERTY` `LP217195-9` | additionally an `exclude` of `35492-8` | Besides resistance determinants, the CLASS filter also caught the pathogen detection `35492-8`. The profile assignment follows the semantics: the code detects a pathogen, not a determinant, and is therefore included in `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | Move instances with `35492-8` from `mii-pr-mikrobio-resistenzmechanismen-determinanten` to `mii-pr-mikrobio-spezifische-bestimmung` |
| `mii-vs-mikrobio-detected-not-detected-snomed` | content updated | `Detected`, `Not detected`, `Indeterminate` | without `Indeterminate` | Affects virulence factor and resistance mechanisms | Move `82334004` to `dataAbsentReason` |

##### Logical model

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-lm-mikrobio-logical-model` | content updated | collective model whose leaf elements were typed with the profile canonicals; `Befundtyp` was `0..1` | Now describes only the microbiological report and references `mii-lm-mikrobio-untersuchung` via `Untersuchung`; canonical and id remain unchanged, `type` now corresponds to the canonical URL; `Befundtyp` is `0..*` | Mappings onto the former collective model no longer apply; tools that check `type` against the canonical now find matching values | Split mappings across the three node structures |
| `mii-lm-mikrobio-untersuchung` | new | - | Abstract base class of all microbiological investigations; target of the model-internal references | New artefact in the information model | Map the statements applying to every investigation against this |
| `mii-lm-mikrobio-untersuchungsarten` | new | - | The domain variants, derived from `mii-lm-mikrobio-untersuchung`, with `AllgemeineMikroskopie` and `SpezifischeMikroskopie` as separate variants, `Empfindlichkeit.Ergebnis[x]` as `Quantity` or `CodeableConcept` and `BartlettScore` in the corrected spelling | New artefact in the information model | Map variant-specific elements against this |

##### CapabilityStatement

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-cps-mikrobio-metadata` | content updated | 18 supported Observation profiles; search parameters without `titer` | 19 profiles: `mii-pr-mikrobio-mre-klasse` replaced by `mii-pr-mikrobio-resistenzkategorie-status`, `mii-pr-mikrobio-spezifische-mikroskopie` added and `mii-pr-mikrobio-barlett-score` corrected to `-bartlett-score`; search parameter `titer` declared for `Observation` | Servers declaring conformance list a changed profile set, and the canonical of the MRE class is no longer among them | Check the `/metadata` output and conformance tests against the changed profile set |

##### SearchParameter

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-sp-mikrobio-observation-titer` | new | Titres were not searchable: `mii-pr-mikrobio-titer` represents the value as a `Ratio`, but the base parameter `Observation-value-quantity` covers only `Quantity` and `SampledData` | local SearchParameter `titer` (`quantity`) on `Observation.value.ofType(Ratio).denominator`, included in the CapabilityStatement | Searching by dilution level becomes possible; since the numerator is fixed at `1`, a larger denominator corresponds to a higher titre, e.g. `?titer=gt160` | no migration needed; existing titre instances remain unchanged |

##### Examples and IG page structure

- New examples, each documenting a case that was not representable before: `mii-exa-mikrobio-allgemeine-kultur-methodenneutral` (the method-neutral culture code with its mandatory method), `mii-exa-mikrobio-mikroskopie-gram-kokken-wenig` (morphology plus amount as a component), `mii-exa-mikrobio-spezifische-mikroskopie-auramin-negativ` and `-kinyoun-zweiplus` (acid-fast grades), `mii-exa-mikrobio-spezifische-mikroskopie-leukozyten-gesichtsfeld` (a count per high power field), `mii-exa-mikrobio-empfindlichkeit-nur-kategorie` (a category without a measurement) and `mii-exa-mikrobio-spezifische-bestimmung-influenza-positiv`, which shows the direction of `derivedFrom`: the detection points at the Ct value it was read from, where the reference previously sat on `mii-exa-mikrobio-ct-wert` and ran the other way. The microscopy examples are taken from a real laboratory result catalogue.
- The examples now share supporting resources instead of inlining them: `mii-exa-mikrobio-patient`, `mii-exa-mikrobio-labor` as the performing laboratory, and `mii-exa-mikrobio-probe` with `mii-exa-mikrobio-probe-katheterspitze` as specimens against the new Specimen profile.
- Seven ballot questions are stated in the guide, each on the page it belongs to and collected on the index page. New sections explain granularity against axis, the method axis, the serology exemption from specimen post-coordination, the panel pattern for grouping several results, and the test code shared by general culture and general identification.
- `mii-exa-mikrobio-spezifische-kultur` reports `Detected` instead of `Organism growth`: a targeted culture answers whether the named target is there, and the culture itself is already stated by the test code.
- New page *Technical Implementation → Profile Selection and Delimitation* delimits targeted pathogen detection, susceptibility testing, MRGN classification and resistance category status against each other and describes the diagnostic chain.
- The page *MRE class* was replaced by *Resistance category status*.
- `mii-exa-mikrobio-mre-klasse` is dropped. New are two examples for the resistance category status (VRE positive and negative, representative of all categories), negative examples for specific determination and specific culture, an example for `keine-mrgn-klasse`, and a three-part example chain (culture → identification → susceptibility) as the basis of the derivation.
- New page *Guidance for Researchers*, and *Guidance for Implementers* completed. Both follow the structure the Laboratory module uses, and the home page's target-audience boxes route to them.
- The page *Use Cases / Information Model → Datasets including descriptions* shows all three logical models with their own structure tree and their own element table.

### 2027.0.0-alpha.5

#### High level (what changed in domain terms?)

- The CapabilityStatement of the metadata interface was completed so that servers can declare their support for microbiological `Observation` and `DiagnosticReport` resources more precisely.
- `DiagnosticReport` is now shown in the CapabilityStatement as its own resource block with the profile `mii-pr-mikrobio-diagnostic-report`.
- The search parameters that must be supported were extended for `Observation` and `DiagnosticReport`, adapted to the profile content used, and reconciled with the SearchParameters of the Laboratory module.
- Local SearchParameters were added for the microbiology-specific search on `Observation.interpretation` and on the R5 extension `Observation.triggeredBy`.

#### Detailed changes for implementers (per artefact URL / canonical)

##### CapabilityStatement

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-cps-mikrobio-metadata` | content updated | the CapabilityStatement declared only `Observation`; the search parameter list was incomplete | additional resource block for `DiagnosticReport` with `mii-pr-mikrobio-diagnostic-report`; extended search parameters for `Observation` and `DiagnosticReport`, aligned with the Laboratory module | Servers must support the declared search for both resource types accordingly | Check the `/metadata` output and conformance tests against the updated SearchParam list |

##### SearchParameter

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `Observation-interpretation` | new | no local declaration in the CPS | local SearchParameter for `Observation.interpretation` (`token`) and inclusion in the CapabilityStatement | Searching by interpretation, e.g. susceptibility or avidity interpretations, can be declared capability-based | no migration needed; existing instances remain unchanged |
| `Observation-triggered-by` | new | `triggeredBy` was profiled but not declared as a search parameter | local SearchParameter for the triggering Observation inside the R5 cross-version extension `Observation.triggeredBy` (`reference`) and inclusion in the CapabilityStatement | Trigger relationships between microbiological Observations can be searched for specifically | no migration needed; existing instances remain unchanged |

##### Supported search parameters

- `Observation`: newly added are `_lastUpdated`, `based-on`, `data-absent-reason`, `device`, `derived-from`, `encounter`, `identifier`, `interpretation`, `method`, `specimen`, `status`, `triggered-by`, `value-concept` and `value-quantity`.
- `DiagnosticReport`: the resource block is new and declares the search parameters `_id`, `_profile`, `_lastUpdated`, `status`, `based-on`, `category`, `code`, `subject`, `encounter`, `date`, `issued`, `performer`, `specimen`, `result` and `conclusion`.
- The selection of standard SearchParameters was deliberately aligned with the CapabilityStatement of the Laboratory module; the microbiology-specific additions are the local SearchParameters `interpretation` and `triggered-by`.

### 2027.0.0-alpha.4

#### High level (what changed in domain terms?)

- No domain changes. For this release, only packages with technical corrections were republished.

#### Detailed changes for implementers (per artefact URL / canonical)

##### General

- `fix:` unification of the version labelling of the 2027 artefacts to `2027.0.0-alpha.4`; version statements in the packages had previously not been consistent throughout.
- Technical corrections in the package release without content changes to profiles, ValueSets, extensions, CapabilityStatement or examples.

### 2027.0.0-alpha.3

#### High level (what changed in domain terms?)

- No domain changes. For this release, only packages with technical corrections were republished.

#### Detailed changes for implementers (per artefact URL / canonical)

##### General

- No content changes to profiles, ValueSets or examples.
- The release serves solely to provide technically corrected packages.

### 2027.0.0-alpha.2

#### High level (what changed in domain terms?)

- Several terminology bindings previously defined as `required` were changed to `extensible`, so that domain-valid local codings remain permissible within the rules.
- For `mii-pr-mikrobio-resistenzmechanismen-determinanten`, the method binding was moved to a dedicated method ValueSet for resistance mechanisms.
- For `mii-pr-mikrobio-diagnostic-report`, the category assignment was changed to `v2-0074#MB` (Microbiology) plus an optional LOINC report type; `MB` is additionally carried as a coding slice (`v2-microbiology`) and the report type is represented via `mibi-sub-category`. A SNOMED category code is no longer required for this.
- The shared `category` rules of the microbiological Observation profiles were adapted so that microbiology is modelled explicitly via its own `mibi-category` slice; because of the current inheritance from the laboratory parent, the laboratory codes remain in the same slice for now.
- The result ValueSet for avidity was extended by `Intermediate`.
- The morphology result ValueSet was extended by additional fungal hypha findings.

#### Detailed changes for implementers (per artefact URL / canonical)

##### Profiles (StructureDefinitions)

Shared adaptation for the microbiological Observation profiles:
The `category` representation was unified. Microbiology is now modelled via its own `mibi-category` slice, including the coding slice `v2-microbiology` (`v2-0074#MB`, `1..1`) and optionally `loinc-microbiology-studies` (`loinc#18725-2`, `0..1`). Because of the current constraints from `ObservationLab`, the inherited laboratory codes (`loinc-observation`, `observation-category`) remain in the same slice for now; a further separation is planned for a follow-up release once the laboratory parent has been adapted accordingly. That future adaptation will be fully compatible; it only improves the presentation of the profile.

Also applying to all microbiological Observation profiles: `dataAbsentReason` is newly bound to `mii-vs-mikrobio-data-absent-reason` (`extensible`). Indeterminate results are moved there and no longer coded via `value[x]`.

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-empfindlichkeit` | content updated | `code` and `valueQuantity.code` were bound `required` | both bindings are `extensible` | Greater flexibility in test code and unit coding | Use ValueSet codes primarily; local codes only where domain-necessary |
| `mii-pr-mikrobio-keimzahl` | content updated | `code`, `valueQuantity.code`, `interpretation` were bound `required` | these bindings are `extensible` | Reduced rejection rate for terminological edge cases | Keep existing mappings, check deviations for conformance |
| `mii-pr-mikrobio-resistenzkategorie-status` | replaced | `mii-pr-mikrobio-mre-klasse` | Category-based status: `code` names the assessed resistance category (MII CodeSystem `mii-cs-mikrobio-resistenzkategorie`), `valueCodeableConcept` is `10828004 Positive` / `260385009 Negative` (`required`), `derivedFrom` is `0..* MS` (SHOULD) | Profile URL change (canonical); the former organism statement in the value is dropped without replacement; one Observation must be created per assessed category | Resolve old instances: the previous value (e.g. `115329001 MRSA`) becomes the category in `code` (`mrsa-status`) with `value = Positive`; the pathogen itself remains in the pathogen identification. Add the underlying investigations in `derivedFrom` |
| `mii-pr-mikrobio-mikroskopie` | content updated | result and method binding were `required` | result and method binding are `extensible` | Higher interoperability with heterogeneous method catalogues | Deliver ValueSet codes with priority; mark local additions clearly |
| `mii-pr-mikrobio-molekulare-pathogenlast` | content updated | unit binding (`valueQuantity.code`) was `required` | unit binding is `extensible` | More room for specialised unit codes | Continue to prefer UCUM standard codes |
| `mii-pr-mikrobio-spezifische-bestimmung` | content updated | result binding was `required` | result binding is `extensible` | Qualitative result coding is validated less restrictively | Continue to use the mapping to the target ValueSet as the primary path |
| `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` | content updated | test code binding was `required` | test code binding is `extensible` | Better coverage of local genotypic test codings | Check and document local test codes against the target ValueSet |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | content updated | method binding to `MII_VS_Mikrobio_Spezifische_Bestimmung_Methode_SNOMED` | method binding to `MII_VS_Mikrobio_Resistenzmechanismen_Methode_SNOMED` | More precise method validation for resistance mechanisms | Move method codes to the new ValueSet |
| `mii-pr-mikrobio-diagnostic-report` | content updated | microbiological category secured via an SCT code in the category coding plus an additional invariant | microbiological category modelled via `mibi-category` (`v2-0074#MB`) with the coding slice `v2-microbiology` (`1..1`) and the optional coding slice `loinc-microbiology-studies` (`loinc#18725-2`, `0..1`); additional optional category slice `mibi-sub-category` (`mii-vs-mikrobio-befundtyp-loinc`) | Category population is more consistent with the parent profile; no additional SCT category coding required; the optional LOINC representation is possible both at coding level and via sub-category | Move producers/mappers to the mandatory `mibi-category` including `v2-microbiology`; populate `loinc-microbiology-studies` and `mibi-sub-category` only where needed |

##### Terminologies (ValueSets)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-resistenzmechanismen-methode-snomed` | new | - | Dedicated method ValueSet for the detection of resistance genes/mutations (molecular procedures) | New terminology reference in the profile `mii-pr-mikrobio-resistenzmechanismen-determinanten` | Map method codes onto this ValueSet |
| `mii-vs-mikrobio-aviditaet-ergebnis` | content updated | only `Low`/`High` | `Intermediate` added | Result validation now allows a three-level interpretation | Where present, map `Intermediate` findings onto the ValueSet |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | content updated | no explicit fungal hypha subtypes | additional SNOMED codes for hypha morphologies added (among others septate/non-septate, branching/non-branching) | Finer morphological result coding possible | Check local mycology codings against the new concepts |

### 2027.0.0-alpha.1

#### Origin and agreement

The changes in this release are based on:

- national agreement between the MII, MIO42/KBV, the RKI and further laboratory stakeholders
- agreement in HL7 Europe on a uniform microbiology representation in the EHDS context

#### High level (what changed in domain terms?)

- Several earlier profiles were replaced by new 2027 profiles (breaking change).
- The microbiology modelling is Observation-oriented throughout; the former `Observation.component` semantics were moved into standalone Observation profiles. This enables full compatibility with the Laboratory module.
- Culture and determination logic was split into general and specific paths.
- Quantitative partial findings (e.g. Ct value, Nugent score, Barlett score, titre, avidity, pathogen load) are modelled as separate profiles.
- Susceptibility is now represented via a combined model of interpretation (with a susceptibility binding) and a norm extension stating the interpretation standard used.
- Observation profiles derive from `ObservationLab` (Laboratory module 2026.0.0), the DiagnosticReport from `DiagnosticReportLab`.
- For Observations, the `triggeredBy` semantics are now supported via the R5 extension `extension-Observation.triggeredBy`, in order to represent diagnostic chains between investigations that build on one another; the kind of triggering is modelled via `triggeredBy.type` (in particular `reflex` for follow-up diagnostics triggered by previous results).
- Terminology bindings were consolidated (LOINC/SNOMED/UCUM), including filter and naming clean-up.
- The IG navigation under `FHIR profiles` reflects the new domain structure: culture, determination, quantitative tests, further properties, diagnostic report.

#### Detailed changes for implementers (per artefact URL / canonical)

##### Profiles (StructureDefinitions)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-allgemeine-kultur` | replaced | `mii-pr-mikrobio-kultur-nachweis` | General culture as its own profile with explicit bindings for test/result/method | References and profile mappings must be moved to the new profile URL (canonical) | Migrate instances from the old profile to the new profile URL; check the result coding |
| `mii-pr-mikrobio-keimzahl` | content updated | unchanged | `value[x]` was restricted to `Quantity`, the ValueSet for semi-quantitative results was bound to `.interpretation`, UCUM bindings were made more precise | Validation may apply more strictly to units and value type | Check examples and interfaces against the updated value constraints |
| `mii-pr-mikrobio-mikroskopie` | content updated | unchanged | components were removed and moved into standalone Observation profiles; `value[x]` and the method binding were moved to morphology-specific ValueSets | The structure of the resources and the terminology check change; content previously carried in components must now be transmitted as separate referenceable Observations | Move existing `Observation.component` representations into standalone Observation resources and check the codings against the new result/method ValueSets |
| `mii-pr-mikrobio-empfindlichkeit` | content updated | unchanged | susceptibility model with susceptibility interpretation + norm extension | Semantic change in interpretation/norm representation | Transport norm information via the extension; observe the interpretation binding |
| `mii-pr-mikrobio-nugent-score` | new | - | Former component information as a standalone Observation | Take the new profile into account in result transmission and references | Where previously represented as a component, move to its own Observation resource |
| `mii-pr-mikrobio-barlett-score` | new | - | Former component information as a standalone Observation | Take the new profile into account in result transmission and references | Where previously represented as a component, move to its own Observation resource |
| `mii-pr-mikrobio-allgemeine-bestimmung` | new | - | Former component information on pathogen identification (e.g. `NameMikroorganismus`) from previously combined report profiles, as a standalone Observation | Add the new profile to profile routing and mapping | For general determination there is no 1:1 predecessor profile; move component-based identification statements onto this profile |
| `mii-pr-mikrobio-spezifische-bestimmung` | replaced/extended | `mii-pr-mikrobio-molekulare-diagnostik` | Specific determination as a broader profile with dedicated test/method/result bindings for targeted detections, including the migration of former component-based detection parts | Profile URL change (canonical) and terminology adaptation needed; existing assumptions that only molecular-diagnostic findings are represented are no longer valid | Migrate old instances and previous component-based targeted-detection mappings onto this profile URL and the current ValueSets |
| `mii-pr-mikrobio-ct-wert` | new | - | Former component information (Ct value) as a standalone quantitative Observation | Add the new profile and new tests/examples to the pipelines | Where previously represented as a component, move to its own Observation resource |
| `mii-pr-mikrobio-virulenzfaktor` | content updated | unchanged | Harmonisation onto consistent detected/not-detected semantics | Result codes must match the updated bindings | Check the SNOMED coding including display/code against the ValueSet |
| `mii-pr-mikrobio-resistenzmechanismen-determinanten` | replaced | `mii-pr-mikrobio-resistenzgene` + `mii-pr-mikrobio-resistenzmutation` | Merged profile for determinants/mechanisms; former component content on gene/mutation statements is now represented via `Observation.code` (pre-coordinated LOINC determinants where available) and `valueCodeableConcept` (detected/not detected) | Two old profiles are functionally consolidated into one new profile; component-based data models must be moved to code/value semantics | Merge the old paths; consolidate references and mapping tables |
| `mii-pr-mikrobio-antigen-antikoerper-quantitativ` | new | - | Former component information (quantitative antigen/antibody result) as a standalone profile | Integrate the new profile into routing, ETL and validation | Where previously represented as a component, move to its own Observation resource; deliver the unit system and method binding explicitly |
| `mii-pr-mikrobio-aviditaet` | new | - | Former component information (avidity) as a standalone profile including result semantics | Integrate the new profile into routing, ETL and validation | Where previously represented as a component, move to its own Observation resource; map avidity values/interpretation onto the new bindings |
| `mii-pr-mikrobio-titer` | new | - | Former component information (quantitative serological result / titre) as a standalone profile (ratio-oriented) | Integrate the new profile into routing, ETL and validation | Where previously represented as a component, move to its own Observation resource |
| `mii-pr-mikrobio-molekulare-pathogenlast` | new | - | Former component information (quantitative molecular load / viral load result) as a standalone profile | Integrate the new profile into routing, ETL and validation | Where previously represented as a component, move to its own Observation resource; adopt the unit/method binding per the new profile |
| `mii-pr-mikrobio-diagnostic-report` | content updated | unchanged | Parent moved to the Laboratory module 2026 DiagnosticReport, with updated result references | Aggregation and `result` references must cover the complete 2026 profile set | Check DiagnosticReport creation and reference resolution against the new profile set |

##### Discontinued legacy profiles (canonical URLs)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-pr-mikrobio-kultur-nachweis` | removed/replaced | active up to the previous version | replaced by the new 2027 profile for general culture | The profile is no longer published in the 2027 model | Move to the new 2027 culture structure |
| `mii-pr-mikrobio-molekulare-diagnostik` | removed/replaced | active up to the previous version | replaced by the new 2027 profile for specific determination | The profile is no longer published in the 2027 model | Move to the new 2027 determination structure |
| `mii-pr-mikrobio-resistenzgene` | removed/replaced | active up to the previous version | merged into the 2027 profile for resistance mechanisms/determinants | The profile is no longer published in the 2027 model | Map former component statements on the gene name (`component[NamedesGens*]`) onto the pre-coordinated `Observation.code` coding in the target profile; detection continues via `valueCodeableConcept` |
| `mii-pr-mikrobio-resistenzmutation` | removed/replaced | active up to the previous version | merged into the 2027 profile for resistance mechanisms/determinants | The profile is no longer published in the 2027 model | Map former component statements on the resistance mutation (`component[MicroorganismResistanceMutation]`) onto the pre-coordinated `Observation.code` coding in the target profile; detection continues via `valueCodeableConcept` |
| `mii-pr-mikrobio-serologie-immunologie` | removed/replaced | active up to the previous version | moved into the 2027 profile Specific determination; the components were moved into their own profiles | The profile is no longer published in the 2027 model | Move the mapping into the 2027 profiles |

##### Terminologies (ValueSets)

###### New/renamed ValueSet URLs (canonicals)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-allgemeine-bestimmung-methode-snomed` | new | - | New method ValueSet for general determination | New terminology reference in the profile bindings | Check source-system codes against the new ValueSet |
| `mii-vs-mikrobio-allgemeine-kultur-ergebnis-snomed` | new | - | New result ValueSet for general culture | Result validation in the culture profiles changes | Map culture result codes onto the new ValueSet |
| `mii-vs-mikrobio-allgemeine-kultur-methode-snomed` | new | - | New method ValueSet for general culture | Method validation in the culture profiles changes | Map method codes onto the new ValueSet |
| `mii-vs-mikrobio-antigen-antikoerper-methode-snomed` | new | - | Method ValueSet for quantitative antigen/antibody findings | New binding in the corresponding profile | Check method codes against the new ValueSet |
| `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` | new | - | UCUM units for quantitative antigen/antibody findings | Unit codes are validated explicitly | Deliver unit codes and the UCUM system consistently |
| `mii-vs-mikrobio-antigen-antikoerper-quantitative-tests-loinc` | new | - | Test ValueSet for quantitative antigen/antibody findings | Test code binding in the profiles | Map test codes onto the new ValueSet |
| `mii-vs-mikrobio-aviditaet-ergebnis-snomed` | new | - | Result ValueSet for avidity | Result validation changed | Map the avidity interpretation onto the new ValueSet |
| `mii-vs-mikrobio-aviditaet-tests-loinc` | new | - | Test ValueSet for avidity | Test code binding changed | Map test codes onto the new ValueSet |
| `mii-vs-mikrobio-ct-wert-loinc` | new | - | Meaningful canonical name for the Ct test ValueSet | New reference in the Ct profile | Do not use the old technical name any more |
| `mii-vs-mikrobio-detected-not-detected-snomed` | new | - | Uniform detected/not-detected semantics | Several profiles use a uniform result ValueSet | Harmonise positive/negative detections onto this ValueSet |
| `mii-vs-mikrobio-molekulare-pathogenlast-methode-snomed` | new | - | Method ValueSet for pathogen load | New method binding | Deliver method codes per the new ValueSet |
| `mii-vs-mikrobio-molekulare-pathogenlast-tests-loinc` | new | - | Test ValueSet for pathogen load | New test binding | Deliver test codes per the new ValueSet |
| `mii-vs-mikrobio-morphologie-ergebnis-snomed` | new | - | Result ValueSet for microscopy/morphology | Result validation changed | Map morphology result codes onto the new ValueSet |
| `mii-vs-mikrobio-morphologie-methode-snomed` | new | - | Method ValueSet for microscopy/morphology | Method validation changed | Map method codes onto the new ValueSet |
| `mii-vs-mikrobio-positiv-negativ-snomed` | new | - | Harmonised positive/negative ValueSet | Qualitative profiles use the new binding | Replace old ValueSet references |
| `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` | new | `mii-vs-mikrobio-resistenzgene-loinc`, `mii-vs-mikrobio-resistenzmutation-loinc` | Merged test ValueSet for determinants | Two former terminology strands are consolidated | Merge the mapping tables |
| `mii-vs-mikrobio-spezifische-bestimmung-methode-snomed` | new | - | Method ValueSet for specific determination | New method binding | Check method codes against the new ValueSet |
| `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` | new | `mii-vs-mikrobio-molekulare-diagnostik-loinc`, `mii-vs-mikrobio-kulturtests-loinc` | Test ValueSet for specific determination (LOINC filters updated) | Test validation and filter logic changed | Align local test lists with the new LOINC filters |
| `mii-vs-mikrobio-spezifische-bestimmung-ergebnis-snomed` | new | - | Result ValueSet for specific determination | New result binding | Map result codes onto the new ValueSet |
| `mii-vs-mikrobio-susceptibility` | renamed | `mii-vs-mikrobio-clsi-hl7` | Vendor/norm-neutrally named susceptibility ValueSet | Reference name and canonical URL have changed | Move the old ValueSet URL consistently to the new URL |
| `mii-vs-mikrobio-titer-methode-snomed` | new | - | Method ValueSet for titre | New method binding | Check method codes against the new ValueSet |
| `mii-vs-mikrobio-titer-tests-loinc` | new | - | Test ValueSet for titre | New test binding | Check test codes against the new ValueSet |

###### ValueSet URLs updated in content (canonicals)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-empfindlichkeit-einheiten-ucum` | content updated | unchanged | UCUM definitions cleaned up (`{}`-free semantics) | Unit codes are checked more strictly | Deliver UCUM codes per the new ValueSet |
| `mii-vs-mikrobio-keimzahl-einheiten-ucum` | content updated | unchanged | UCUM semantics cleaned up (`1` instead of `{}` expressions) | Unit codes / parser behaviour may change | Check the unit mapping and the example values |
| `mii-vs-mikrobio-keimzahl-loinc` | content updated | unchanged | 2027-conformant test selection | Test validation may change | Check colony-count codes against the updated scope |
| `mii-vs-mikrobio-molekulare-diagnostik-einheiten-ucum` | content updated | unchanged | UCUM semantics cleaned up (`{}`-free modelling) | Unit codes are checked more strictly | Check the unit mapping in pathogen-load / molecular findings |
| `mii-vs-mikrobio-virulenz-loinc` | content updated | unchanged | Virulence test scope updated | Test validation may change | Check virulence codes against the updated scope |
| `mii-vs-mikrobio-empfindlichkeit-phenotyp-loinc` | content updated | `CLASS` `LP7755-4`, `PROPERTY` `LP6870-2`, `STATUS` `ACTIVE`, additionally `ORDER_OBS` `Observation` and an `exclude` of `METHOD_TYP` `LP28723-2` (genotypic method) | the `ORDER_OBS` restriction and the `exclude` are dropped; the remaining filters are `CLASS`, `PROPERTY`, `STATUS` | The ValueSet is thereby a superset of `mii-vs-mikrobio-empfaenglichkeit-genotyp-loinc`; `mii-pr-mikrobio-empfindlichkeit` and `mii-pr-mikrobio-voraussichtliche-empfindlichkeit` can no longer be distinguished terminologically by the test code. In addition, codes without `ORDER_OBS` `Observation` are now included | The assignment to the phenotypic or genotypic profile can no longer be derived from the test code and must follow from the profile used |

###### Removed/deprecated ValueSet URLs (canonicals)

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-vs-mikrobio-antigen-assay-einheiten-ucum` | removed/deprecated | active up to the previous version | replaced by profile-specific UCUM ValueSets | Old references invalid | Move to `mii-vs-mikrobio-antigen-antikoerper-quantitativ-einheiten-ucum` |
| `mii-vs-mikrobio-aviditaet-snomedct` | removed/deprecated | active up to the previous version | replaced by separate test/result sets | Old reference invalid | Move to `...-aviditaet-tests-loinc` and `...-aviditaet-ergebnis-snomed` |
| `mii-vs-mikrobio-eucast-snomedct` | removed/deprecated | active up to the previous version | replaced by the susceptibility/norm model | Old reference invalid | Move to `mii-vs-mikrobio-susceptibility` plus the norm extension |
| `mii-vs-mikrobio-kultur-methode-snomedct` | removed/deprecated | active up to the previous version | replaced by the general/specific culture method strands | Old reference invalid | Move to `...-allgemeine-kultur-methode-snomed` or the specific profiles |
| `mii-vs-mikrobio-kulturtests-loinc` | removed/deprecated | active up to the previous version | replaced by more specific test ValueSets | Old reference invalid | Move to `mii-vs-mikrobio-spezifische-bestimmung-tests-loinc` |
| `mii-vs-mikrobio-mikroskopie-tests-loinc` | removed/deprecated | active up to the previous version | microscopy organised via the new morphology logic | Old reference invalid | Switch to the current microscopy bindings |
| `mii-vs-mikrobio-mikroskopiemethoden-snomedct` | removed/deprecated | active up to the previous version | replaced by `mii-vs-mikrobio-morphologie-methode-snomed` | Old reference invalid | Move method codes to the new ValueSet |
| `mii-vs-mikrobio-molekulare-diagnostik-loinc` | removed/deprecated | active up to the previous version | replaced by the specific determination / pathogen load ValueSets | Old reference invalid | Move to `...-spezifische-bestimmung-tests-loinc` or `...-molekulare-pathogenlast-tests-loinc` |
| `mii-vs-mikrobio-morphologie-snomedct` | removed/deprecated | active up to the previous version | split into result/method ValueSets | Old reference invalid | Move to `...-morphologie-ergebnis-snomed` and `...-morphologie-methode-snomed` |
| `mii-vs-mikrobio-positiv-negativ-snomedct` | removed/deprecated | active up to the previous version | replaced by the harmonised canonical name without `-ct` | Old reference invalid | Move to `mii-vs-mikrobio-positiv-negativ-snomed` |
| `mii-vs-mikrobio-qualitative-labor-ergebnisse-snomedct` | removed/deprecated | active up to the previous version | replaced by domain-specific result ValueSets | Old reference invalid | Move to the profile-specific result ValueSets |
| `mii-vs-mikrobio-resistenzgene-loinc` | removed/deprecated | active up to the previous version | merged into the determinants ValueSet | Old reference invalid | Move to `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` |
| `mii-vs-mikrobio-resistenzmutation-loinc` | removed/deprecated | active up to the previous version | merged into the determinants ValueSet | Old reference invalid | Move to `mii-vs-mikrobio-resistenzmechanismen-determinanten-loinc` |
| `mii-vs-mikrobio-serologie-immunologie-loinc` | removed/deprecated | active up to the previous version | replaced by differentiated serology/antigen/titre bindings | Old reference invalid | Move to the new profile-specific test ValueSets |
| `mii-vs-mikrobio-serologischer-test-einheiten-ucum` | removed/deprecated | active up to the previous version | replaced by concrete profile-specific UCUM ValueSets | Old reference invalid | Re-bind units per target profile |

##### Extension / logical model / CapabilityStatement

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-ex-mikrobio-empfindlichkeit-norm` | new | - | Local extension for representing the norm (e.g. system/version/category) in the susceptibility context | The new extension must be supported where a norm is referenced | Add extension mapping to the susceptibility pipelines |
| `extension-Observation.triggeredBy` | newly used | not used in the IG so far | R5 extension for representing triggering previous investigation results in Observations; the kind of triggering is modelled via `triggeredBy.type` (among others `reflex`) | Systems must be able to process trigger relationships and the domain kind of triggering (`type`) | Map existing trigger information including the kind of triggering onto `triggeredBy`/`triggeredBy.type` |
| `mii-lm-mikrobio-logical-model` | content updated | flatter/older structure | Category-oriented restructuring: culture, determination, quantitative tests, further properties, diagnostic report | Mapping documents and implementation guides must be reassigned | Move logical mappings to the new node structure |
| `mii-cps-mikrobio-metadata` | content updated | older supportedProfile set and IG reference | supportedProfile updated to the 2027 profile set and `ImplementationGuide|2027.0.0-alpha.1` | Capability-based clients may check a different profile set | Revalidate profile discovery / conformance tests against the new set |

##### Examples and IG page structure

| Artefact (canonical URL) | Type of change | Before (where relevant) | After | Implementation impact | Migration note |
|-------------|--------------|--------------------------|---------|----------------------------|-------------------|
| `mii-exa-mikrobio-allgemeine-kultur` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-spezifische-kultur` | new | - | Minimal example for culture-based targeted detection in the profile `mii-pr-mikrobio-spezifische-bestimmung` | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-allgemeine-bestimmung` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-spezifische-bestimmung` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-resistenzmechanismen-determinanten` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-antigen-antikoerper-quantitativ` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-aviditaet` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-ct-wert` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-titer` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-nugent-score` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-barlett-score` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-molekulare-pathogenlast` | new | - | Minimal example for the new profile | New reference example for implementers | Add to the test data catalogue |
| `mii-exa-mikrobio-kultur-nachweis` | removed/deprecated | legacy example present | dropped in favour of the new culture examples | Legacy example no longer fits the 2027 model | Deprecated; do not use further |
| `mii-exa-mikrobio-molekulare-diagnostik` | removed/deprecated | legacy example present | dropped in favour of specific determination | Legacy example no longer fits the 2027 model | Deprecated; do not use further |
| `mii-exa-mikrobio-resistenzgene` | removed/deprecated | legacy example present | dropped in favour of the determinants profile | Legacy example no longer fits the 2027 model | Deprecated; do not use further |
| `mii-exa-mikrobio-resistenzmutation` | removed/deprecated | legacy example present | dropped in favour of the determinants profile | Legacy example no longer fits the 2027 model | Deprecated; do not use further |
