

-- Stored procedure - it is used as when we use to some data again and again

select * from Employees

create procedure sp_test
as
begin
    select * from Employees
end

-- There are three ways to call a stored procedure query

sp_test

--or

exec sp_test

--or

execute sp_test

-----------------------------------------------------

-- Example 2

create proc sp_test_1 
as
begin
    select FirstName,LastName from employees
end

sp_test_1

-- To make some changes in the procedure so we use alter
Alter proc sp_test_1
as
begin
    select employeeID,FirstName,LastName from employees
end

sp_test_1