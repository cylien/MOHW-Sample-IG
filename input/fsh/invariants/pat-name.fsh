Invariant: pat-name
Description: "病人姓名有誤 ，超過40字"
* severity = #error
* expression = "text.length() <= 40"