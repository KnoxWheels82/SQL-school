SELECT *
FROM Customer
LEFT JOIN CustomerOrder
ON Customer.CustId = CustomerOrder.CustomerId
WHERE CustomerOrder.CustomerId IS NULL