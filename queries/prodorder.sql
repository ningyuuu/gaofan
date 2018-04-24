SELECT 
  ProductID,
  ColourID,
  Quantity,
  SalePrice,
  CostPrice,
  DateInInventory,
  DateOnShelf,
  StartProdDate,
  EndProdDate,
  CompletionDate,
  AmtArrived,
  CheckedTS.TimeStampDate AS CheckedDate,
  CheckedTS.EmployeeName AS CheckedName,
  SamplingTS.TimeStampDate AS SamplingDate,
  SamplingTS.EmployeeName AS SamplingName,
  ContractTS.TimeStampDate AS ContractDate,
  ContractTS.EmployeeName AS ContractName,
  AccountingTS.TimeStampDate AS AccountDate,
  AccountingTS.EmployeeName AS AccountingName
FROM ProductionBatches

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) CheckedTS
ON ProductionBatches.CheckedTSID = CheckedTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) SamplingTS
ON ProductionBatches.SamplingTSID = SamplingTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) ContractTS
ON ProductionBatches.ContractTSID = ContractTS.TimeStampID

LEFT JOIN (
  SELECT TimeStampID, TimeStampDate, EmployeeName 
  FROM ActionTimeStamps
  INNER JOIN Employees
  ON ActionTimeStamps.EmployeeID = Employees.EmployeeID
) AccountingTS
ON ProductionBatches.AccountingTSID = AccountingTS.TimeStampID
;