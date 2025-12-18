

select * from Employees
-- 1) How do you select employees who work in the 'IT' department and have salary greater than equal 75,000?
select * from Employees where department in ('IT') and salary >= 75000

-- 2) How do you find employees who work in the 'HR' department or have salary less than 60000?
select * from Employees where Department in ('HR') or Salary <= 60000

-- 3) How do you select the employees who do not work in the 'Finace' Department?
select * from Employees where department not in ('Finance')
--or
select * from Employees where not Department = 'Finance' 

-- 4) How do you find employees whose salary is between 60000 and 70000 and who work in the 'Finance' department
select * from Employees where Salary between 60000 and 70000 and Department in ('Finance')

-- 5) How do you find employees who work in the 'IT' department and do not have a salry greater than 80000?
select * from Employees where Department = 'IT' and not salary > 80000
--or
select * from Employees where Department = 'IT' and salary <= 80000
--or 
select * from Employees where Department in ('IT') and not salary > 80000

-- 6) How do you find employees who work in the 'HR' or 'Finance' department and have a salary greater than 65000?
select * from Employees where (Department in ('HR') or Department in ('Finance')) and salary >= 65000 order by Salary

-- 7) How do you select the employee whose last name starts with 'D' and do not work in the 'HR' department?
select * from Employees where LastName like 'd%' and not department = 'HR'
-- or
select * from Employees where LastName like 'd%' and not department in ('HR')

-- 8) How do you find employees who do not work in the 'IT' department and have a salary greater than 70000?
select * from Employees where not Department in ('IT') and Salary >70000

-- 9) How do you select employees who  work in the 'IT' department and have a salary greater than 75000 or have the first name 'Laura'
select * from Employees where Department in ('IT') and (Salary >75000 or FirstName = 'Laura')

-- 10) How do you find employees who do not work in the 'HR' or 'IT' department?
select * from Employees where not (Department in ('HR') or Department in ('IT'))
-- or
select * from Employees where Department not in ('HR', 'IT')

