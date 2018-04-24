SELECT
  MfgPlanID,
  BatchStatus,
  ReceivedAmt,
  ProductionBatches.DateInInventory,
  ProductionBatches.DateOnShelf,
  CheckedTimeTS.TimeStampDate AS CheckDate,
  CheckedTimeTS.EmployeeName AS CheckName,
  ContractSignTS.TimeStampDate AS ContractTime,
  ContractSignTS.EmployeeName AS ContractName,
  ReceivingTS.TimeStampDate AS ReceivingDate,
  ReceivingTS.EmployeeName AS ReceivingName,
  AcceptedTimeTS.TimeStampDate AS AcceptedDate,
  AcceptedTimeTS.EmployeeName AS AcceptedName

FROM StockReceiving
LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) CheckedTimeTS
ON StockReceiving.CheckedTimeTSID = CheckedTimeTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) ReceivingTS
ON StockReceiving.CheckedTimeTSID = ReceivingTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) ContractSignTS
ON StockReceiving.CheckedTimeTSID = ContractSignTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) AcceptedTimeTS
ON StockReceiving.CheckedTimeTSID = AcceptedTimeTS.TimeStampID

LEFT JOIN ProductionBatches
ON StockReceiving.ProductionBatchID = ProductionBatches.ProductionBatchID

;