Extension: ClaimEncounter
Id: extension-claim-encounter
Description: "就醫科別"
Context: Claim
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* . ^definition = "就醫科別"
* value[x] only Reference(EncounterTWPAS)