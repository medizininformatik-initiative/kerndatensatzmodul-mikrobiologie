Colony count describes the determination of viable microorganisms in a specimen: quantitatively as colony-forming units per volume, per mass or per specimen, or semi-quantitatively (+ to ++++), for example from a streaked swab.

### Count or semi-quantitative value

A count is given with a quantitative code such as `49223-1` as a `Quantity` in
`value[x]`, its assessment in `interpretation`. Where nothing was counted (+ to
++++), the semi-quantitative value is given with the ordinal code `565-2` in
`value[x]`; the quantitative codes require a number.

### Link to the organism

The identification of the organism carries the colony count through
`hasMember`; where several organisms grew from one specimen this is required.

### Examples

Example (minimal):

[mii-exa-mikrobio-keimzahl](Observation-mii-exa-mikrobio-keimzahl.html)

Semi-quantitative, without a count:

[mii-exa-mikrobio-keimzahl-semiquantitativ](Observation-mii-exa-mikrobio-keimzahl-semiquantitativ.html)
