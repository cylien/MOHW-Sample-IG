Profile: MedicationRequestApplyTWPAS
Parent: TWCoreMedicationRequest
Id: MedicationRequest-apply-twpas
Title: "事前審查品項-MedicationRequest Apply TWPAS"
Description: "此事前審查品項-MedicationRequest Apply TWPAS Profile說明本IG如何進一步定義臺灣核心-藥品請求(TW Core MedicationRequest) Profile以呈現癌藥事前審查中申請項目之事前審查品項"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* status = #on-hold
* intent = #plan
* medication[x] only CodeableConceptTW
* medication[x] ^short = "事前審查品項代碼，事前審查醫令代碼。"
* medication[x] ^condition[0] = "applyReason-1"
* medication[x] ^condition[+] = "applyReason-2"
* medication[x] ^condition[+] = "applyReason-3"
* medicationReference ..0
* medicationReference only Reference(TWCoreMedication)
* medicationCodeableConcept only CodeableConceptTW
* medicationCodeableConcept.coding[fda-medication-tw] ..0
* medicationCodeableConcept.coding[nhi-medication-tw] 1..
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
* dosageInstruction.timing.repeat.bounds[x].start ^short = "事前審查藥物預定處方起始日期，YYYY-MM-DD，西元年月日。"
* dosageInstruction.timing.repeat.bounds[x].end 1.. MS
* dosageInstruction.timing.repeat.bounds[x].end ^short = "事前審查藥物預定處方終止日期，YYYY-MM-DD，西元年月日。"
* dosageInstruction.timing.repeat.count 1.. MS
* dosageInstruction.timing.repeat.count ^short = "事前審查藥品處方頻次(cycles)。"
* dosageInstruction.timing.code 1..
* dosageInstruction.timing.code from $medication-frequency-hl7-nhi (required)
* dosageInstruction.timing.code ^short = "事前審查藥品使用頻率及服用時間。"
* dosageInstruction.timing.code.coding 1..
* dosageInstruction.timing.code.coding from $medication-frequency-hl7-nhi (required)
* dosageInstruction.timing.code.coding ^short = "事前審查藥品使用頻率及服用時間。"
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
* dosageInstruction.doseAndRate.dose[x].value ^short = "事前審查藥品每次處方劑量，數字。"
* dosageInstruction.doseAndRate.dose[x].code 1.. MS
* dosageInstruction.doseAndRate.dose[x].code from $ucum-common (required)
* dosageInstruction.doseAndRate.dose[x].code ^short = "事前審查藥品每次處方劑量單位，每次使用之顆數、mL數、支數等。"
* dosageInstruction.doseAndRate.dose[x].code ^binding.description = "用藥單位的代碼範圍請參考[Common UCUM units](https://hl7.org/fhir/R4/valueset-ucum-common.html)。"