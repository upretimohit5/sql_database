

select * from Employees

-- 2nd Highest salary
select max(salary) [2nd Highest Salary] from employees where salary <
(select max(salary) from Employees)

-- 3rd Highest salary
select max(salary) [3rd Highest Salary] from employees where Salary < (select max(salary) from employees where salary <
(select max(salary) from Employees))

-- Using CTE(Common Table Function) find the highest salary

-- 2nd highest salary

with cte as (
select *,DENSE_RANK() over( order by salary desc) [DR] from Employees
)

select salary [2nd Highest Salary] from cte where DR=2

-- 3rd highest salary

with cte as (
select *,DENSE_RANK() over( order by salary desc) [DR] from Employees
)

select salary [3rd Highest Salary] from cte where DR=3

-- Subquery with dense rank func to find ou the highest salary
select Salary as [2nd Highest Salary] from
(select *,DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR=2
or( -- full detail of that emoployee)
select * from
(select *,DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR=2

-- Sub Query

-- Another way to 2nd Highest Salary
select top 1 salary [2nd Highest Salary] from (select distinct top 2 salary from employees order by Salary desc) n
order by Salary asc

-- 3rd Highest Salary
select top 1 salary [3rd Highest Salalry] from (select top 3 salary from Employees order by salary desc) n
order by salary asc





