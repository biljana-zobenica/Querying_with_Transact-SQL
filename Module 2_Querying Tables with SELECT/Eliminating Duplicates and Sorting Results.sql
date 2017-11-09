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

