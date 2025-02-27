Profile: ProcedureTWPAS
Parent: Procedure
Id: Procedure-twpas
Title: "放射治療-Procedure TWPAS"
Description: "此放射治療-Procedure TWPAS Profile說明本IG如何進一步定義臺灣核心-處置或手術(TW Core Procedure) Profile以呈現癌藥事前審查中治療資訊之放射治療"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* status ^short = "放射治療狀態"
* code from $icd-10-pcs-2023-radiotherapy (preferred)
* code ^short = "放射治療項目，伽傌射線、高能量X光、質子治療、碘-123、鎝-99m、碘-131、銦-111等。ICD-PCS。"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    ICD10PCS2023Radiotherapy 0..1 MS and
    ICD10PCS2014Radiotherapy 0..1 MS
* code.coding[ICD10PCS2023Radiotherapy] from $icd-10-pcs-2023-radiotherapy (extensible)
* code.coding[ICD10PCS2023Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding[ICD10PCS2023Radiotherapy].system 1.. MS
* code.coding[ICD10PCS2023Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* code.coding[ICD10PCS2023Radiotherapy].code 1.. MS
* code.coding[ICD10PCS2014Radiotherapy] from $icd-10-pcs-2014-radiotherapy (extensible)
* code.coding[ICD10PCS2014Radiotherapy] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding[ICD10PCS2014Radiotherapy].system 1.. MS
* code.coding[ICD10PCS2014Radiotherapy].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* code.coding[ICD10PCS2014Radiotherapy].code 1.. MS
* subject only Reference(PatientTWPAS)
* performed[x] 1.. MS
* performed[x] only dateTime
* performed[x] ^short = "放射治療日期，YYYY-MM-DD。"
* usedReference 1..1 MS
* usedReference only Reference(SubstanceTWPAS)
* usedReference ^short = "放射治療總劑量，整個放射治療療程之劑量(cGy)。"