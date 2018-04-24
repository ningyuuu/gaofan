SELECT
  Products.ProductID,
  Colours.ColourName,
  Sizes.Size,
  Quantity,
  ContractPrice,
  TotalCost,
  DateOfCompletion
FROM PurchaseLists
LEFT JOIN Specifications
ON PurchaseLists.SpecificationID = Specifications.SpecificationID

LEFT JOIN Products
ON Specifications.ProductID = Products.ProductID

LEFT JOIN Colours
ON Specifications.ColourID = Colours.ColourID

LEFT JOIN Sizes
ON Specifications.SizeID = Sizes.SizeID

WHERE ContractID=101
;