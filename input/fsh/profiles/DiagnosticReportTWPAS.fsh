Profile: DiagnosticReportTWPAS
Parent: DiagnosticReport
Id: DiagnosticReport-twpas
Title: "檢查報告-DiagnosticReport TWPAS"
Description: "此檢查報告-DiagnosticReport TWPAS Profile說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport) Profile以呈現癌藥事前審查中疾病資訊之檢查報告"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* category ..1
* category.coding 1..1
* code from $report-type (extensible)
* code obeys speType
* code ^short = "報告類型"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding 1..1
* code.coding.system 1..
* code.coding.system = "http://loinc.org"
* code.coding.code 1..
* code.text ^short = "檢體種類"
* subject 1..
* subject only Reference(PatientTWPAS)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "報告日期，YYYY-MM-DD"
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* performer ^short = "檢查報告醫師"
* conclusion 1.. MS
* conclusion obeys pas-2
* conclusion ^short = "報告結果-文數字，請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* presentedForm 1.. MS
* presentedForm obeys UploadContent
* presentedForm ^short = "報告結果-MIMEType"
* presentedForm.contentType 1.. MS
* presentedForm.url 1.. MS
* presentedForm.url ^short = "檢查報告（請填寫完整檔案路徑）"
* presentedForm.url ^example.label = "General"
* presentedForm.url ^example.valueUrl = "file://PathologyReport01.pdf"
* presentedForm.title MS
* presentedForm.title ^short = "檢查報告名稱"