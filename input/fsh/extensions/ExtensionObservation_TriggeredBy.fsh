//TODO: this was added as a workaround as Simplifier does not yet support the xver packages, which caused problems in Snapshot generation. Once Simplifier supports the xver packages, this extension should be removed. And the dependency added again.

Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Extension: ExtensionObservation_TriggeredBy
Id: ext-R5-Observation.triggeredBy
Title: "R5: Triggering observation(s) (new)"
Description: "R5: `Observation.triggeredBy` (new:BackboneElement)"
Context: Observation
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "FHIR Infrastructure"
* ^contact.name = "FHIR Infrastructure"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^jurisdiction = $m49.htm#001 "World"
* ^purpose = "This extension is part of the cross-version definitions generated to enable use of the\r\nelement `Observation.triggeredBy` as defined in FHIR R5\r\nin FHIR R4.\r\n\r\nThe source element is defined as:\r\n`Observation.triggeredBy` 0..* `BackboneElement`\r\n\r\nAcross FHIR versions, the element set has been mapped as:\r\n*  R5: `Observation.triggeredBy` 0..* `BackboneElement`\r\n\r\nFollowing are the generation technical comments:\r\nElement `Observation.triggeredBy` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
* . 0..*
  * ^short = "R5: Triggering observation(s) (new)"
  * ^definition = "R5: `Observation.triggeredBy` (new:BackboneElement)"
  * ^comment = "Element `Observation.triggeredBy` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * ^isModifier = false
* extension ..*
* extension contains
    observation 1..1 and
    type 1..1 and
    reason 0..1
* extension[observation] ^short = "R5: Triggering observation (new)"
  * ^definition = "R5: `Observation.triggeredBy.observation` (new:Reference(Observation))"
  * ^comment = "Element `Observation.triggeredBy.observation` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.observation` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.observation` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * ^requirements = "Element `Observation.triggeredBy.observation` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.observation` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.observation` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * url 1..1
  * value[x] 1..1
  * value[x] only Reference(Observation)
    * ^short = "Triggering observation"
    * ^definition = "Reference to the triggering observation."
* extension[type] ^short = "R5: reflex | repeat | re-run (new)"
  * ^definition = "R5: `Observation.triggeredBy.type` (new:code)"
  * ^comment = "Element `Observation.triggeredBy.type` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.type` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.type` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * ^requirements = "Element `Observation.triggeredBy.type` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.type` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.type` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * url 1..1
  * value[x] 1..1
  * value[x] only code
  * value[x] from http://hl7.org/fhir/uv/xver/ValueSet/R5-observation-triggeredbytype-for-R4|0.1.0 (required)
    * ^short = "reflex | repeat | re-run"
    * ^definition = "The type of trigger.\nReflex | Repeat | Re-run."
    * ^binding.description = "The type of TriggeredBy Observation."
* extension[reason] ^short = "R5: Reason that the observation was triggered (new)"
  * ^definition = "R5: `Observation.triggeredBy.reason` (new:string)"
  * ^comment = "Element `Observation.triggeredBy.reason` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.reason` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.reason` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * ^requirements = "Element `Observation.triggeredBy.reason` is part of an existing definition because parent element `Observation.triggeredBy` requires a cross-version extension.\nElement `Observation.triggeredBy.reason` has a context of Observation based on following the parent source element upwards and mapping to `Observation`.\nElement `Observation.triggeredBy.reason` has no mapping targets in FHIR R4. Typically, this is because the element has been added (is a new element)."
  * url 1..1
  * value[x] 0..1
  * value[x] only string
    * ^short = "Reason that the observation was triggered"
    * ^definition = "Provides the reason why this observation was performed as a result of the observation(s) referenced."
* url 1..1
* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy" (exactly)