Profile: SpecimenTWPAS
Parent: TWCoreSpecimen
Id: Specimen-twpas
Title: "基因檢測檢體-Specimen TWPAS"
Description: "此基因檢測檢體-Specimen TWPAS Profile說明本IG如何進一步定義臺灣核心-檢體(TW Core Specimen) Profile以呈現癌藥事前審查中基因資訊之檢測檢體相關內容"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* type 1..
* type from $specime-type (required)
* type ^short = "基因檢測檢體類型"
* subject only Reference(PatientTWPAS)
* receivedTime 1.. MS
* receivedTime ^short = "基因檢測日期"