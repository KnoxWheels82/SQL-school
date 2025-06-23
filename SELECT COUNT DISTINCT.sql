SELECT Count(CustID) 'Other Orders'
FROM ShippingInfo
WHERE PrimaryAdd = 'N'

SELECT Count(DISTINCT CustID) '# of Customer Other Orders'
FROM ShippingInfo
WHERE PrimaryAdd = 'N'