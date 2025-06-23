/**list the table with or without a FK. 1=T and 0=F**/
SELECT name AS Table_Name
FROM sys.tables
WHERE OBJECTPROPERTY(OBJECT_ID, 'TableHasForeignKey') = 1
ORDER BY Table_Name