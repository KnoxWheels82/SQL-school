CREATE VIEW v_Cust_Order_Products_April2019 AS
SELECT Customer.FirstName + ' ' + Customer.LastName 'Name',
        CustomerOrder.InvoiceNumber 'Invoice',
        CONVERT(nvarchar,CustomerOrder.OrderDate, 101)'Order Date',
        CustomerOrder.TotalAmount 'Total',Product.ProductName
FROM Customer
JOIN CustomerOrder
        ON Customer.CustId = CustomerOrder.CustomerId
JOIN OrderItem
        ON CustomerOrder.OrderId = OrderItem.OrderId
JOIN Product
        ON OrderItem.ProductId = Product.ProductID
WHERE CustomerOrder.OrderDate > '03/31/2019'
        AND CustomerOrder.OrderDate < '05/01/2019'