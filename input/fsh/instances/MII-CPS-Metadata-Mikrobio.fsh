Instance: MII-CPS-Metadata-Mikrobio
InstanceOf: CapabilityStatement
Usage: #definition
* insert SP_Publisher
* insert Version
* id = "mii-cps-mikrobio-metadata"
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CapabilityStatement/metadata"
* status = #active
* experimental = false
* date = "2023-06-12"
* implementationGuide = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/ImplementationGuide|1.0.0"
* name = "MII_CPS_Mikrobio_Metadata"
* title = "MII CPS Mikrobio Metadata"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss um das Modul Mikrobio der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * resource
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Observation
    * supportedProfile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-kultur-nachweis"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-serologie-immunologie"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mre-klasse"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzgene"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmutation"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"
    * supportedProfile[+] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"
    * interaction[0]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #read
    * interaction[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * code = #search-type
    * searchParam[0]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "_profile"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
      * type = #uri
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "patient"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
      * type = #reference
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
      * type = #reference
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "category"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
      * type = #token
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "code"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
      * type = #token
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "code-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity"
      * type = #composite
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "code-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept"
      * type = #composite
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "date"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
      * type = #date
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "component-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept"
      * type = #composite
    * searchParam[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
        * valueCode = #SHALL
      * name = "component-code-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity"
      * type = #composite