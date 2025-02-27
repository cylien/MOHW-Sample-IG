Invariant: image-report
Description: "DICOM影像(imagingStudy)或非DICOM影像(media)擇一必填。"
* severity = #error
* expression = "imagingStudy.exists() or media.exists()"