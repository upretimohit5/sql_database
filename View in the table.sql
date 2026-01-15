

-- view in SQL

use testdb

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

---- A view is a virtual table, It isa stored SQL Query
---- It help in reducing the complexity of the code
---- It help in implement security

create view View_1 as (
select * from emp_bkp
)

select * from View_1

-- for security reason we don't want to share salary
create view view_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from view_2

-- If you update the view table it is gonna update th eparent table like on this example emp_bkp is gonna change as well because it is parent of view table in this case

select * from View_1
select * from emp_bkp

update View_1
set EmployeeID = 100

