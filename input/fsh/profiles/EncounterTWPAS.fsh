Profile: EncounterTWPAS
Parent: TWCoreEncounter
Id: Encounter-twpas
Title: "就醫科別-Encounter TWPAS"
Description: "此就醫科別-Encounter TWPAS Profile說明本IG如何進一步定義臺灣核心-就醫事件(TW Core Encounter) Profile以呈現癌藥事前審查中院所資訊之就醫科別"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* status = #planned
* status ^short = "就醫現況。【因FHIR設計而需必填】"
* class = $v3-ActCode#AMB
* class ^short = "就醫分類。【因FHIR設計而需必填】"
* serviceType 1..
* serviceType from TWMedicalDepartmentSCT (preferred)
* serviceType ^short = "就醫科別，完整代碼對應表請參照就醫科別對應表。"
* serviceType ^binding.description = "完整代碼對應表請參照[就醫科別對應表](https://build.fhir.org/ig/cctwFHIRterm/MOHW_TWCoreIG_Build/ValueSet-medical-department-sct-tw.html#%E5%B0%B1%E9%86%AB%E7%A7%91%E5%88%A5%E5%B0%8D%E6%87%89%E8%A1%A8)。"
* serviceType.coding 1..1
* serviceType.coding ^slicing.discriminator.type = #pattern
* serviceType.coding ^slicing.discriminator.path = "system"
* serviceType.coding ^slicing.rules = #closed
* serviceType.coding.code 1..
* serviceType.coding[TWMedicalDepartmentSCT] ^short = "對應至SNOMED CT之就醫科別"
* serviceType.coding[TWMedicalDepartmentSCT].code 1..
* serviceType.coding[TWMedicalConsultationDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署就醫科別"
* serviceType.coding[TWMedicalConsultationDepartment].code 1..
* serviceType.coding[TWMedicalTreatmentDepartment] ^short = "無法對應至SNOMED CT之臺灣健保署診療科別"
* serviceType.coding[TWMedicalTreatmentDepartment].code 1..
* subject only Reference(PatientTWPAS)