

select * from Employees

select distinct employeeId from Employees

select distinct employeeID from #temp1

select * into #temp1 from Employees

select * from #temp1

-- Example 1 : CTE

with CTE as (
select * from #temp1
)

select * from cte

-- Example 2 :

with TEST_CTE as(
select employeeID,firstname from #temp1 where EmployeeID in (2,4)
)
select * from test_cte

-- Example 3 :
with [Comm Table Expression ] as (
select * from #temp1 where EmployeeID in (1,2,3)
)
select * into #temp2 from [comm Table expression]

select * from #temp2

-- Example 4 :
with CTE_1 as (
select * from #temp1 where employeeID in (2,4,6)
)
update #temp1 set employeeID = 101 where employeeID in (select distinct employeeID from CTE_1)

-- Example 5 :
with CTE_2 as (
select * from #temp1 where EmployeeID in (1)
)
delete from #temp1 where EmployeeID in (select distinct employeeID from CTE_2)

-- Example 6 :
with CTE_3 as (
select * from #temp1 where EmployeeID in (101)
)

insert into #temp1 select * from CTE_3