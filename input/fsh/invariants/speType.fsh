Invariant: speType
Description: "當報告類型(code.coding.code)為`47526-9`時，檢體種類(code.text)必填"
* severity = #error
* expression = "(coding.exists(code='47526-9')) implies (text.exists())"