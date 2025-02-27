Profile: MedicationRequestTreatTWPAS
Parent: TWCoreMedicationRequest
Id: MedicationRequest-treat-twpas
Title: "用藥品項-MedicationRequest Treat TWPAS"
Description: "此用藥品項-MedicationRequest Treat TWPAS Profile說明本IG如何進一步定義臺灣核心-藥品請求(TW Core MedicationRequest) Profile以呈現癌藥事前審查中治療資訊之用藥品項"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* status ^short = "藥物使用狀態"
* statusReason ^short = "藥物處方終止原因"
* intent = #order
* category ..1
* category from $nhi-drug-category (required)
* category ^short = "自費註記"
* medication[x] only CodeableConceptTW
* medication[x] ^short = "藥品代碼"
* medicationReference ..0
* medicationReference only Reference(TWCoreMedication)
* medicationCodeableConcept only CodeableConceptTW
* medicationCodeableConcept.coding 1..1
* medicationCodeableConcept.coding[rxnorm-medication-us-core] ..0
* medicationCodeableConcept.coding[atc-medication-code] ..0
* medicationCodeableConcept.coding[snomedct-medication-codes] ..0
* subject only Reference(PatientTWPAS)
* dosageInstruction 1..
* dosageInstruction.timing 1..
* dosageInstruction.timing.repeat 1.. MS
* dosageInstruction.timing.repeat.bounds[x] 1.. MS
* dosageInstruction.timing.repeat.bounds[x] only Period
* dosageInstruction.timing.repeat.bounds[x].start 1.. MS
* dosageInstruction.timing.repeat.bounds[x].start ^short = "藥物處方起始日期，YYYY-MM-DD。"
* dosageInstruction.timing.repeat.bounds[x].end 1.. MS
* dosageInstruction.timing.repeat.bounds[x].end ^short = "藥物處方終止日期，YYYY-MM-DD。"
* dosageInstruction.timing.code.text 1..
* dosageInstruction.timing.code.text ^short = "藥品使用頻率及服用時間。"
* dosageInstruction.route 1..
* dosageInstruction.route from $medication-path-sct-tw (required)
* dosageInstruction.route ^short = "給藥途徑／作用部位。"
* dosageInstruction.route.coding 1..1
* dosageInstruction.route.coding from $medication-path-sct-tw (required)
* dosageInstruction.route.coding ^short = "給藥途徑／作用部位。"
* dosageInstruction.doseAndRate 1..1 MS
* dosageInstruction.doseAndRate.dose[x] 1.. MS
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity
* dosageInstruction.doseAndRate.dose[x].value 1.. MS
* dosageInstruction.doseAndRate.dose[x].value ^short = "藥物每次處方劑量，數字，每次使用之顆數、支數等，依產品規格。"
* dosageInstruction.doseAndRate.dose[x].code 1.. MS
* dosageInstruction.doseAndRate.dose[x].code from $ucum-common (required)
* dosageInstruction.doseAndRate.dose[x].code ^short = "藥物每次處方劑量單位"
* dosageInstruction.doseAndRate.dose[x].code ^binding.description = "用藥單位的代碼範圍請參考[Common UCUM units](https://hl7.org/fhir/R4/valueset-ucum-common.html)。"