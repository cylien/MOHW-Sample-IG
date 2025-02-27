Profile: ClaimTWPAS
Parent: Claim
Id: Claim-twpas
Title: "事前審查-Claim TWPAS"
Description: "此事前審查-Claim TWPAS Profile說明本IG如何進一步定義FHIR的Claim Resource以呈現癌藥事前審查之內容"
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-12-12T17:34:45+08:00"
* ^publisher = "衛生福利部中央健康保險署"
* ^contact.name = "衛生福利部中央健康保險署"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nhi.gov.tw"
* obeys sequence-1 and supportingInfo and applType
* extension contains ClaimEncounter named encounter 1..1 MS
* extension[encounter] ^short = "就醫科別，為細分科之就醫科別，作為審查分科用。【此為參考Da Vinci PAS IG的extension設計】"
* identifier ..1 MS
* identifier ^short = "原受理編號。院所上傳送核(subType = #1)案件時，不需填寫「原受理編號」資訊，受理成功後會由系統自動產生受理編號。當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* status = #active
* type = $claim-type#institutional
* subType 1.. MS
* subType from $nhi-apply-type (required)
* subType ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。院所上傳送核(subType = #1)案件時，不需填寫「原受理編號」資訊，受理成功後會由系統自動產生受理編號。當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* subType.coding 1..1
* subType.coding.system 1..
* subType.coding.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-apply-type"
* subType.coding.code 1..
* subType.coding.code ^short = "申報類別，1:送核 | 2:送核補件 | 3:申復 | 4:爭議審議 | 5:申復補件 。當申報類別為2(送核補件)、3(申復)、4(爭議審議)、5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。"
* use = #preauthorization
* patient only Reference(PatientTWPAS)
* patient MS
* patient ^short = "病人資訊"
* created MS
* created ^short = "申請日期，YYYY-MM-DD，機構自填。健保署收案後另建受理日期，將呈現在ClaimResponse的disposition和created欄位。"
* enterer 1.. MS
* enterer only Reference(PractitionerTWPAS)
* enterer ^short = "申請醫師，必須存在於醫事人員基本資料檔內，並於合約生效起迄日內。"
* provider only Reference(OrganizationTWPAS)
* provider MS
* provider ^short = "醫事機構代碼，必須存在於醫事機構基本資料檔內。"
* priority MS
* priority from $nhi-tmhb-type (required)
* priority ^short = "申請案件類別，1:一般事前審查申請 | 3:自主審查報備 | 4:緊急報備；專審系統識別用，對應PXXT_CODE(TMHB,001)。"
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo.sequence ^short = "因FHIR設計而必填、自動流水號（建議每次加1）、不得重複，作為每筆supportingInfo的唯一識別碼。最後一筆sequence號碼即表示總筆數。"
* supportingInfo.category from $nhi-supporting-info-type_1 (required)
* supportingInfo contains
    weight 1..1 and
    height 1..1 and
    pregnancy 0..1 and
    imagingReport 0..* and
    cancerStage 0..* and
    examinationReport 0..* and
    geneInfo 0..* and
    tests 0..* and
    patientAssessment 0..* and
    medicationRequest 0..* and
    radiotherapy 0..* and
    carePlanDocument 0..* and
    medicalRecord 0..* and
    treatmentAssessment 0..*
* supportingInfo[weight] ^short = "病人體重"
* supportingInfo[weight].category = $nhi-supporting-info-type#weight
* supportingInfo[weight].timing[x] ..0
* supportingInfo[weight].value[x] 1.. MS
* supportingInfo[weight].value[x] only Quantity
* supportingInfo[weight].value[x].value 1.. MS
* supportingInfo[weight].value[x].value obeys HTWT
* supportingInfo[weight].value[x].value ^short = "體重，整數至多3位數及小數至多2位數。"
* supportingInfo[weight].value[x].system 1..
* supportingInfo[weight].value[x].system = "http://unitsofmeasure.org"
* supportingInfo[weight].value[x].code 1..
* supportingInfo[weight].value[x].code = #kg
* supportingInfo[height] ^short = "病人身高"
* supportingInfo[height].category = $nhi-supporting-info-type#height
* supportingInfo[height].timing[x] ..0
* supportingInfo[height].value[x] 1.. MS
* supportingInfo[height].value[x] only Quantity
* supportingInfo[height].value[x].value 1.. MS
* supportingInfo[height].value[x].value obeys HTWT
* supportingInfo[height].value[x].value ^short = "身高(cm)，整數至多3位數及小數至多2位數。"
* supportingInfo[height].value[x].system 1..
* supportingInfo[height].value[x].system = "http://unitsofmeasure.org"
* supportingInfo[height].value[x].code 1..
* supportingInfo[height].value[x].code = #cm
* supportingInfo[pregnancy] ^short = "是否懷孕或哺乳"
* supportingInfo[pregnancy].category = $nhi-supporting-info-type#pregnancyBreastfeedingStatus
* supportingInfo[pregnancy].timing[x] ..0
* supportingInfo[pregnancy].value[x] 1.. MS
* supportingInfo[pregnancy].value[x] only boolean
* supportingInfo[pregnancy].value[x] ^short = "是否懷孕或哺乳，false:未懷孕或哺乳 | true:有懷孕或哺乳"
* supportingInfo[imagingReport] ^short = "影像報告"
* supportingInfo[imagingReport].category = $nhi-supporting-info-type#imagingReport
* supportingInfo[imagingReport].timing[x] ..0
* supportingInfo[imagingReport].value[x] 1.. MS
* supportingInfo[imagingReport].value[x] only Reference(DiagnosticReportImageTWPAS)
* supportingInfo[imagingReport].value[x] ^short = "影像報告"
* supportingInfo[cancerStage] ^short = "癌症分期量表"
* supportingInfo[cancerStage].category = $nhi-supporting-info-type#cancerStage
* supportingInfo[cancerStage].timing[x] ..0
* supportingInfo[cancerStage].value[x] 1.. MS
* supportingInfo[cancerStage].value[x] only Reference(ObservationCancerStageTWPAS)
* supportingInfo[cancerStage].value[x] ^short = "癌症分期量表"
* supportingInfo[examinationReport] ^short = "檢查報告"
* supportingInfo[examinationReport].category = $nhi-supporting-info-type#examinationReport
* supportingInfo[examinationReport].timing[x] ..0
* supportingInfo[examinationReport].value[x] 1.. MS
* supportingInfo[examinationReport].value[x] only Reference(DiagnosticReportTWPAS)
* supportingInfo[examinationReport].value[x] ^short = "檢查報告"
* supportingInfo[geneInfo] ^short = "基因資訊"
* supportingInfo[geneInfo].category = $nhi-supporting-info-type#geneInfo
* supportingInfo[geneInfo].timing[x] ..0
* supportingInfo[geneInfo].value[x] 1.. MS
* supportingInfo[geneInfo].value[x] only Reference(ObservationDiagnosticTWPAS)
* supportingInfo[geneInfo].value[x] ^short = "基因資訊"
* supportingInfo[tests] ^short = "檢驗(查)"
* supportingInfo[tests].category = $nhi-supporting-info-type#tests
* supportingInfo[tests].timing[x] ..0
* supportingInfo[tests].value[x] 1.. MS
* supportingInfo[tests].value[x] only Reference(ObservationLaboratoryResultTWPAS)
* supportingInfo[tests].value[x] ^short = "檢驗(查)"
* supportingInfo[patientAssessment] ^short = "病人狀態評估"
* supportingInfo[patientAssessment].category = $nhi-supporting-info-type#patientAssessment
* supportingInfo[patientAssessment].timing[x] ..0
* supportingInfo[patientAssessment].value[x] 1.. MS
* supportingInfo[patientAssessment].value[x] only Reference(ObservationPatientAssessmentTWPAS)
* supportingInfo[patientAssessment].value[x] ^short = "病人狀態評估"
* supportingInfo[medicationRequest] ^short = "用藥品項"
* supportingInfo[medicationRequest].category = $nhi-supporting-info-type#medicationRequest
* supportingInfo[medicationRequest].timing[x] ..0
* supportingInfo[medicationRequest].value[x] 1.. MS
* supportingInfo[medicationRequest].value[x] only Reference(MedicationRequestTreatTWPAS)
* supportingInfo[medicationRequest].value[x] ^short = "用藥品項"
* supportingInfo[radiotherapy] ^short = "放射治療"
* supportingInfo[radiotherapy].category = $nhi-supporting-info-type#radiotherapy
* supportingInfo[radiotherapy].timing[x] ..0
* supportingInfo[radiotherapy].value[x] 1.. MS
* supportingInfo[radiotherapy].value[x] only Reference(ProcedureTWPAS)
* supportingInfo[radiotherapy].value[x] ^short = "放射治療"
* supportingInfo[carePlanDocument] ^short = "治療計畫文件，P-IO(免疫檢查點抑制劑治療計畫)、P-CART(CAR-T多團隊會議紀錄)、P-STEMCELL(造血幹細胞移植計畫書)，附件形式PDF"
* supportingInfo[carePlanDocument].category = $nhi-supporting-info-type#carePlanDocument
* supportingInfo[carePlanDocument].timing[x] ..0
* supportingInfo[carePlanDocument].value[x] 1.. MS
* supportingInfo[carePlanDocument].value[x] only Reference(DocumentReferenceTWPAS)
* supportingInfo[carePlanDocument].value[x] ^short = "治療計畫文件"
* supportingInfo[medicalRecord] ^short = "病歷資料（非屬影像報告檢查驗報告部分），可檢附其他佐證癌藥治療必要性之非結構化病歷。"
* supportingInfo[medicalRecord].category = $nhi-supporting-info-type#medicalRecord
* supportingInfo[medicalRecord].timing[x] ..0
* supportingInfo[medicalRecord].value[x] 1.. MS
* supportingInfo[medicalRecord].value[x] only Reference(DocumentReferenceTWPAS)
* supportingInfo[treatmentAssessment] ^short = "結果資訊"
* supportingInfo[treatmentAssessment].category = $nhi-supporting-info-type#treatmentAssessment
* supportingInfo[treatmentAssessment].timing[x] ..0
* supportingInfo[treatmentAssessment].value[x] 1.. MS
* supportingInfo[treatmentAssessment].value[x] only Reference(ObservationTreatmentAssessmentTWPAS)
* supportingInfo[treatmentAssessment].value[x] ^short = "結果資訊"
* diagnosis 1.. MS
* diagnosis obeys diagnosis
* diagnosis ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
* diagnosis.extension contains DiagnosisRecordedDate named recordedDate 0..* MS
* diagnosis.extension[recordedDate] ^short = "診斷日期，sequence=1時為必填，表示為用藥事前審查之主要疾病；其他共病不須填寫診斷日期。YYYY-MM-DD，西元年月日。【此為參考Da Vinci PAS IG的extension設計】"
* diagnosis.sequence ^short = "sequence=1時為主要疾病；sequence>=2代表共病。"
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] MS
* diagnosis.diagnosis[x] from TW2023ICD10CM (preferred)
* diagnosis.diagnosis[x] ^short = "國際疾病分類代碼(含共病)，當前疾病狀態。ICD-10-CM。"
* diagnosis.diagnosis[x].coding ^slicing.discriminator.type = #value
* diagnosis.diagnosis[x].coding ^slicing.discriminator.path = "system"
* diagnosis.diagnosis[x].coding ^slicing.rules = #closed
* diagnosis.diagnosis[x].coding contains
    icd10-cm-2023 0..1 MS and
    icd10-cm-2014 0..1 MS
