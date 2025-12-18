

-- Order of Execution

select * from EmployeeSalaries

select distinct top 1 Department, avg(salary) [Average Salary] from EmployeeSalaries
where Salary>50000
group by Department
having AVG(salary) > 55000
order by Department

-- this is just for understanding
select department, avg(salary) [Average salary] from Employeesalaries
where Salary >50000
group by Department

----order of execution
--from & joins
--where
--group by
--having
--select
--distinct
--order by
--top

