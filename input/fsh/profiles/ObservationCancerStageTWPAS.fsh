Profile: ObservationCancerStageTWPAS
Parent: Observation
Id: Observation-cancer-stage-twpas
Title: "癌症分期量表-Observation Cancer Stage TWPAS"
Description: "此癌症分期量表-Observation Cancer Stage TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查中疾病資訊之癌症分期量表相關資料"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* category 1..1
* category = $nhi-supporting-info-type#cancerStage
* category ^short = "因設計而須必填。"
* code MS
* code from $cancer-stage (extensible)
* code ^short = "癌症分期量表項目"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* subject 1.. MS
* subject only Reference(PatientTWPAS)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* effectiveDateTime only dateTime
* effectiveDateTime ^sliceName = "effectiveDateTime"
* effectiveDateTime ^short = "癌症分期量表評估日期，YYYY-MM-DD，西元年月日。"
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* performer ^short = "簽發癌症分期報告醫師"
* value[x] 1.. MS
* value[x] only CodeableConcept or string or integer
* valueCodeableConcept 0..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $cancer-stage-score (required)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "癌症分期分數或結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.code 1..
* valueString 0..1 MS
* valueString only string
* valueString ^sliceName = "valueString"
* valueInteger 0..1 MS
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"