* diagnosis.diagnosis[x].coding[icd10-cm-2023] from TW2023ICD10CM (extensible)
* diagnosis.diagnosis[x].coding[icd10-cm-2023].system 1.. MS
* diagnosis.diagnosis[x].coding[icd10-cm-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2023-tw"
* diagnosis.diagnosis[x].coding[icd10-cm-2023].code 1.. MS
* diagnosis.diagnosis[x].coding[icd10-cm-2014] from TW2014ICD10CM (extensible)
* diagnosis.diagnosis[x].coding[icd10-cm-2014].system 1.. MS
* diagnosis.diagnosis[x].coding[icd10-cm-2014].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-cm-2014-tw"
* diagnosis.diagnosis[x].coding[icd10-cm-2014].code 1.. MS
* diagnosis.type ..1
* diagnosis.type.text MS
* diagnosis.type.text obeys pas-2
* diagnosis.type.text ^short = "簡要病摘(申請理由)。連結院內HIS系統之簡要病摘，或填寫原事前審查之申請理由。請勿將醫事機構名稱、病人及醫師姓名等資訊列入結果中上傳，且不得包含HTML或XML等語法。"
* procedure.date 1.. MS
* procedure.date ^short = "手術(或其他處置)日期"
* procedure.procedure[x] only CodeableConcept
* procedure.procedure[x] MS
* procedure.procedure[x] from TW2023ICD10PCS (preferred)
* procedure.procedure[x] ^short = "手術(或其他處置)項目，經動脈導管肝臟腫瘤化學栓塞術(TACE)及冷凍療法等非屬手術。ICD-10-PCS 或 健保代碼 或 其他。"
* procedure.procedure[x].coding 1..1
* procedure.procedure[x].coding ^slicing.discriminator.type = #value
* procedure.procedure[x].coding ^slicing.discriminator.path = "system"
* procedure.procedure[x].coding ^slicing.rules = #open
* procedure.procedure[x].coding contains
    icd10-pcs-2023 0..1 MS and
    icd10-pcs-2014 0..1 MS and
    medical-service-payment 0..1 MS
* procedure.procedure[x].coding[icd10-pcs-2023] from TW2023ICD10PCS (required)
* procedure.procedure[x].coding[icd10-pcs-2023].system 1..
* procedure.procedure[x].coding[icd10-pcs-2023].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2023-tw"
* procedure.procedure[x].coding[icd10-pcs-2023].code 1.. MS
* procedure.procedure[x].coding[icd10-pcs-2014] from TW2014ICD10PCS (required)
* procedure.procedure[x].coding[icd10-pcs-2014].system 1..
* procedure.procedure[x].coding[icd10-pcs-2014].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/icd-10-pcs-2014-tw"
* procedure.procedure[x].coding[icd10-pcs-2014].code 1.. MS
* procedure.procedure[x].coding[medical-service-payment] from TWMedicalServicePayment (required)
* procedure.procedure[x].coding[medical-service-payment].system 1..
* procedure.procedure[x].coding[medical-service-payment].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw"
* procedure.procedure[x].coding[medical-service-payment].code 1.. MS
* insurance.sequence = 1
* insurance.coverage only Reference(CoverageTWPAS)
* item 1..
* item.extension contains RequestedService named requestedService 1..1 MS
* item.extension[requestedService] ^short = "事前審查品項【此為參考Da Vinci PAS IG的extension設計】"
* item.productOrService MS
* item.productOrService from $nhi-order-type (required)
* item.productOrService ^short = "醫令類別"
* item.modifier ..2
* item.modifier ^slicing.discriminator.type = #value
* item.modifier ^slicing.discriminator.path = "coding.system"
* item.modifier ^slicing.ordered = false
* item.modifier ^slicing.rules = #open
* item.modifier contains
    continuation 1..1 MS and
    lot 0..1 MS
* item.modifier[continuation] from $nhi-continuation-status (required)
* item.modifier[continuation] ^short = "續用註記，1:初次使用 | 2:申請再次使用"
* item.modifier[continuation].coding 1..1
* item.modifier[continuation].coding.system 1..
* item.modifier[continuation].coding.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-continuation-status"
* item.modifier[continuation].coding.code 1..
* item.modifier[continuation].coding.code ^short = "1:初次使用 | 2:申請再次使用"
* item.modifier[lot] from $nhi-line-of-therapy (required)
* item.modifier[lot] ^short = "用藥線別，0:不適用 | 1:第一線治療 | 2:第二線治療 | 3:第三線治療 | 4:第四線治療 | 5:第五線治療"
* item.modifier[lot].coding 1..1
* item.modifier[lot].coding.system 1..
* item.modifier[lot].coding.system = "https://twcore.mohw.gov.tw/ig/pas/CodeSystem/nhi-line-of-therapy"
* item.modifier[lot].coding.code 1.. MS
* item.modifier[lot].coding.code ^short = "0:不適用 | 1:第一線治療 | 2:第二線治療 | 3:第三線治療 | 4:第四線治療 | 5:第五線治療"
* item.programCode 1..1 MS
* item.programCode obeys pas-1
* item.programCode ^short = "給付適應症條件，藥品給付規定內所規範之適應症或條件，若有特定事前審查品項代碼應以代碼填報。"
* item.programCode ^condition[0] = "applyReason-1"
* item.programCode ^condition[+] = "applyReason-2"
* item.programCode ^condition[+] = "applyReason-3"
* item.programCode.coding from $nhi-apply-reason (required)
* item.programCode.coding ^short = "給付適應症條件，當事前審查品項代碼為KC009612B5、KC010892B5、KC011112DE、KC011162B5、KC011362B5、KC01013229、KC01013230、KC01025219、KC01050238、KC01085229、KC00958229、KC011592DE、JC00154261時，才可填寫。"
* item.programCode.text ^short = "給付適應症條件，事前審查品項代碼不為KC009612B5、KC010892B5、KC011112DE、KC011162B5、KC011362B5、KC01013229、KC01013230、KC01025219、KC01050238、KC01085229、KC00958229、KC011592DE、JC00154261時，請自行輸入文字。"
* item.quantity 1.. MS
* item.quantity.value 1.. MS
* item.quantity.value ^short = "事前審查申請數量"
* item.quantity.code 1.. MS
* item.quantity.code ^short = "事前審查申請數量單位"
* item.bodySite from $nhi-apply-side (required)
* item.bodySite ^short = "申請部位，R:右側 | L:左側 | B:兩側。(此專案暫不檢核，未來待確認)"