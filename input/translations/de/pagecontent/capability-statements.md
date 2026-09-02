<!-- markdownlint-disable MD041 -->
### CapabilityStatements

Die CapabilityStatements des Moduls **Mikrobiologie** beschreiben die erwarteten Server-/Client-Fähigkeiten (unterstützte Ressourcen und Interaktionen).

<!-- MIGRATED verbatim from Simplifier page: MIIIGModulMikrobiologie/Technische-Implementierung/CapabilityStatement.page.md  -->
Um eine dezentrale Datenauswertung mittel des Deutsche Forschungsdatenportal für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/http.html#capabilities) untersützt werden, sodass durch durch den FHIR-Server unter ```[BASE_URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet weleche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata```

[Link Simplifier Profil Übersicht](CapabilityStatement-mii-cps-mikrobio-metadata.html)

{% lang-fragment CapabilityStatement-mii-cps-mikrobio-metadata-html.xhtml %}
