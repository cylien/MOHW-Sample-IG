Profile: OrganizationGeneticTestingTWPAS
Parent: TWCoreOrganization
Id: Organization-genetic-testing-twpas
Title: "基因檢測機構-Organization Genetic Testing TWPAS"
Description: "此基因檢測機構-Organization Genetic Testing TWPAS Profile說明本IG如何進一步定義臺灣核心-機構(TW Core Organization) Profile以呈現癌藥事前審查之基因檢測機構基本資料"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* identifier 1..1
* identifier obeys ngs-org
* identifier ^short = "基因檢測機構，衛福部公告名冊或LDTs核定函上之「案件編號」。"
* identifier.system = "https://dep.mohw.gov.tw"
* identifier.system ^example[0].label = "General"
* identifier.system ^example[=].valueUri = "https://dep.mohw.gov.tw/DOMA/ngs-org"
* identifier.value 1..
* identifier.value ^example[0].label = "12碼"
* identifier.value ^example[=].valueString = "2023LDTB0002"
* identifier.value ^example[+].label = "11碼"
* identifier.value ^example[=].valueString = "2024LDT2717"
* identifier.value ^example[+].label = "1"
* identifier.value ^example[=].valueString = "CAP"
* identifier.value ^example[+].label = "2"
* identifier.value ^example[=].valueString = "TAF"
* identifier.value ^example[+].label = "3"
* identifier.value ^example[=].valueString = "TFDA"
* identifier.value ^example[+].label = "4"
* identifier.value ^example[=].valueString = "TSP"