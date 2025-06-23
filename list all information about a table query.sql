/**list all the information abou the product table**/
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE INFORMATION_SCHEMA.COLUMNS.TABLE_NAME='Product'