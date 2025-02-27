Invariant: diagnosis
Description: "diagnosis.sequence=1時才需填寫診斷日期、簡要病摘(申請原因)"
* severity = #error
* expression = "sequence=1 implies (extension.where(url = 'http://hl7.org/fhir/us/davinci-pas/StructureDefinition/extension-diagnosisRecordedDate').value.ofType(date).exists() and type.text.exists() )"