Invariant: supportingInfo
Description: "至少還需提供檢查報告、影像報告、基因資訊中任一樣資訊。"
* severity = #error
* expression = "supportingInfo.category.exists(coding.code = 'examinationReport') or supportingInfo.category.exists(coding.code = 'imagingReport') or supportingInfo.category.exists(coding.code = 'geneInfo')"