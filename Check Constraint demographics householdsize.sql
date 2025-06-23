ALTER TABLE Demographics
ADD CONSTRAINT ch_Householdsize
CHECK (HouseholdSize > 0)