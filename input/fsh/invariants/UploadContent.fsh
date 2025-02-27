Invariant: UploadContent
Description: "填寫格式：file://檔名.副檔名，例如：file://US01.jpg、file://PathologyReport01.pdf、file://GenReport01.pdf、file://王大明病歷.pdf"
* severity = #error
* expression = "url.matches('^file://[a-zA-Z0-9一-龥]+.[a-zA-Z]{2,5}$')"