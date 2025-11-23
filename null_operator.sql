

select * from dbo.Employees

insert into dbo.Employees
values(9,'Raju','Malhotra','',53000,'2024-10-04')  -- here is the diffrent b/w null and ''(blank) value

insert into dbo.Employees
values(10,'Mayank','Chauhan','IT','0','2024-08-09') -- here is the diffrence b/w null and 0 vlaue as well

select * from dbo.Employees where Department is null  -- this is to ge tthe null value

select * from dbo.Employees where Department is not null -- it will shows all the  null values ehich are not null

