/**rebuild all the indexes in a table**/
ALTER INDEX ALL ON dbo.customer
REBUILD WITH (FILLFACTOR = 80, SORT_IN_TEMPDB = ON,
STATISTICS_NORECOMPUTE = ON)