Instance: MII-CPS-Metadata-Mikrobio
InstanceOf: CapabilityStatement
Usage: #definition
* insert SP_Publisher
* insert Version
* id = "mii-cps-mikrobio-metadata"
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata"
* status = #active
* experimental = false
* date = "2026-04-02"
* implementationGuide = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ImplementationGuide|2026.0.0-alpha.1"
* name = "MII_CPS_Mikrobio_Metadata"
* title = "MII CPS Mikrobio Metadata"
* description = "CapabilityStatement für das MII Mikrobiologie Modul 2026."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server
* rest.resource.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.extension.valueCode = #SHALL
* rest.resource.type = #Observation
* rest.resource.supportedProfile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-kultur"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-barlett-score"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse"
* rest.resource.supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
* rest.resource.interaction[0].code = #read
* rest.resource.interaction[+].code = #search-type
* rest.resource.searchParam[0].name = "_id"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[+].name = "_profile"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
* rest.resource.searchParam[=].type = #uri
* rest.resource.searchParam[+].name = "patient"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[+].name = "subject"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[+].name = "category"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[+].name = "code"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[+].name = "code-value-quantity"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity"
* rest.resource.searchParam[=].type = #composite
* rest.resource.searchParam[+].name = "code-value-concept"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept"
* rest.resource.searchParam[=].type = #composite
* rest.resource.searchParam[+].name = "date"
* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource.searchParam[=].type = #date
