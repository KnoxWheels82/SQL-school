SELECT
	MIN(HouseholdSize) 'min household size (F)',
	MIN(HouseholdIncome) 'min household income (F)',
	MAX(HouseholdSize) 'Max household size (F)',
	MAX(HouseholdIncome) 'Max household income (F)'
FROM Demographics
WHERE Gender = 'F'