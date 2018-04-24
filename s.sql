PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

-- PRODUCT
INSERT INTO Products(ProductID, Gender, ProductType)
VALUES ('001', 'F', 'Winter Jacket');

-- COLOURS
INSERT INTO Colours(ColourID, ColourName)
VALUES ('0612', 'Pink');

INSERT INTO Colours(ColourID, ColourName)
VALUES ('0610', 'Seafoam Blue');

INSERT INTO Colours(ColourID, ColourName)
VALUES ('0609', 'Grey');

INSERT INTO Colours(ColourID, ColourName)
VALUES ('0329', 'Red');

INSERT INTO Colours(ColourID, ColourName)
VALUES ('0200', 'Black');

-- SIZES
INSERT INTO Sizes(SizeID, Size)
VALUES (1, 'S');

INSERT INTO Sizes(SizeID, Size)
VALUES (2, 'M');

INSERT INTO Sizes(SizeID, Size)
VALUES (3, 'L');

INSERT INTO Sizes(SizeID, Size)
VALUES (4, 'XL');

INSERT INTO Sizes(SizeID, Size)
VALUES (5, 'XXL');

-- EMPLOYEES
INSERT INTO Employees(EmployeeID, EmployeeName, EmployeeRole)
VALUES (1, 'Peter Tan', 'Supervisor');

INSERT INTO Employees(EmployeeID, EmployeeName, EmployeeRole)
VALUES (2, 'Mary Lee', 'Executive');

INSERT INTO Employees(EmployeeID, EmployeeName, EmployeeRole)
VALUES (3, 'John Smith', 'Executive');

-- ACTION TIME STAMPS: CREATED WHEN NECESSARY ONLY
-- PLEASE PLACE 3 DIGIT PRODUCT ID BEFORE TIME STAMP ID

-- SPECIFICATIONS
-- PLEASE USE 3 DIGIT PRODUCT ID + COLOUR ID + SIZE ID
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106121', '001', '0612', 1);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106122', '001', '0612', 2);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106123', '001', '0612', 3);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106124', '001', '0612', 4);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106125', '001', '0612', 5);

INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106101', '001', '0610', 1);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106102', '001', '0610', 2);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106103', '001', '0610', 3);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106104', '001', '0610', 4);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106105', '001', '0610', 5);

INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106091', '001', '0609', 1);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106092', '001', '0609', 2);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106093', '001', '0609', 3);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106094', '001', '0609', 4);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00106095', '001', '0609', 5);

INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00103291', '001', '0329', 1);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00103292', '001', '0329', 2);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00103293', '001', '0329', 3);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00103294', '001', '0329', 4);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00103295', '001', '0329', 5);

INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00102001', '001', '0200', 1);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00102002', '001', '0200', 2);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00102003', '001', '0200', 3);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00102004', '001', '0200', 4);
INSERT INTO Specifications(SpecificationID, ProductID, ColourID, SizeID)
VALUES ('00102005', '001', '0200', 5);

-- MATERIALS
INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0001', '8807', 'Seafoam Blue', 'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0002',	'L 165/88A Womens Top' ,	'Rose Red', 'Certification');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType, Unit, UnitCost)
VALUES ('GFWL0003',	'Washing Tag',	'White',	'Tags', 'Ea', 3.02);

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType, Unit, UnitCost)
VALUES ('GFWL0004',	'240T PONGEE',	'Grey',	'Inner Material', 'm', 7);

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType, Unit, UnitCost)
VALUES ('GFWL0005',	'L 165/88A Womens Top' ,	'Grey',	'Certification', 'Ea', 3.09);

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0006',	'240T PONGEE',	'White',	'Inner Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0007',	'Rubber Band',	'White',	'Rubber Band');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0008',	'320T Soft Cloth',	'White',	'Cloth');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0009',	'120G Wool',	'Yellow',	'Wool');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0010',	'8807',	'Black',	'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0011',	'Ribbon',	'Grey',	'Ribbon');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0012',	'90% Duck Down',	'Grey',	'Down Feather');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0013',	'60G Wool',	'Yellow',	'Wool');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0014',	'8807',	'Grey',	'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0015',	'60G Faux Wool',	'Yellow',	'Faux Wool');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0016',	'Tag 2014/PE',	'Transparent',	'Tags');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0017',	'String',	'White',	'Woolen String');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0018',	'2015 Tag 350G White Card',	'Red on White',	'Tags');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0019',	'8807',	'Pink',	'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0020',	'120G Faux Wool',	'Yellow',	'Faux Wool');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0021',	'8807',	'Red',	'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0022',	'240T PONGEE',	'Black',	'Outer Material');

