

select * from EmployeeSales

-- Assignment 1 questions

-- Questions for this assignment

-- 1: Write a query to calculate the total sales amount for each department in the EmployeeSales table.
select Department,sum(SaleAmount) [Total Sales By Department]
from EmployeeSales
group by Department

-- 2: Write a query to count the number of sales made by each employee.
select EmployeeID,count(saleAmount) [Sales By Each Employee]
from EmployeeSales
group by EmployeeID

-- 3: Write a query to calculate the average sale amount for each department.
select Department,avg(saleAmount) [AVG Sales By Department]
from EmployeeSales
group by Department

-- 4: Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
select EmployeeID,count(SaleAmount) [Sales By Employee]
from EmployeeSales
group by EmployeeID
having count(saleAmount)>1

-- 5:Write a query to find the total sales for each month in 2023.
select month(SaleDate) as Month,sum(SaleAmount) as TotalSale
from EmployeeSales
where year(saledate) = 2023
group by month(saledate)