SELECT 
  OrderID, 
  OrderType, 
  OrderStatus, 
  Returned,
  OrdersLists.ProcessedEmployee,
  Employees.EmployeeName,
  ProcessedTime
FROM OrdersLists

LEFT JOIN Employees
ON OrdersLists.ProcessedEmployee = Employees.EmployeeID
;