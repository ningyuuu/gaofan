SELECT
  StockReceivingID,
  PdtionOrderID,
  BatchStatus,
  ReceivedAmt,
  ProductionBatches.DateInInventory,
  ProductionBatches.DateOnShelf,
  StockReceiving.CheckedTime,
  StockReceiving.CheckedEmployee,
  StockReceiving.ContractTime,
  StockReceiving.ContractEmployee,
  StockReceiving.ReceivingTime,
  StockReceiving.ReceivingEmployee,
  StockReceiving.AcceptedTime,
  StockReceiving.AcceptedEmployee
  
FROM StockReceiving

LEFT JOIN ProductionBatches
ON StockReceiving.ProductionBatchID = ProductionBatches.ProductionBatchID

;