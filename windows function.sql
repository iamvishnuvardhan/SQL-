problems
======================================================================================================================================================================================

1.Ranking Employees by Salary:														
Given an "Employees" table with columns (EmployeeID, Name, Salary), write a SQL query to rank employees based on their salary in descending order,
using the RANK() window function. If employees have the same salary, give them the same rank.														

SELECT 
    EmployeeID, 
    Name, 
    Salary,
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM 
    Employees;
	
======================================================================================================================================================================================
2.Running Total of Sales:											
Given a "Sales" table with columns (TransactionID, Date, Amount), 
write a SQL query to calculate the running total of sales for each date, using the SUM() window function with the ORDER BY clause.											

SELECT 
    TransactionID,
    Date,
    Amount,
    SUM(Amount) OVER (ORDER BY Date) AS RunningTotal
FROM 
    Sales
ORDER BY 
    Date;

======================================================================================================================================================================================
3.Finding the Top N Products in Each Category:												
Given a "Products" table with columns 
(ProductID, ProductName, Category, Sales), 
write a SQL query to retrieve the top N products with the highest sales in each category, using the ROW_NUMBER() window function.

SELECT 
    ProductID,
    ProductName,
    Category,
    Sales
FROM (
    SELECT 
        ProductID,
        ProductName,
        Category,
        Sales,
        ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Sales DESC) AS RowNum
    FROM 
        Products
) RankedProducts
WHERE 
    RowNum <= N;

======================================================================================================================================================================================
4.Calculating the Difference in Revenue between Years:										
Given a "Revenue" table with columns (Year, Revenue), 
write a SQL query to calculate the year-on-year revenue growth (or decline) using the LAG() or LEAD() window function.

SELECT 
    Year,
    Revenue,
    LAG(Revenue) OVER (ORDER BY Year) AS PreviousYearRevenue,
    (Revenue - LAG(Revenue) OVER (ORDER BY Year)) / LAG(Revenue) OVER (ORDER BY Year) * 100 AS RevenueGrowth
FROM 
    Revenue;
	
======================================================================================================================================================================================
5.Calculating Average Monthly Sales:													
Given a "Sales" table with columns (TransactionID, Date, Amount), write a SQL query to calculate the average monthly sales for each product,
using the AVG() window function along with the PARTITION BY and GROUP BY clauses.													

SELECT 
    ProductID,
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    AVG(Amount) OVER (PARTITION BY ProductID, EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date)) AS AvgMonthlySales
FROM 
    Sales
GROUP BY 
    ProductID, EXTRACT(YEAR FROM Date), EXTRACT(MONTH FROM Date)
ORDER BY 
    ProductID, Year, Month;

======================================================================================================================================================================================
6.Query to get the top 5 employee salary from table				
Given a "employee" table with column (emp_id, name, department,salary)				

SELECT emp_id, name, department, salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

======================================================================================================================================================================================



