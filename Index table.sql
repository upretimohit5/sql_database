

-- Index - An index is a database object that improves the speed of data retrieval operations on a table by providing quick access to rows.
-- You can the index on the left hand side on the object explorer
select * from Employees

create index IX_1 on dbo.employees(salary desc)

create index IX_2 on dbo.employees(firstname,lastname)

-- To drop or delete any index we use this code
drop index dbo.employees.IX_1



