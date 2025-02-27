Invariant: lab-result
Description: "至少填寫檢驗(查)結果(value[x])或套組中的檢驗(查)結果(component.value[x])"
* severity = #error
* expression = "value.exists() or component.value.exists()"