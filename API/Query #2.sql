SELECT 
    customertbl.CustomerNo,
    customertbl.UnitID,
    customertbl.LastName,
    customertbl.FirstName,
    customertbl.MiddleName,
    customerdtl.EquityTerm,
    customerdtl.EquityAmount,
    customerdtl.MATerm,
    customerdtl.MAAmount,
    customerdtl.MIR,
    customerdtl.FIRE,
    customerdtl.LoanAmt,
    customerdtl.IntRate,
    CASE 
        WHEN inventorytbl.Type = 'Lot Only' THEN inventorytbl.LotPrice
        ELSE inventorytbl.HousePrice
    END AS SellingPrice
FROM customertbl
JOIN customerdtl ON customertbl.CustomerNo = customerdtl.CustomerNo
JOIN inventorytbl ON inventorytbl.UnitID = customertbl.UnitID;