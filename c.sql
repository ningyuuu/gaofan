PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

CREATE TABLE Products(
  ProductID         VARCHAR(20) PRIMARY KEY NOT NULL, 
  Gender            VARCHAR(1) CHECK( Gender IN ('M', 'F')) NOT NULL DEFAULT 'M', 
  ProductType       VARCHAR(255) NOT NULL
);

CREATE TABLE Colours(
  ColourID          VARCHAR(10) PRIMARY KEY NOT NULL,
  ColourName        VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Sizes(
  SizeID            INTEGER PRIMARY KEY NOT NULL,
  Size              VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE Employees(
  EmployeeID        INTEGER PRIMARY KEY NOT NULL,
  EmployeeName      VARCHAR(255) NOT NULL,
  EmployeeRole      VARCHAR(255) NOT NULL
);

CREATE TABLE Specifications(
  SpecificationID   VARCHAR(20) PRIMARY KEY NOT NULL,
  ProductID         VARCHAR(20) NOT NULL,
  ColourID          VARCHAR(10) NOT NULL,
  SizeID            INTEGER NOT NULL,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (ColourID) REFERENCES Colours(ColourID),
  FOREIGN KEY (SizeID) REFERENCES Sizes(SizeID)
);

CREATE TABLE Materials(
  MaterialID        VARCHAR(10) PRIMARY KEY NOT NULL,
  MaterialName      VARCHAR(255) NOT NULL,
  Colour            VARCHAR(255) NOT NULL,
  MaterialDesc      VARCHAR(255),
  Unit              VARCHAR(10),
  UnitCost          NUMERIC(10, 2),
  MaterialType      VARCHAR(255)
);

CREATE TABLE BillOfMaterials(
  BOMID             INTEGER PRIMARY KEY NOT NULL,
  SpecificationID   VARCHAR(20) NOT NULL,
  MaterialID        VARCHAR(10) NOT NULL,
  ProvidedBy        VARCHAR (255) CHECK(ProvidedBy in ('CLIENT', 'FACTORY')) NOT NULL DEFAULT 'FACTORY',
  AmountToUse       NUMERIC(10, 4) NOT NULL,
  FOREIGN KEY (SpecificationID) REFERENCES Specifications(SpecificationID),
  FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID)
);

CREATE TABLE Parties(
  PartyID           INTEGER PRIMARY KEY NOT NULL,
  PartyType         VARCHAR(255) CHECK (PartyType in ('VENDOR', 'SELF')) NOT NULL DEFAULT 'VENDOR',
  PartyName         VARCHAR(255) NOT NULL,
  ContactNo         INTEGER NOT NULL,
  ContactAddress    VARCHAR(255)
);

CREATE TABLE Contracts(
  ContractID        INTEGER PRIMARY KEY NOT NULL,
  TaxRate           NUMERIC(6, 2) NOT NULL,
  Party1            INTEGER NOT NULL,
  Party2            INTEGER NOT NULL,
  DateOfContract    DATETIME NOT NULL,
  FOREIGN KEY (Party1) REFERENCES Parties(PartyID),
  FOREIGN KEY (Party2) REFERENCES Parties(PartyID)
);

CREATE TABLE ProductionOrders(
  PdtionOrderID         INTEGER PRIMARY KEY NOT NULL,
  SpecificationID   VARCHAR(20) NOT NULL,
  ProductionBatchID INTEGER NOT NULL,
  PurchaseID        INTEGER NOT NULL,
  FOREIGN KEY (SpecificationID) REFERENCES Specifications(SpecificationID),
  FOREIGN KEY (ProductionBatchID) REFERENCES ProductionBatches(ProductionBatchID),
  FOREIGN KEY (PurchaseID) REFERENCES PurchaseLists(PurchaseID)
);

CREATE TABLE ProductionBatches(
  ProductionBatchID INTEGER PRIMARY KEY NOT NULL,
  ProductID         VARCHAR(20) NOT NULL,
  ColourID          VARCHAR(10) NOT NULL,
  Quantity          INTEGER NOT NULL,
  SalePrice         NUMERIC(10, 2) NOT NULL,
  CostPrice         NUMERIC(10, 2) NOT NULL,
  DateInInventory   DATETIME,
  DateOnShelf       DATETIME,
  StartProdDate     DATETIME,
  EndProdDate       DATETIME,
  CompletionDate    DATETIME,
  AmtArrived        INTEGER,
  CheckedTime       DATETIME,
  CheckedEmployee   INTEGER,
  SamplingTime      DATETIME,
  SamplingEmployee  INTEGER,
  ContractTime       DATETIME,
  ContractEmployee   INTEGER,
  AccountingTime       DATETIME,
  AccountingEmployee   INTEGER, 
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (ColourID) REFERENCES Colours(ColourID),
  FOREIGN KEY (CheckedEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (SamplingEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (ContractEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (AccountingEmployee) REFERENCES Employees(EmployeeID)
);

CREATE TABLE StockReceiving(
  StockReceivingID  INTEGER PRIMARY KEY NOT NULL,
  PdtionOrderID         INTEGER NOT NULL,
  ProductionBatchID INTEGER NOT NULL,
  BatchStatus       VARCHAR(255) NOT NULL,
  ReceivedAmt       INTEGER NOT NULL,
  CheckedTime       DATETIME NOT NULL,
  CheckedEmployee   INTEGER NOT NULL,
  ContractTime       DATETIME NOT NULL,
  ContractEmployee   INTEGER NOT NULL,
  ReceivingTime       DATETIME NOT NULL,
  ReceivingEmployee   INTEGER NOT NULL,
  AcceptedTime       DATETIME NOT NULL,
  AcceptedEmployee   INTEGER NOT NULL,
  FOREIGN KEY (PdtionOrderID) REFERENCES ProductionOrders(PdtionOrderID),
  FOREIGN KEY (ProductionBatchID) REFERENCES ProductionBatches(ProductionBatchID),
  FOREIGN KEY (CheckedEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (ContractEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (ReceivingEmployee) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (AcceptedEmployee) REFERENCES Employees(EmployeeID)
);

CREATE TABLE PurchaseLists(
  PurchaseID        INTEGER PRIMARY KEY NOT NULL,
  ContractID        INTEGER NOT NULL,
  SpecificationID   VARCHAR(20) NOT NULL,
  Quantity          INTEGER NOT NULL,
  ContractPrice     NUMERIC(10, 2) NOT NULL,
  TotalCost         NUMERIC(10, 2) NOT NULL,
  DateOfCompletion  DATETIME,
  FOREIGN KEY (ContractID) REFERENCES Contracts(ContractID),
  FOREIGN KEY (SpecificationID) REFERENCES Specifications(SpecificationID)
);

CREATE TABLE OrdersLists(
  OrderID           INTEGER PRIMARY KEY NOT NULL,
  OrderStatus       VARCHAR(255) NOT NULL,
  OrderType         VARCHAR(255) NOT NULL,
  Returned          BOOLEAN,
  ProcessedTime     DATETIME,
  ProcessedEmployee INTEGER,
  FOREIGN KEY (ProcessedEmployee) REFERENCES Employees(EmployeeID)
);

CREATE TABLE MaterialPurchases(
  MaterialPurchID   INTEGER PRIMARY KEY NOT NULL,
  MaterialID        VARCHAR(10) NOT NULL,
  OrderQuantity     INTEGER NOT NULL,
  ReceivedQuantity  INTEGER,
  PurchaseDate      DATETIME NOT NULL,
  ExpectedArrDate   DATETIME NOT NULL,
  DateInInventory    DATETIME,
  FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID)
);

CREATE TABLE MaterialConsumptions(
  MaterialConsID    INTEGER PRIMARY KEY NOT NULL,
  ProductionBatchID INTEGER NOT NULL,
  MaterialID        VARCHAR(10) NOT NULL,
  ActualUsage       INTEGER,
  TimeOfRecord      DATETIME,
  FOREIGN KEY (ProductionBatchID) REFERENCES ProductionBatches(ProductionBatchID),
  FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID)
);

CREATE TABLE MaterialLevels(
  MaterialLevelID   INTEGER PRIMARY KEY NOT NULL,
  MaterialID        VARCHAR(10) NOT NULL,
  IsConsumption     BOOLEAN NOT NULL,
  MaterialPurchID   INTEGER,
  MaterialConsID    INTEGER,
  Quantity          NUMERIC(10, 2),
  TimeOfRecord      DATETIME,
  FOREIGN KEY (MaterialID) REFERENCES Materials(MaterialID),
  FOREIGN KEY (MaterialPurchID) REFERENCES MaterialPurchases(MaterialPurchID),
  FOREIGN KEY (MaterialConsID) REFERENCES MaterialConsumptions(MaterialConsID)
);

CREATE TABLE StockLevels(
  StockLevelID      INTEGER PRIMARY KEY NOT NULL,
  SpecificationID   VARCHAR(20) NOT NULL,
  IsConsumption     BOOLEAN NOT NULL,
  OrderID           INTEGER,
  StockReceivingID  INTEGER,
  Quantity          NUMERIC(10, 2),
  TimeOfRecord      DATETIME,
  FOREIGN KEY (SpecificationID) REFERENCES Specifications(SpecificationID),
  FOREIGN KEY (OrderID) REFERENCES OrdersLists(OrderID),
  FOREIGN KEY (StockReceivingID) REFERENCES StockReceiving(StockReceivingID)
);

COMMIT;