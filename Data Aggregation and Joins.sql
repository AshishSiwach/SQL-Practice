USE "NamsateSQL";

SELECT * FROM returns;

-- ASSIGNMENT QUESTION 1
SELECT o.Region, count(distinct o.Order_ID)
FROM Orders o
INNER JOIN returns r ON o.Order_ID = r.Order_iD
GROUP BY o.Region;

-- ASSIGNMENT QUESTION 2
SELECT o.Category, SUM(Sales) AS Category_Sales
FROM Orders o
LEFT JOIN returns r ON o.Order_ID = r.Order_iD
GROUP BY o.Category
ORDER BY Category_Sales;

-- ASSIGNMENT QUESTION 3
-- create table employee
CREATE TABLE employee(
emp_id int,
emp_name varchar(20),
dept_id int,
salary int, 
manager_id int,
emp_age int);

insert into employee values(1,'Ankit',100,10000,4,39);
insert into employee values(2,'Mohit',100,15000,5,48);
insert into employee values(3,'Vikas',100,10000,4,37);
insert into employee values(4,'Rohit',100,5000,2,16);
insert into employee values(5,'Mudit',200,12000,6,55);
insert into employee values(6,'Agam',200,12000,2,14);
insert into employee values(7,'Sanjay',200,9000,2,13);
insert into employee values(8,'Ashish',200,5000,2,12);
insert into employee values(9,'Mukesh',300,6000,6,51);
insert into employee values(10,'Rakesh',500,7000,6,50);

select * from employee;

-- create table dept
CREATE TABLE dept(
dept_id int,
dept_name varchar(20)
);

insert into dept values(100,'Analytics');
insert into dept values(200,'IT');
insert into dept values(300,'HR');
insert into dept values(400,'Text Analytics');

select * from dept;

SELECT d.dept_name, AVG(e.salary) AS AVG_SALARY
FROM employee e
INNER JOIN dept d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY AVG_SALARY DESC;

-- ASSIGNMENT QUESTION 4
SELECT d.dept_name
FROM employee e
INNER JOIN dept d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(DISTINCT e.emp_id) = COUNT(DISTINCT e.salary)
;

-- ASSIGNMENT QUESTION 5
SELECT o.Sub_Category
FROM Orders o
INNER JOIN returns r ON o.Order_ID = r.Order_iD
GROUP BY o.Sub_Category
HAVING COUNT(DISTINCT r.Return_Reason) = 3;

-- ASSIGNMENT QUESTION 6
SELECT o.City
FROM Orders o
LEFT JOIN returns r ON o.Order_ID = r.Order_iD
WHERE r.Return_Reason IS NULL AND o.City IS NOT NULL
GROUP BY o.City;

-- ASSIGNMENT QUESTION 7
-- TOP 3 SUB CATEGORIES, TOTAL SALES, ORDERS RETURNED, EAST REGION
SELECT TOP 3 o.Sub_Category, SUM(o.Sales) AS RETURN_SALES
FROM Orders o
INNER JOIN returns r ON o.Order_ID = r.Order_iD
WHERE o.Region = 'East'
GROUP BY o.Sub_Category
ORDER BY RETURN_SALES DESC;

-- ASSIGNMENT QUESTION 8
-- DEP NAME, NO EMPLOYEE  
SELECT d.dept_name
FROM dept d
LEFT JOIN employee e ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

-- ASSIGNMENT QUESTION 9
-- EMP NAME, DEPT ID, NOT DEPT TABLE
SELECT e.emp_name
FROM employee e
LEFT JOIN dept d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;




