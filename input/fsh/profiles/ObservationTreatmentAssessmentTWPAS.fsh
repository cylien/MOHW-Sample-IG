Profile: ObservationTreatmentAssessmentTWPAS
Parent: Observation
Id: Observation-tx-assessment-twpas
Title: "治療後疾病狀態評估-Observation Treatment Assessment TWPAS"
Description: "此治療後疾病狀態評估-Observation Treatment Assessment TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查中結果資訊之治療後疾病狀態評估"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys nhi-tx-ast-value
* code MS
* code from $nhi-tx-ast (required)
* code ^short = "治療後疾病狀態評估項目"
* code.coding 1..1
* code.coding.code 1..
* subject 1.. MS
* subject only Reference(PatientTWPAS)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "治療後疾病狀態評估日期，YYYY-MM-DD，西元年月日。"
* value[x] 1.. MS
* value[x] only string
* value[x] ^short = "治療後疾病狀態評估結果"