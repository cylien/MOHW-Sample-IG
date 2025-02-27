Profile: DocumentReferenceTWPAS
Parent: TWCoreDocumentReference
Id: DocumentReference-twpas
Title: "文件參照-DocumentReference TWPAS"
Description: "此文件參照-DocumentReference TWPAS Profile說明本IG如何進一步定義臺灣核心-文件參照(TW Core DocumentReference) Profile以呈現癌藥事前審查之治療計畫文件及基因報告"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys report-title
* status = #current
* category 1..1
* category from $nhi-pdf-type (required)
* category.coding 1..1
* category.coding.code 1..
* subject only Reference(PatientTWPAS)
* content.attachment MS
* content.attachment obeys UploadContent
* content.attachment.contentType 1.. MS
* content.attachment.contentType = #application/pdf
* content.attachment.contentType ^short = "報告結果-MIMEType"
* content.attachment.url 1.. MS
* content.attachment.url ^short = "基因報告／治療計畫文件／檢驗(查)附件／病歷資料。（請填寫完整檔案路徑）"
* content.attachment.url ^example.label = "General"
* content.attachment.url ^example.valueUrl = "file://PathologyReport01.pdf"
* content.attachment.title MS
* content.attachment.title ^short = "基因報告名稱／治療計畫文件名稱／檢驗(查)附件名稱／病歷資料名稱。若category為「治療計畫文件(#careplan)」，請擇一填寫：「免疫檢查點抑制劑治療計畫／CAR-T多團隊會議紀錄／造血幹細胞移植計畫書」。"