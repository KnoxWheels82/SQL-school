/*==============================================================*/
/* Table: SalesCustomer */
/*==============================================================*/
CREATE TABLE SalesCustomer (
 CustomerId		int,
 SalesRepId		int,
 CONSTRAINT PK_SalesCust PRIMARY KEY (SalesRepID, CustomerID)
)
GO