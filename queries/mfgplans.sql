SELECT 
  Products.ProductID,
  Colours.ColourName,
  Sizes.Size,
  PurchaseLists.Quantity,
  ProductionBatches.DateInInventory,
  ProductionBatches.DateOnShelf
FROM ManufacturingPlans

LEFT JOIN Specifications 
ON ManufacturingPlans.SpecificationID = Specifications.SpecificationID

LEFT JOIN Products
ON Specifications.ProductID = Products.ProductID

LEFT JOIN Colours
ON Specifications.ColourID = Colours.ColourID

LEFT JOIN Sizes
ON Specifications.SizeID = Sizes.SizeID

LEFT JOIN ProductionBatches
ON ManufacturingPlans.ProductionBatchID = ProductionBatches.ProductionBatchID

LEFT JOIN PurchaseLists
ON ManufacturingPlans.PurchaseID = PurchaseLists.PurchaseID
;