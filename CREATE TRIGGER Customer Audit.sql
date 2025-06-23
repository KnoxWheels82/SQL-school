CREATE TRIGGER dbo.trg_customer_audit
ON dbo.Customer
AFTER INSERT, DELETE
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO
		dbo.Customer_audits
			(
				CustId, FirstName, LastName, City,
				Country, CellPhone, Updated_at,
				Operation
			)
	SELECT
		i.CustId, FirstName, LastName, City,
		Country, i.CellPhone, GETDATE(),
		'INS'
FROM
	inserted AS i
UNION ALL
SELECT
	d.CustId, FirstName, LastName, City,
	Country, d.CellPhone, GETDATE(),
	'DEL'
FROM
	deleted AS d

END