SELECT
	COUNT(CustDemoID) 'Female Customers',
	AVG(HouseholdSize) 'Avg Household Size',
	MAX(HouseholdSize) 'Max Household Size',
	MIN(HouseholdSize) 'Min Household Size',
	AVG(HouseholdIncome) 'Avg Household Income',
	MAX(HouseholdIncome) 'Max Household Income',
	MIN(HouseholdIncome) 'Min Household Income'
FROM Demographics
WHERE Gender = 'F'