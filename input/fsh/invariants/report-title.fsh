Invariant: report-title
Description: "若category為「治療計畫文件(#careplan)」，請擇一填寫：「免疫檢查點抑制劑治療計畫／CAR-T多團隊會議紀錄／造血幹細胞移植計畫書」"
* severity = #error
* expression = "((category.coding.exists(code='careplan')) implies (content.attachment.title = '免疫檢查點抑制劑治療計畫' or content.attachment.title = 'CAR-T多團隊會議紀錄' or content.attachment.title = '造血幹細胞移植計畫書'))"