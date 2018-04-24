SELECT 
  Materials.MaterialID,
  MaterialName,
  Colour,
  OrderQuantity,
  ReceivedQuantity,
  PurchaseDate,
  ExpectedArrDate,
  DateInInventory
FROM MaterialPurchases

INNER JOIN Materials
ON Materials.MaterialID = MaterialPurchases.MaterialID
;