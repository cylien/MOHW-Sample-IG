Invariant: ngs-org
Description: "可填11碼或12碼，或4個文字擇一(CAP、TAF、TFDA、TSP)"
* severity = #error
* expression = "value.toString().matches('^(?!CAP$|TAF$|TFDA$|TSP$)[A-Za-z0-9]{11,12}$|^(CAP|TAF|TFDA|TSP)$')"