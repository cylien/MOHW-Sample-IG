Profile: ObservationDiagnosticTWPAS
Parent: Observation
Id: Observation-diagnostic-twpas
Title: "基因資訊-Observation Diagnostic TWPAS"
Description: "此基因資訊-Observation Diagnostic TWPAS Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現癌藥事前審查之基因資訊"
* ^version = "1.0.1"
* ^date = "2024-12-12T17:02:42+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* category 1..1
* category ^short = "因FHIR設計而需必填"
* category.coding 1..1
* category.coding.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-supporting-info-type"
* category.coding.code = #geneInfo
* code.coding 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code 1.. MS
* code.coding.code = #69548-6
* subject 1.. MS
* subject only Reference(PatientTWPAS)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^short = "基因檢測日期"
* performer 1..1 MS
* performer only Reference(OrganizationGeneticTestingTWPAS)
* performer ^short = "基因檢測機構，衛福部公告名冊或LDTs核定函上之「案件編號」。"
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] ^short = "基因檢測分析結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* interpretation ..1 MS
* interpretation ^short = "基因臨床判讀結果，醫師判讀結果。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* method 1.. MS
* method from $LL4048-6 (extensible)
* method ^short = "基因檢測方法"
* specimen 1.. MS
* specimen only Reference(SpecimenTWPAS)
* specimen ^short = "基因檢測檢體類型"
* derivedFrom 1..1 MS
* derivedFrom only Reference(DocumentReferenceTWPAS)
* derivedFrom ^short = "基因報告"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.system"
* component ^slicing.rules = #closed
* component contains gene-test-code 0..* MS
* component[gene-test-code] ^short = "基因檢測代碼"
* component[gene-test-code].code MS
* component[gene-test-code].code from $gene-test-code (extensible)
* component[gene-test-code].code ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* component[gene-test-code].code.coding 1..1
* component[gene-test-code].code.coding.system 1..
* component[gene-test-code].code.coding.system = "http://loinc.org"
* component[gene-test-code].value[x] 1.. MS
* component[gene-test-code].interpretation ..1 MS
* component[gene-test-code].interpretation from $dna-change-type (extensible)
* component[gene-test-code].interpretation obeys pas-1
* component[gene-test-code].interpretation ^short = "基因突變類型"
* component[gene-test-code].interpretation ^definition = "Type of DNA change observed. Convenience property for variants with exact breakpoints, required otherwise."
* component[gene-test-code].interpretation ^binding.description = "最新參考代碼清單請參考[此檔案](https://www.nhi.gov.tw/ch/dl-72275-c37534eb968943109de663267c439d9a-1.ods)。"
* component[gene-test-code].interpretation.coding ^condition = "pas-1"
* component[gene-test-code].interpretation.coding.code 1..
* component[gene-test-code].interpretation.coding.code ^short = "LA6692-3: Deletion | LA6686-5: Duplication | LA6687-3: Insertion | LA6688-1: Insertion/Deletion | LA6689-9: Inversion | LA6690-7: Substitution | 101397-8: Copy number variation analysis Sequencing Doc (Bld/Tiss) | 81695-9: MSI Ca spec-Imp | 94077-5: TMB Tumor-Imp | O55-2: Delins"
* component[gene-test-code].interpretation.text ^short = "基因突變類型。若無合適代碼，可使用此欄位以文字呈現。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* component[gene-test-code].interpretation.text ^condition = "pas-1"