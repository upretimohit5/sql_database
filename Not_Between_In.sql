


select * from [dbo].[EmployeeRecords]

select * from [dbo].[EmployeeRecords]
where not FirstName = 'John' and not salary = 60000

select * from [dbo].[EmployeeRecords]
where not LastName = 'Miller' or not Department = 'HR'

select * from [dbo].[EmployeeRecords]
where salary between 75000 and 85000

select * from [dbo].[EmployeeRecords]
where Salary >=75000 and Salary<=85000   -- this line and above line same value

select * from dbo.EmployeeRecords
where Salary not between 75000 and 85000

select * from dbo.EmployeeRecords
where not Salary between 75000 and 85000 -- this line and above line has same execution

select * from dbo.EmployeeRecords
where Department = 'HR' or Department = 'IT'
--or
select * from dbo.EmployeeRecords
where Department in ('HR','IT')

select * from dbo.EmployeeRecords
where not Department in ('HR','IT')
--or
select * from dbo.EmployeeRecords
where Department not in ('HR','IT')
