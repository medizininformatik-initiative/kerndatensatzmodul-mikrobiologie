Invariant: mii-lab-1
Description: "Datetime must be at least to day"
* severity = #error
* expression = "($this as dateTime).hasValue() implies ($this as dateTime).toString().length() >= 8"