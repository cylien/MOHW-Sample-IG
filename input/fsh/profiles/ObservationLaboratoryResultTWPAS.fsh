Profile: ObservationLaboratoryResultTWPAS
Parent: Observation
Id: Observation-laboratory-result-twpas
Title: "檢驗檢查-Observation Laboratory Result TWPAS"
Description: "此檢驗檢查-Observation Laboratory Result TWPAS Profile說明本IG如何進一步定義臺灣核心-檢驗檢查(TW Core Observation Laboratory Result) Profile以呈現癌藥事前審查中評估資訊之檢驗(查)相關資料"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys lab-result
* category 1..1
* category = $nhi-supporting-info-type#examinationReport
* category ^short = "因FHIR設計而需必填"
* code MS
* code from LOINCCodes (required)
* code ^short = "檢驗(查)名稱或套組代碼"
* subject 1.. MS
* subject only Reference(PatientTWPAS)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "檢驗(查)報告日期"
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* performer ^short = "簽發檢驗(查)報告醫事人員身分證號"
* value[x] MS
* value[x] ^short = "檢驗(查)結果。若有多筆結果值，請以valueString並使用半形「;」符號分隔呈現。"
* interpretation ..1 MS
* interpretation ^short = "檢驗(查)結果判讀"
* referenceRange ..1 MS
* referenceRange.low MS
* referenceRange.low ^short = "檢驗(查)結果之參考範圍下限"
* referenceRange.high MS
* referenceRange.high ^short = "檢驗(查)結果之參考範圍上限"
* referenceRange.type MS
* referenceRange.type ^short = "檢驗(查)結果之參考範圍類型"
* referenceRange.text MS
* referenceRange.text ^short = "檢驗(查)結果之參考範圍說明"
* derivedFrom only Reference(DocumentReferenceTWPAS)
* derivedFrom MS
* derivedFrom ^short = "檢驗(查)附件"
* component MS
* component ^short = "套組中的檢驗"
* component.code MS
* component.code from LOINCCodes (required)
* component.code ^short = "檢驗(查)名稱"
* component.value[x] 1.. MS
* component.value[x] ^short = "檢驗(查)結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component.interpretation ..1 MS
* component.interpretation ^short = "檢驗(查)結果判讀。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component.referenceRange ..1 MS
* component.referenceRange.low MS
* component.referenceRange.low ^short = "檢驗(查)結果之參考範圍下限"
* component.referenceRange.high MS
* component.referenceRange.high ^short = "檢驗(查)結果之參考範圍上限"
* component.referenceRange.type MS
* component.referenceRange.type ^short = "檢驗(查)結果之參考範圍類型"
* component.referenceRange.text MS
* component.referenceRange.text ^short = "檢驗(查)結果之參考範圍說明"