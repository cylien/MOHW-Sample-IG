Profile: PatientTWPAS
Parent: TWCorePatient
Id: Patient-twpas
Title: "病人資訊-Patient TWPAS"
Description: "此病人資訊-Patient TWPAS Profile說明本IG如何進一步定義臺灣核心-病人(TW Core Patient) Profile以呈現癌藥事前審查之病人基本資料"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys patient-gender-match
* identifier ..2
* identifier[idCardNumber] 1..
* identifier[idCardNumber] ^short = "身分證號，被保險人國民身分證統一編號。"
* identifier[passportNumber] ..0
* identifier[residentNumber] ..0
* identifier[medicalRecord] ^short = "病歷號 (參與醫院必須註冊命名系統)，由醫院自行填寫。"
* name ..1
* name obeys pat-name
* name[official] ..0
* name[usual] 1..
* name[usual].text 1..
* name[temp] ..0
* name[anonymous] ..0
* gender ^short = "male:男性 ｜ female:女性 ｜ other:其他 ｜ unknown:未知"
* birthDate ^short = "出生日期，YYYY-MM-DD，西元年月日。"