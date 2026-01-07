

select * from employees

select * into #1 from Employees

-- Example 1
with CTE1 as (
select * from #1 where EmployeeID in (1,2)
),CTE2 as (
select * from #1 where EmployeeID in (3,4)
)

select * from cte1
union all
select * from cte2

-- Example 2
with CTE3 as (
select EmployeeID,FirstName from #1 where EmployeeID =1
),CTE4 as(
select EmployeeID,FirstName from #1 where EmployeeID in (3)
)

select * into #2 from (
select * from CTE3
union all
select * from CTE4
) X

select * from #2

-- Example 3
with CTE3 as (
select EmployeeID,FirstName from #1 where EmployeeID =1
),CTE4 as(
select EmployeeID,FirstName from #1 where EmployeeID in (3)
)

-- Here #2 aleady exist so use insert  func
insert into #2 select * from (
select * from CTE3
union all
select * from CTE4
) X

select * from #2

-- Example 4
with CTE3 as (
select EmployeeID,FirstName,Salary from #1 where EmployeeID = 2
),CTE4 as(
select EmployeeID,FirstName,Salary from #1 where EmployeeID in (4)
)

delete from #1 where EmployeeID in (select distinct EmployeeID from CTE3
union all
select distinct employeeId from CTE4
)

select * from #1

-- Example 5
with CTE3 as (
select EmployeeID,FirstName,Salary from #1 where EmployeeID = 9
),CTE4 as(
select EmployeeID,FirstName,Salary from #1 where EmployeeID in (10)
)

update #1 set EmployeeID = 100 where EmployeeID not in (select distinct EmployeeID from CTE3
union all
select distinct employeeId from CTE4
)

select * from #1