

select * from [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = 3   -- And opretor is used as when there are two conditions given

select * from [dbo].[EmployeeRecords]
where LastName = 'Miller' and EmployeeID = '3' -- the upper and this are same thing in the vlaue

select * from [dbo].[EmployeeRecords]
where Department = 'HR' or Department = 'Finance' order by FirstName
-- (AND, OR) operator together
select * from [dbo].[EmployeeRecords]
where (Department = 'HR' or Department = 'Finance') and salary>60000

