-- CAST
SELECT CAST (ProductID AS varchar (5)) + ': ' + Name AS ProductName
FROM SalesLT.Product;

-- CONVERT
SELECT CONVERT (varchar (5), ProductID) + ': ' + Name AS ProductName
FROM SalesLT.Product;

/*
The advantage of convert, as opposed to cast, is that it is 
useful when you work with dates.
*/

-- Convert dates
SELECT SellStartDate,
		CONVERT (nvarchar(30), SellStartDate) AS ConvertedDate,
		CONVERT (nvarchar(30), SellStartDate, 126) AS ISO8601FormatDate
FROM SalesLT.Product;

-- Try to Cast
SELECT Name, TRY_CAST (Size AS Integer) AS NumericSize
FROM SalesLT.Product; 

