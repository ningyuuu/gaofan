SELECT 
  SpecificationID, 
  BillOfMaterials.MaterialID, 
  MaterialName, 
  Colour,
  Specification,
  ProvidedBy, 
  AmountToUse, 
  Unit,
  UnitCost,
  AmountToUse * UnitCost as TotalCost
FROM BillOfMaterials 
LEFT JOIN Materials
ON BillOfMaterials.MaterialID = Materials.MaterialID
WHERE SpecificationID = '00106121';