-- This is a single-line comment
/* This is for multi-line comments */

-- "Hello world" in SQL

SELECT 'Hello Graeme';

-- Retrieving all columns

SELECT * FROM SalesLT.Product;

-- Retrieving specific columns + using AS for aliases

SELECT ProductID, Name, ListPrice, StandardCost AS Cost, ListPrice - StandardCost AS Margin, Color
FROM  [SalesLT].[Product];

/* AS can be omitted, but don't forget to put "," between statements */

SELECT ProductID, Name, Color, Size, Color + Size AS Style
FROM SalesLT.Product

/* NULL means a non-known value, not a blank cell.
The Color + Size is possible because both columns consist of text values. */
