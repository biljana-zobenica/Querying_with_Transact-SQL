-- Retrieving Customer Data
-- select all columns
-- from the SalesLT.Customer table

SELECT * FROM SalesLT.Customer

-- Create List of Customer Contacts
-- select the Title, FirstName, MiddleName, LastName and Suffix columns
-- from the Customer table

SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;

-- Create List of Customer Contacts (using aliases)

SELECT SalesPerson, Title + ' ' + LastName AS CustomerName, Phone
FROM SalesLT.Customer;

-- Retrieving Customer and Sales Data
-- cast the CustomerID column to a VARCHAR and concatenate with the CompanyName column

SELECT CAST (CustomerID AS VARCHAR) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;

-- Retrieving Customer and Sales Data

SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	   CONVERT(NVARCHAR(30), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader;

-- use ISNULL to check for middle names and concatenate with FirstName and LastName

SELECT FirstName + ' ' + ISNULL(MiddleName + ' ', '') + LastName
AS CustomerName
FROM SalesLT.Customer;

-- select the CustomerID, and use COALESCE with EmailAddress and Phone columns

SELECT CustomerID, COALESCE(EmailAddress, Phone) AS PrimaryContact
FROM SalesLT.Customer;

-- Retrieving Shipping Status (using case)

SELECT SalesOrderID, OrderDate,
  CASE
    WHEN ShipDate IS NULL THEN 'Awaiting Shipment'
    ELSE 'Shipped'
  END AS ShippingStatus
FROM SalesLT.SalesOrderHeader;