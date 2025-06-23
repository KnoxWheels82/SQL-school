SELECT *
FROM Customer
RIGHT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId