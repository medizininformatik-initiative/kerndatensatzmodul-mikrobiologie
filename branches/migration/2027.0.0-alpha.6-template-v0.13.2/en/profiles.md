# Profiles - MII Implementation Guide Microbiology v2027.0.0-alpha.6

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

This page lists the FHIR profiles of the **Microbiology** module. As a starting point the template ships one minimal example profile, the profiles listed below — replace it with your module's profiles (naming convention `MII_PR_<Module>_<Name>`, see the [`docs/recipes/add-a-profile.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-mikrobiologie/blob/main/docs/recipes/add-a-profile.md) in this repository, and the MII naming conventions). The module's extensions are listed on the [Extensions](extensions.md) page.

The 2027 modelling uses standalone Observation profiles instead of `component` representations. The profiles are grouped into four families; the modelling notes are on [FHIR Profiles - Modelling Notes](fhir-profile.md), the delimitation between them on [Profile Selection and Delimitation](profilauswahl-und-abgrenzung.md).

### Culture

Culture-related observations (general, microscopy including Barlett/Nugent score, colony count, susceptibility).

### Determination

Determination observations (general/specific determination, Ct value).

### Quantitative tests

Quantitative tests (antigen/antibody, titre, molecular pathogen load).

### Further properties

Further properties as standalone Observations (virulence, resistance mechanism, MRGN, predicted susceptibility, resistance category status, avidity).

