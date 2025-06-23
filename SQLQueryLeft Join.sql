SELECT *
FROM Customer
LEFT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId