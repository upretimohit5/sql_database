
select * from [dbo].[EmployeeRecords]
where EmployeeID = 2

select EmployeeID,FirstName from [dbo].[EmployeeRecords]
where EmployeeID = 2

select * from dbo.EmployeeRecords where Salary>=70000

select FirstName,LastName,Department,Salary 
from dbo.EmployeeRecords where Salary<75000

select distinct FirstName,LastName,Department,Salary   -- in this only one record will show because of the distinct keyword
from dbo.EmployeeRecords where Salary<75000
