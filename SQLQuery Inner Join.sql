SELECT *
FROM Customer
INNER JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId