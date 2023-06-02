CREATE TABLE [Fac_Orders_DM] (
    [Quantity] smallint,
    [UnitPrice] money,
    [Discount] real,
    [OrderDate] datetime,
    [EmployeeID] int,
    [CustomerID] nvarchar(5),
    [ProductID] int,
    [SupplierID] int,
    [CategoryID] int,
    [BI_Control_Extraction] datetime, 
Constraint fk1 FOREIGN KEY ("CategoryID")
References Dim_Categories("CategoryID"), 
Constraint fk2 FOREIGN KEY ("EmployeeID")
References Dim_Employee("EmployeeID"), 
Constraint fk3 FOREIGN KEY ("CustomerID")
References Dim_Customer("CustomerID"), 
Constraint fk4 FOREIGN KEY ("SupplierID")
References Dim_Supplier("SupplierID"), 
Constraint fk5 FOREIGN KEY ("ProductID")
References Dim_Product("ProductID") 
)

