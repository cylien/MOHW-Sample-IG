Invariant: patient-gender-match
Description: "gender依據identifier:idCardNumber第二位字符檢核男性與女性代碼 (1=male, 2=female)"
* severity = #error
* expression = "(identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '1' implies gender = 'male') and (identifier.where(system = 'http://www.moi.gov.tw').value.substring(1, 1) = '2' implies gender = 'female')"