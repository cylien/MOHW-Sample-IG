Profile: CoverageTWPAS
Parent: Coverage
Id: Coverage-twpas
Title: "健保事前審查計畫-Coverage TWPAS"
Description: "此健保事前審查計畫-Coverage TWPAS Profile說明本IG如何進一步定義FHIR的Coverage Resource以呈現癌藥事前審查之健保事前審查計畫"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* status = #active
* beneficiary only Reference(PatientTWPAS)
* payor only Reference(TWCoreOrganizationGovt)