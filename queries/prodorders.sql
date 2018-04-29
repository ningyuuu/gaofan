SELECT 
  Products.ProductID,
  Colours.ColourName,
  Sizes.Size,
  PurchaseLists.Quantity,
  ProductionBatches.DateInInventory,
  ProductionBatches.DateOnShelf
FROM ProductionOrders

LEFT JOIN Specifications 
ON ProductionOrders.SpecificationID = Specifications.SpecificationID

LEFT JOIN Products
ON Specifications.ProductID = Products.ProductID

LEFT JOIN Colours
ON Specifications.ColourID = Colours.ColourID

LEFT JOIN Sizes
ON Specifications.SizeID = Sizes.SizeID

LEFT JOIN ProductionBatches
ON ProductionOrders.ProductionBatchID = ProductionBatches.ProductionBatchID

LEFT JOIN PurchaseLists
ON ProductionOrders.PurchaseID = PurchaseLists.PurchaseID
;