ALTER TABLE Demographics
ADD CONSTRAINT ch_HouseholdIncome
CHECK (Householdincome > 0)