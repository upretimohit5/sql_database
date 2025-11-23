

select * from [dbo].[Employees]
order by Salary     -- This is used to put data in ascending order(Order by)

select * from [dbo].[Employees]
order by Salary desc  -- this is used to data in the descnding order

select * from dbo.Employees
order by Department asc,Salary desc  -- if you will see the departmetn has 2 It value so it will go through in descending becasue of the salary.

select * from dbo.Employees
order by Department ,Salary desc -- we don't need to mention asc because it is default so 9,10 & 12,13 number row has same value.