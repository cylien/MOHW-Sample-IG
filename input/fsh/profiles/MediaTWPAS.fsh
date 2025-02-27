Profile: MediaTWPAS
Parent: TWCoreMedia
Id: Media-twpas
Title: "非DICOM影像-Media TWPAS"
Description: "此非DICOM影像-Media TWPAS Profile說明本IG如何進一步定義臺灣核心-多媒體(TW Core Media) Profile以呈現癌藥事前審查中疾病資訊之影像報告的非DICOM影像"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* subject only Reference(PatientTWPAS)
* bodySite MS
* bodySite from $body-site (required)
* bodySite ^short = "影像檢查的身體部位"
* content obeys UploadContent
* content.contentType 1.. MS
* content.contentType from $media-mimetypes (required)
* content.url 1.. MS
* content.url ^short = "非DICOM影像（請填寫完整檔案路徑）"
* content.url ^example.label = "General"
* content.url ^example.valueUrl = "file://US01.jpg"