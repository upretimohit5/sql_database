

select * from [dbo].[Employees]

insert into dbo.Employees(EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values(6,'Mohit','Upreti','Data',100000,'2026-04-15')

insert into dbo.Employees(EmployeeID,FirstName,LastName)
values(7,'Rohit','Upreti')

insert into dbo.Employees
values (8,'Neha','Kandari','Web',40000,'2023-03-04')

select * from INFORMATION_SCHEMA.COLUMNS  -- to get the position of the vlaues in columnwise
WHERE table_name='Employees'