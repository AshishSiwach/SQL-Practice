use "NamsateSQL";

-- ASSIGNMENT QUESTION 1
SELECT Customer_Name
FROM Orders
WHERE Customer_Name LIKE '_a_d%';

-- ASSIGNMENT QUESTION 2
SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2020-12-01' AND '2020-12-31';

-- ASSIGNMENT QUESTION 3
SELECT *
FROM Orders
WHERE Ship_Mode NOT IN ('First Class', 'Standard Class') AND Ship_Date > '2020-11-30'
ORDER BY Ship_Date ASC;

-- ASSIGNMENT QUESTION 4
SELECT * 
FROM Orders
WHERE Customer_Name NOT LIKE 'A%n';

-- ASSIGNMENT QUESTION 5
SELECT *
FROM Orders
WHERE Profit < 0;

-- ASSIGNMENT QUESTION 6
SELECT *
FROM Orders
WHERE Quantity < 3 OR Profit = 0;

--ASSIGNMENT QUESTION 7
SELECT *
FROM Orders
WHERE Region = 'South' AND Discount != 0;

-- ASSIGNMENT QUESTION 8
SELECT TOP 5*
FROM Orders
WHERE Category = 'Furniture'
ORDER BY Sales DESC;

-- ASSIGNMENT QUESTION 9
SELECT *
FROM Orders
WHERE Category IN ('Technology', 'Furniture') AND Order_Date BETWEEN '2020-01-01' AND '2020-12-31';

-- ASSIGNMENT QUESTION 10
SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2020-01-01' AND '2020-12-31' AND Ship_Date BETWEEN '2021-01-01' AND '2021-12-31';