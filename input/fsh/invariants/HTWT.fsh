Invariant: HTWT
Description: "整數至多3位數及小數至多2位數"
* severity = #error
* expression = "value.toString().matches('^[0-9]{1,3}(.[0-9]{1,2})?$')"