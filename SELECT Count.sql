SELECT Count(CustID) 'Primary Address Orders'
FROM ShippingInfo
WHERE PrimaryAdd = 'Y'