INSERT INTO Materials(MaterialID, MaterialName, Colour, MaterialType)
VALUES ('GFWL0023',	'Rubber Band',	'Black',	'Rubber Band');

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0029',	'57*43*34 Packaging Label',	'HxW 14CM x 12CM',	'Black on White', 'Ea', 3.07);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0030',	'2014 S 155/80A Womens Down Jacket',	'LxB 6CMx2.5CM',	'White on Grey', 'Ea', 3.09);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0031', '2014 M 160/84A Womens Down Jacket', 'LxB 6CMx2.5CM', 'White on Grey', 'Ea', 3.09);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0032',	'2014 XL 170/92A Womens Down Jacket', 'LxB 6CMx2.5CM', 'White on Grey', 'Ea', 3.09);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0033',	'2014 XXL 175/96A Womens Down Jacket', 'LxB 6CMx2.5CM', 'White on Grey', 'Ea', 3.09);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0034',	'15 Year Packaging No. 3',  '57cmx46cm', 'Grey', 'Ea', 3.59);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0035',	'5# Zip',  '75CM', 'Black', 'Ea', 3.59);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0036',	'5# Zip',  '75CM', 'Red', 'Ea', 5.76);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0038',	'5# Zip',  '76CM', 'Red', 'Ea', 5.76);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0040',	'5# Zip',  '77CM', 'Red', 'Ea', 5.77);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0051',	'5# Zip',  '78CM', 'Red', 'Ea', 5.80);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0056',	'Cardboard Box',  '60CMx45CMx41CM', 'Yellow', 'Ea', 10.80);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0057',	'2017 Certification S 155/80A',  '10CMx4CM', 'Green', 'Ea', 3.06);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0058',	'2017 Certification M 160/84A',  '10CMx4CM', 'Orange', 'Ea', 3.06);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0059',	'2017 Certification L 165/88A',  '10CMx4CM', 'Red', 'Ea', 3.06);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0060',	'2017 Certification XL 170/92A',  '10CMx4CM', 'Yellow', 'Ea', 3.06);

INSERT INTO Materials(MaterialID, MaterialName, Specification, Colour, Unit, UnitCost)
VALUES ('GFWL0061',	'2017 Certification XXL 175/96A',  '10CMx4CM', 'Blue', 'Ea', 3.06);

