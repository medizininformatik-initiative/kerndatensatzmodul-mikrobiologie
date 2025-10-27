Invariant: dia-ic-highmed-1
Description: "Microbiology LOINC Spezialisierungen dürfen nur ausgewählt werden, falls der Report als Microbiology studies kodiert wurde"
* severity = #error
* expression = "%resource.category.where(coding.where(code = '18725-2' and system = 'http://loinc.org').exists()).exists()"