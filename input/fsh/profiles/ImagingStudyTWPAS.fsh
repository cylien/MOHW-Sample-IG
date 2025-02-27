Profile: ImagingStudyTWPAS
Parent: TWCoreImagingStudy
Id: ImagingStudy-twpas
Title: "DICOM影像-ImagingStudy TWPAS"
Description: "此DICOM影像-ImagingStudy TWPAS Profile說明本IG如何進一步定義臺灣核心-影像檢查(TW Core ImagingStudy) Profile以呈現癌藥事前審查中疾病資訊之影像報告的影像檢查的身體部位及DICOM影像"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains study-uid 1..1 MS
* identifier[study-uid] ^short = "整項影像檢查的識別碼。上傳至健保署時，必要填寫 DICOM 檢查實例 UID (Study Instance UID)"
* identifier[study-uid].system 1.. MS
* identifier[study-uid].system = "urn:dicom:uid"
* identifier[study-uid].value 1.. MS
* identifier[study-uid].value obeys StudyUID
* identifier[study-uid].value ^example[0].label = "General"
* identifier[study-uid].value ^example[=].valueString = "urn:oid:2.16.886.2102.54.4546465747.465465465"
* identifier[study-uid].value ^example[+].label = "General"
* identifier[study-uid].value ^example[=].valueString = "urn:oid:2.16.886.2102.54.4546465747.0.46546546"
* subject only Reference(PatientTWPAS)
* series 1..
* series.bodySite MS
* series.bodySite from $body-site (required)
* series.bodySite ^short = "影像檢查的身體部位"
* series.instance.uid ^short = "DICOM影像"