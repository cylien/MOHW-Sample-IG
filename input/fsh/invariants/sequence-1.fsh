Invariant: sequence-1
Description: "diagnosis.sequence一定會有一個「1」，且只能出現一次。"
* severity = #error
* expression = "diagnosis.where(sequence = 1).count() = 1"