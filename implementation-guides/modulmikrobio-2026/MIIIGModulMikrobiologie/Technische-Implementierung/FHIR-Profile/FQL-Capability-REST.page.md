---
topic: FQL-Capability-REST
---
<fql>
from
    CapabilityStatement
where
    url = %capability
    for rest.resource.where(supportedProfile.startsWith(%canonical)).interaction
select
{
     Interaktion: code,
     Hinweise: documentation,
     Verbindlichkeit: extension('http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation').value
}
</fql>