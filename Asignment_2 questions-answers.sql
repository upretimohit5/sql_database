

select * from employees
select avg(salary) from employees
select min(hiredate) from employees
-- Questions for this assignment

-- 1: Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.
select firstname,lastname
from employees
where salary >(select avg(salary) from employees)

-- 2: Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.
select firstname,lastname,departmentID
from employees
where hiredate> ( select min(hiredate) from employees)

-- 3: Write a SQL query to find the details of the employee(s) with the highest salary.
select * from employees
where salary = (select max(salary) from employees)

-- 4: Write a SQL query to find the names of employees who work in the same department as 'John Smith'.
select FirstName, LastName from Employees
where departmentID = 101
--or
SELECT FirstName, LastName

FROM Employees

WHERE DepartmentID = (SELECT DepartmentID FROM Employees WHERE FirstName = 'John' AND LastName = 'Smith');

-- 5: Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.
SELECT FirstName, LastName

FROM Employees

WHERE DepartmentID NOT IN (

    SELECT TOP 1 DepartmentID

    FROM Employees

    GROUP BY DepartmentID

    ORDER BY AVG(Salary) DESC

);