-- BILL OF MATERIALS
INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (1, '00106121', 'GFWL0003', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (21, '00106122', 'GFWL0003', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (22, '00106123', 'GFWL0003', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (23, '00106124', 'GFWL0003', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (24, '00106125', 'GFWL0003', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (2, '00106121', 'GFWL0004', 'CLIENT', 0.94);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (3, '00106121', 'GFWL0005', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (4, '00106121', 'GFWL0007', 'CLIENT', 1.86);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (5, '00106121', 'GFWL0008', 'FACTORY', 2.99);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (6, '00106121', 'GFWL0009', 'FACTORY', 0.03);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (8, '00106121', 'GFWL0010', 'CLIENT', 2.02);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (7, '00106121', 'GFWL0011', 'CLIENT', 0.08);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (9, '00106121', 'GFWL0012', 'CLIENT', 106);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (10, '00106121', 'GFWL0013', 'FACTORY', 0.03);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (11, '00106121', 'GFWL0015', 'FACTORY', 0.15);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (12, '00106121', 'GFWL0016', 'CLIENT', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (13, '00106121', 'GFWL0017', 'CLIENT', 1.63);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (14, '00106121', 'GFWL0018', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (15, '00106121', 'GFWL0020', 'FACTORY', 0.3);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (16, '00106121', 'GFWL0023', 'CLIENT', 1.86);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (17, '00106121', 'GFWL0029', 'CLIENT', 0.063);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (18, '00106121', 'GFWL0030', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (19, '00106121', 'GFWL0034', 'FACTORY', 1);

INSERT INTO BillOfMaterials(BOMID, SpecificationID, MaterialID, ProvidedBy, AmountToUse)
VALUES (20, '00106121', 'GFWL0035', 'CLIENT', 1);

-- PARTIES
INSERT INTO Parties(PartyID, PartyType, PartyName, ContactNo, ContactAddress)
VALUES (1, 'SELF', 'GAOFAN', '123', 'ABC ROAD 123');

INSERT INTO Parties(PartyID, PartyType, PartyName, ContactNo, ContactAddress)
VALUES (2, 'VENDOR', 'VENDOR ONE', '2349823', 'DEF ROAD 456');

INSERT INTO Parties(PartyID, PartyType, PartyName, ContactNo, ContactAddress)
VALUES (3, 'VENDOR', 'VENDOR TWO', '203984', 'GHI ROAD 789');

-- CONTRACTS
INSERT INTO Contracts(ContractID, TaxRate, Party1, Party2, DateOfContract)
VALUES (101, 17.0, 1, 2, '2017-11-21 00:00:00');

-- PRODUCTION BATCH
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (1, '2017-09-07 00:00:00', 'Check', 1);
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (2, '2017-09-08 00:00:00', 'Sampling', 1);
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (3, '2017-09-10 00:00:00', 'Contract', 1);
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (4, '2017-09-12 00:00:00', 'Accounting', 1);

INSERT INTO ProductionBatches(ProductionBatchID, ProductID, ColourID, Quantity, SalePrice, CostPrice, 
DateInInventory, DateOnShelf, StartProdDate, EndProdDate, CompletionDate, AmtArrived, 
CheckedTSID, SamplingTSID, ContractTSID, AccountingTSID)
VALUES (1, '001', '0612', 160, 859, 180.75, 
'2017-09-15 00:00:00', '2017-10-02 00:00:00', '2017-08-09 00:00:00', 
'2017-08-17 00:00:00', '2017-09-13 00:00:00', 162,
1, 2, 3, 4);

-- PURCHASE LIST
INSERT INTO PurchaseLists(PurchaseID, ContractID, SpecificationID, Quantity, ContractPrice, TotalCost, DateOfCompletion)
VALUES (1, 101, '00106121', 30, 160.5, 4815, '2017-08-20 00:00:00');

INSERT INTO PurchaseLists(PurchaseID, ContractID, SpecificationID, Quantity, ContractPrice, TotalCost, DateOfCompletion)
VALUES (2, 101, '00106122', 50, 160.5, 8025, '2017-08-20 00:00:00');

INSERT INTO PurchaseLists(PurchaseID, ContractID, SpecificationID, Quantity, ContractPrice, TotalCost, DateOfCompletion)
VALUES (3, 101, '00106123', 46, 160.5, 7383, '2017-08-20 00:00:00');

INSERT INTO PurchaseLists(PurchaseID, ContractID, SpecificationID, Quantity, ContractPrice, TotalCost, DateOfCompletion)
VALUES (4, 101, '00106124', 26, 160.5, 4173, '2017-08-20 00:00:00');

INSERT INTO PurchaseLists(PurchaseID, ContractID, SpecificationID, Quantity, ContractPrice, TotalCost, DateOfCompletion)
VALUES (5, 101, '00106125', 18, 160.5, 2889, '2017-08-20 00:00:00');

-- MANUFACTURING PLANS
INSERT INTO ManufacturingPlans(MfgPlanID, SpecificationID, ProductionBatchID, PurchaseID)
VALUES (1, '00106121', 1, 1);

INSERT INTO ManufacturingPlans(MfgPlanID, SpecificationID, ProductionBatchID, PurchaseID)
VALUES (2, '00106122', 1, 2);

INSERT INTO ManufacturingPlans(MfgPlanID, SpecificationID, ProductionBatchID, PurchaseID)
VALUES (3, '00106123', 1, 3);

INSERT INTO ManufacturingPlans(MfgPlanID, SpecificationID, ProductionBatchID, PurchaseID)
VALUES (4, '00106124', 1, 4);

INSERT INTO ManufacturingPlans(MfgPlanID, SpecificationID, ProductionBatchID, PurchaseID)
VALUES (5, '00106125', 1, 5);

-- STOCK RECEIVING
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (5, '2017-09-04 00:00:00', 'Checking', 1);

INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (6, '2017-09-04 00:00:00', 'Contract Signing', 1);

INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (7, '2017-09-04 00:00:00', 'Receiving', 1);

INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (8, '2017-09-04 00:00:00', 'Accepted', 1);

INSERT INTO StockReceiving(StockReceivingID, MfgPlanID, ProductionBatchID,
BatchStatus, ReceivedAmt, CheckedTimeTSID, ContractSignTSID, ReceivingTSID, AcceptedTimeTSID)
VALUES (1, 1, 1, 'COMPLETE', 31, 5, 6, 7, 8);

-- ORDER LISTS
INSERT INTO ActionTimeStamps(TimeStampID, TimeStampDate, Purpose, EmployeeID) 
VALUES (9, '2017-10-12 00:00:00', 'ProcessedOrder', 3);

INSERT INTO OrdersLists(OrderID, OrderStatus, OrderType, Returned, ProcessedTSID)
VALUES (1, 'DELIVERED', 'PURCHASE', 0, 9);

-- MATERIAL PURCHASES
INSERT INTO MaterialPurchases(MaterialPurchID, MaterialID, OrderQuantity, ReceivedQuantity,
PurchaseDate, ExpectedArrDate, DateInInventory)
VALUES (1, 'GFWL0035', 66, 66, '2017-07-23 00:00:00', '2017-08-16 00:00:00', '2017-08-16 00:00:00');

-- MATERIAL CONSUMPTIONS
INSERT INTO MaterialConsumptions(MaterialConsID, ProductionBatchID, MaterialID, ActualUsage, TimeOfRecord)
VALUES(1, 1, 'GFWL0003', 40, '2017-07-02 00:00:00');

COMMIT;