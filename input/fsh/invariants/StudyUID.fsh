Invariant: StudyUID
Description: "以`urn:oid:`開頭，後接一串由數字`0`-`9`及`.`組成的字串。第一個數字須為個位數，每個數字不得為`0`開頭（除非為單一的`0`），整體(不含`urn:oid:`)長度不得超過64 bytes。"
* severity = #error
* expression = "value.matches('^urn:oid:(0|[1-9])(.(0|[1-9][0-9]*)){0,63}$')"