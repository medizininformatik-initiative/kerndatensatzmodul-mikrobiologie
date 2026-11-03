# LOINC Ontology ValueSets (Proposal) - MII Implementation Guide Microbiology v2027.0.0-ballot2

* [**Table of Contents**](toc.md)
* [**Value Sets**](value-sets.md)
* **LOINC Ontology ValueSets (Proposal)**

## LOINC Ontology ValueSets (Proposal)

This section is a **proposal**, not normative content of the module. It accompanies ballot comments on 2027.0.0-ballot2 and shows, with working artifacts, how the LOINC ValueSets of the microbiology request profiles can be **computed** from the LOINC Ontology instead of being maintained as LOINC property filters and hand-curated lists. Everything in this section is generated from a published rule set; nothing was edited by hand after generation.

### The problem it addresses

The 2027 module post-coordinates: one generic request code per profile, with organism, specimen and method carried in their own elements. Its LOINC ValueSets are therefore either short enumerations of the generic codes or LOINC property filters (`CLASS`, `PROPERTY`, `METHOD_TYP`, `SCALE_TYP`). Property filters select on LOINC's flat part values. They cannot say "any organism under **Enterobacterales**", "any antibody to a virus" or "a culture technique of any kind", and they cannot tell an organism named as the **subject** of an identification from one named as the **component** of a count.

The LOINC Ontology makes the rule itself the artifact. Each LOINC microbiology term is represented there as a SNOMED CT observable with explicit attributes (what is detected, in which organism or specimen, which property, on which scale, by which technique, against which antimicrobial), and those attribute values are SNOMED CT concepts with hierarchies. A ValueSet is then an expression over those attributes, and its LOINC enumeration is a derived product that can be regenerated for every release.

### What this section offers

| | | |
| :--- | :--- | :--- |
| [How the ValueSets are built](loinc-ontology-method.md) | The LOINC Ontology attribute model for microbiology, the rule anatomy, the three parts of every ValueSet, expansion and versioning | implementers, terminologists |
| [ValueSets per request](loinc-ontology-requests.md) | 29 rules in 11 request families, 31 ValueSets, 13 derived Observation profiles, and how far the module's own enumerated codes are covered | implementers mapping a local catalogue, validators |
| [Release delta 2026-03-21 → 2026-10-21](loinc-ontology-release-delta.md) | What the latest LOINC Ontology release added to or removed from every rule, with the codes | terminologists, module editors |

One review page per request family:

* [General culture](loinc-ontology-request-allgemeine-kultur.md) — 3 rules
* [General determination](loinc-ontology-request-allgemeine-bestimmung.md) — 3 rules
* [Specific determination](loinc-ontology-request-spezifische-bestimmung.md) — 5 rules
* [Microscopy](loinc-ontology-request-mikroskopie.md) — 3 rules
* [Colony count](loinc-ontology-request-keimzahl.md) — 2 rules
* [Susceptibility](loinc-ontology-request-empfindlichkeit.md) — 3 rules
* [Ct value](loinc-ontology-request-ct-wert.md) — 2 rules
* [Molecular pathogen load](loinc-ontology-request-molekulare-pathogenlast.md) — 2 rules
* [Quantitative antigen and antibody tests](loinc-ontology-request-antigen-antikoerper-quantitativ.md) — 2 rules
* [Titre](loinc-ontology-request-titer.md) — 2 rules
* [Resistant organisms and resistance mechanisms](loinc-ontology-request-resistenzmechanismen.md) — 2 rules

### At a glance

* Release used: **LOINC Ontology 2026-10-21** (`http://snomed.info/sct/11010000107/version/20261021`), built on LOINC 2.83; the module's own LOINC pin is 2.82, so several hundred of the enumerated codes are newer than the module's pin.
* Every ValueSet carries the LOINC enumeration, the LOINC Ontology observables that have no LOINC code yet, and the rule itself as an intensional SNOMED CT include.
* The derived profiles only tighten `Observation.code` of the module's own profiles to the computed set; everything else is inherited.
* All artifacts are `draft` and `experimental`. Their canonical URLs follow the module pattern and would be stable if the module adopted them.
* Generator, rule set and release-to-release reports: [loincsnomed-lab-concepts](https://github.com/medizininformatik-initiative/loincsnomed-lab-concepts) (directory `config/micro`).

### What a reviewer is asked to judge

1. Is a computed, rule-based definition the right way for the module to state which LOINC codes belong to a request, next to or instead of the LOINC property filters?
1. The module prefers method-neutral generic codes (41852-5, 105059-0, the colony-count codes). Several of them are not in the LOINC Ontology at all, and the ontology does not assert a technique on many codes that LOINC does name a method for. Which side should move: the module's preference, the ontology, or both?
1. The resistance determinants of the module (resistance genes, carbapenemases) have no grouper in the LOINC Ontology; only the resistant**organism**is expressible. Is that acceptable for the Resistenzmechanismen profile, or is a change request to the LOINC Ontology the right next step?
1. Which of the rules on the following pages should the module decide differently? Each choice is visible as a rule and can be changed by editing that rule.

