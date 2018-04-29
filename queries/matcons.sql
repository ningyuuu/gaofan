SELECT
  TimeOfRecord,
  Materials.MaterialID,
  Materials.MaterialName,
  Materials.Colour,
  Materials.MaterialDesc,
  Materials.Unit,
  SUM(QuantityByBatch.Quantity * BillOfMaterials.AmountToUse) AS PlannedUsage,
  ActualUsage
FROM MaterialConsumptions

LEFT JOIN Materials
ON MaterialConsumptions.MaterialID = Materials.MaterialID

LEFT JOIN ProductionBatches
ON MaterialConsumptions.ProductionBatchID = ProductionBatches.ProductionBatchID

JOIN (
  SELECT ProductionBatchID, PurchaseLists.SpecificationID, PurchaseLists.Quantity as Quantity
  FROM ProductionOrders, PurchaseLists
  WHERE ProductionOrders.PurchaseID = PurchaseLists.PurchaseID
) QuantityByBatch
ON QuantityByBatch.ProductionBatchID = ProductionBatches.ProductionBatchID

INNER JOIN BillOfMaterials
ON BillOfMaterials.SpecificationID = QuantityByBatch.SpecificationID
  AND BillOfMaterials.MaterialID = Materials.MaterialID

GROUP BY MaterialConsumptions.MaterialConsID 
;