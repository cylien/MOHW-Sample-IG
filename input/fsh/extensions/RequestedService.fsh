Extension: RequestedService
Id: extension-requestedService
Description: "事前審查品項"
Context: Claim.item
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* . ^definition = "事前審查品項"
* value[x] only Reference(MedicationRequestApplyTWPAS)