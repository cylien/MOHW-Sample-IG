Profile: ObservationPatientAssessmentTWPAS
Parent: Observation
Id: Observation-pat-assessment-twpas
Title: "病人狀態評估-Observation Patient Assessment TWPAS"
Description: "此病人狀態評估-Observation Patient Assessment TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查中評估資訊之病人狀態評估"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys pat-ast-value
* category 1..1
* category = $nhi-supporting-info-type#patientAssessment
* category ^short = "因設計而須必填。"
* code MS
* code from $pat-ast (extensible)
* code ^short = "病人狀態評估項目代碼"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding 1..1
* code.coding.system 1..
* code.coding.code 1..
* subject 1.. MS
* subject only Reference(PatientTWPAS)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "病人狀態評估日期，YYYY-MM-DD，西元年月日。"
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* performer ^short = "評估項目醫事人員身分證號"
* value[x] 1.. MS
* value[x] only string or integer
* value[x] ^short = "病人狀態評估結果"