USE [DM_Northwid]
GO


CREATE   VIEW [dbo].[Fact_Orders]
AS
SELECT Dim_OrderDetail.UnitPrice, 
          Dim_OrderDetail.Quantity, 
		  Dim_OrderDetail.Discount, 
		   Dim_Order.OrderDate, 
		  Dim_OrderDetail.BI_Control_Extraction 
		 
FROM     Dim_Order 
          FULL OUTER JOIN
           Dim_OrderDetail 
		   ON Dim_Order.OrderID = Dim_OrderDetail.OrderID
GO

