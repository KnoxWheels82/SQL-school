CREATE TABLE dbo.Customer_audits	(
	change_id INT IDENTITY Primary Key,
	CustId INT NOT NULL,
	FirstName nvarchar(40) NOT NULL,
	LastName nvarchar(40) NOT NULL,
	City nvarchar(40) NOT NULL,
	Country nvarchar(40) NOT NULL,
	CellPhone nvarchar(20) NOT NULL,
	Updated_at datetime NOT NULL,
	Operation char(3) NOT NULL,
	CHECK(Operation = 'INS' or Operation = 'DEL'))