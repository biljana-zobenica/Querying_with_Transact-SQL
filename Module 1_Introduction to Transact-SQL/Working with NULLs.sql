/* 
NULL Functions:
1. ISNULL (column/variable, value) returns value if the column or variable is NULL
			*	if it is NULL, return value
2. NULLIF (column/variable, value) returns NULL if the column or variable is value
			*	make it NULL if the variable is value
3. COALESCE (column/variable1, column/variable2,...) returns the value of the first non-NULL column or variable in the list
*/

-- NULL numbers = 0
-- here we want to change all NULL cells with the value of zero
SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS NumericSize
FROM SalesLT.Product;

-- NULL strings = blank string
SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails
FROM SalesLT.Product;

-- Multi color = NULL 
SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
FROM SalesLT.Product;

-- find first non-null date
SELECT Name, COALESCE(DiscontinuedDate, SellEndDate, SellStartDate) AS LastActivity
FROM SalesLT.Product;

-- Searched case
SELECT Name,
		CASE
			WHEN SellEndDate IS NULL THEN 'On Sale'
			ELSE 'Discontinued'
		END AS SalesStatus
FROM SalesLT.Product;

-- Simple case
SELECT Name,
		CASE Size
			WHEN 'S' THEN 'Small'
			WHEN 'M' THEN 'Medium'
			WHEN 'L' THEN 'Large'
			WHEN 'XL' THEN 'Extra-Large'
			ELSE ISNULL(Size, 'n/a')
		END AS ProductSize
FROM SalesLT.Product;