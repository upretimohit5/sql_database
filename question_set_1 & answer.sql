

-- 1) How do you select all the columns from the employee table?
select * from employees

-- 2) How do you select only the firstname and lastname columns from the employees table?
select firstName, lastName from employees

-- 3) How do find all employees who work in the 'IT' department?
select * from employees where department = 'IT'
--or
select * from employees where department like 'IT'

-- 3) How do find all employees who work in the 'HR' department?
select * from employees where department = 'HR'

-- 3) How do find all employees who work in the 'Finance' department?
select * from employees where department = 'Finance'

-- 4) How do you find employees with salary greater than 70,000?
select * from employees where salary > 70000

-- 5) How do you sort the result by last name in ascending order?
select * from employees order by lastName asc
--or
select * from employees order by lastName

-- 6) How do you selct distinct department from the Employees table?
select distinct department from employees

-- 7) How do you count the number of employees in each department?
select department, count(*) [number of Employees] from employees group by department
--or
select department, count(employeeID) [Number of Employee] from Employees group by Department

-- 8) How do you find the maximum salary in the employees table?
select max(salary) [Maximum Salary] from employees

-- 9) How do you find the average salary of employees in the 'finance' department?
select avg(salary) [finance average] from Employees where department like 'finance'

-- 10) How do you select employees whose last naem starts with 'm'?
select * from Employees where LastName like 'm%'