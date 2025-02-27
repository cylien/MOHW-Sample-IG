Profile: DiagnosticReportImageTWPAS
Parent: DiagnosticReport
Id: DiagnosticReport-image-twpas
Title: "影像報告-DiagnosticReport Image TWPAS"
Description: "此影像報告-DiagnosticReport Image TWPAS Profile說明本IG如何進一步定義臺灣核心-診斷報告(TW Core DiagnosticReport) Profile以呈現癌藥事前審查之影像報告"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys image-report
* category ..1
* category.coding 1..1
* code from $icd-10-pcs-2023-image (preferred)
* code ^short = "影像報告，ICD10-PCS"
* code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding 1..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains
    TW2023ICD10PCS 0..1 MS and
    TW2014ICD10PCS 0..1 MS
* code.coding[TW2023ICD10PCS] from $icd-10-pcs-2023-image (extensible)
* code.coding[TW2023ICD10PCS] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding[TW2023ICD10PCS].system 1.. MS
* code.coding[TW2023ICD10PCS].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* code.coding[TW2023ICD10PCS].code 1.. MS
* code.coding[TW2014ICD10PCS] from $icd-10-pcs-2014-image (extensible)
* code.coding[TW2014ICD10PCS] ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* code.coding[TW2014ICD10PCS].system 1.. MS
* code.coding[TW2014ICD10PCS].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* code.coding[TW2014ICD10PCS].code 1.. MS
* code.text MS
* code.text ^short = "影像檢查的身體部位"
* subject 1..
* subject only Reference(PatientTWPAS)
* effectiveDateTime 1..1 MS
* effectiveDateTime only dateTime
* effectiveDateTime ^sliceName = "effectiveDateTime"
* effectiveDateTime ^short = "影像報告日期，YYYY-MM-DD"
* performer 1..1 MS
* performer only Reference(PractitionerTWPAS)
* performer ^short = "簽發影像報告醫師身分證號"
* imagingStudy only Reference(ImagingStudyTWPAS)
* imagingStudy MS
* imagingStudy ^short = "DICOM影像，SNOMED CT"
* imagingStudy ^condition = "image-report"
* media MS
* media ^short = "非DICOM影像"
* media ^condition = "image-report"
* media.link only Reference(MediaTWPAS)
* conclusion 1.. MS
* conclusion obeys pas-2
* conclusion ^short = "影像報告結果，請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* presentedForm MS
* presentedForm obeys UploadContent
* presentedForm ^short = "報告結果-MIMEType。若需要，可上傳影像報告的PDF檔。"
* presentedForm.contentType 1.. MS
* presentedForm.url 1.. MS
* presentedForm.url ^short = "影像報告（請填寫完整檔案路徑）"
* presentedForm.url ^example.label = "General"
* presentedForm.url ^example.valueUrl = "file://ImagingDiagnosticReport01.pdf"
* presentedForm.title 1.. MS
* presentedForm.title ^short = "影像報告名稱"