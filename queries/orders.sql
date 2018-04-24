SELECT 
  OrderID, 
  OrderType, 
  OrderStatus, 
  Returned, 
  TimeStampDate AS OrderDate, 
  EmployeeName AS ServicedBy
FROM OrdersLists
LEFT JOIN ActionTimeStamps
ON OrdersLists.ProcessedTSID = ActionTimeStamps.TimeStampID
LEFT JOIN Employees
ON ActionTimeStamps.EmployeeID = Employees.EmployeeID;