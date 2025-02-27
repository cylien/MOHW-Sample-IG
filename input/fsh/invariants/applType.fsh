Invariant: applType
Description: "當Claim.subType(申報類別)為2(送核補件)、3(申復)、4(爭議審議)或5(申復補件)時，院所才需於Claim.identifier填寫原送核案件之受理編號。目前IG僅針對申報類別為3(申復)進行檢核。"
* severity = #error
* expression = "(subType.coding.exists(code='3')) implies (identifier.exists())"