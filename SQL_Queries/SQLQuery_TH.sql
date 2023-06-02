

SELECT  OD.Quantity, 
        OD.UnitPrice, 
		OD.Discount, 
		O.OrderDate, 
		E.EmployeeID, 
		C.CustomerID, 
		P.ProductID, 
		S.SupplierID, 
		CA.CategoryID



 FROM dbo.Orders O 
      INNER JOIN 
	  dbo.[Order Details] OD 
	  ON O.OrderID = OD.OrderID
	  INNER JOIN 
	  dbo.Employees E 
	  ON O.EmployeeID = E.EmployeeID
	  INNER JOIN 
	  dbo.Customers C 
	  ON C.CustomerID = O.CustomerID
	  INNER JOIN 
	  dbo.Products P 
	  ON P.ProductID = OD.ProductID
	  INNER JOIN 
	  dbo.Suppliers S 
	  ON P.SupplierID = S.SupplierID
	  INNER JOIN 
	  dbo.Categories CA 
	  ON CA.CategoryID = P.CategoryID