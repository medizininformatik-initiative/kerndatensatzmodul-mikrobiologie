Invariant: mii-lab-2
Description: "Falls kein Laborwert verfügbar ist, muss eine dataAbsentReason angegeben werden"
* severity = #error
* expression = "value.exists().not() implies dataAbsentReason.exists()"