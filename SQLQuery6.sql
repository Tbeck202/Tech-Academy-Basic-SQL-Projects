USE AdventureWorks2014
GO

CREATE PROCEDURE dbo.GetEmailByFirstNameAndCity @FirstName nvarchar(30), @City nvarchar(30)
AS
SELECT
	a1.FirstName, a2.City, a3.EmailAddress
	FROM
	Person.Person a1
	INNER JOIN Person.Address a2 ON a2.AddressID = a1.BusinessEntityID
	INNER JOIN Person.EmailAddress a3 ON EmailAddressID = a1.BusinessEntityID
	WHERE FirstName = @FirstName
	AND City = @City
GO

SELECT *

EXEC dbo.GetEmailByFirstNameAndCity @FirstName = 'Kim', @City = 'Renton'
	