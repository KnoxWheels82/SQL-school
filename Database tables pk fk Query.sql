/**list the database tables, PKs and FKs **/
SELECT DISTINCT
 Constraint_Name, Table_Schema, Table_Name
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE