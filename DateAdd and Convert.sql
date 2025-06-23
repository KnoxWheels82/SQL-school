SELECT c.FirstName, c.LastName,
              o.TotalAmount, o.InvoiceNumber, o.OrderDate,
              DATEADD(day,30, o.OrderDate) 'Payment Due'
FROM Customer c
JOIN CustomerOrder o
ON c.CustId = o.CustomerId
 
SELECT c.FirstName, c.LastName,
              o.TotalAmount, o.InvoiceNumber,
              CONVERT(nvarchar,o.OrderDate, 101) 'Order Date',
              CONVERT(nvarchar,(DATEADD(day,30, o.OrderDate)),101) 'Payment Due'
FROM Customer c
JOIN CustomerOrder o
ON c.CustId = o.CustomerId