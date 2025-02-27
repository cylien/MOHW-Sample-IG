Profile: OrganizationTWPAS
Parent: TWCoreOrganization
Id: Organization-twpas
Title: "醫事機構-Organization TWPAS"
Description: "此醫事機構-Organization TWPAS Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現癌藥事前審查之醫事機構基本資料"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* identifier 1..1
* identifier ^short = "醫事機構代碼"
* identifier.system 1..
* identifier.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/organization-identifier-tw"
* identifier.system ^example.label = "General"
* identifier.system ^example.valueUri = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/organization-identifier-tw"
* identifier.value 1..
* identifier.value from $nhi-organization (required)
* identifier.value ^example.label = "General"
* identifier.value ^example.valueString = "0101090517"