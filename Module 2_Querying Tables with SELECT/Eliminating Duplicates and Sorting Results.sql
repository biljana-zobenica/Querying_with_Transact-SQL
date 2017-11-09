/*
	SELECT ALL - default behavior includes duplicates
	SELECT DISTINCT - removes duplicates
	ORDER BY - sort results by one or more columns

	* aliases created in SELECT clause are visible to ORDER BY
	* you can order by columns in the source that are not included in the SELECT clause
	* you can specify ASC or DESC (ASC is the default)
	
	Example:

	SELECT ProductCategory AS Category, ProductName
	FROM Production.Product
	ORDER BY Category, Price DESC;

*/

-- Display a list of product colors with the word 'None' if the value is null
SELECT ISNULL (Color, 'None') AS Color 
FROM SalesLT.Product;

-- Display a list of product colors + using SELECT DISTINCT
SELECT DISTINCT ISNULL (Color, 'None') AS Color 
FROM SalesLT.Product;

-- Display a list of product colors (sorted by color)
SELECT DISTINCT ISNULL (Color, 'None') AS Color 
FROM SalesLT.Product 
ORDER BY Color;

-- Display a list of product colors with the word 'None' if the value is null
-- and a dash if the size is null sorted by color
SELECT DISTINCT ISNULL (Color, 'None') AS Color, ISNULL (Size, '-') AS Size
FROM SalesLT.Product
ORDER BY Color;

-- Display the top 100 products by list price
SELECT TOP 100 [Name], ListPrice 
FROM SalesLT.Product 
ORDER BY ListPrice DESC;

-- Display the first ten products by product number
SELECT [Name], ListPrice 
FROM SalesLT.Product
ORDER BY ProductNumber 
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

-- Display the next ten products by product number
SELECT [Name], ListPrice 
FROM SalesLT.Product
ORDER BY ProductNumber 
OFFSET 10 ROWS FETCH FIRST 10 ROW ONLY;
-- It is the same: rows = row and first = next

