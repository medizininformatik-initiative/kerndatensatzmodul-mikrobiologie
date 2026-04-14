---
topic: FQL-Capability-Search
---
<fql>
from
    CapabilityStatement
where
    url = %capability
    for rest.resource.where(supportedProfile.startsWith(%canonical)).searchParam
select
{
    Parameter: name,
		Typ: type,
    Hinweise: documentation,
    Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
}
</fql>
