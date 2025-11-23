select * from dbo.EmployeeRecords

select * into #3 from dbo.Employees

select * from #3

delete from #3 
where Department = '' or Salary = '0'

select * into #4 from dbo.Employees

select * from #4

delete from #4  -- this line delete all the data inside it so why we should use where clause when we are working in the lots of data

select * from #3

truncate table #3  -- it delete all the data as well

drop table #3   -- it drop all the data and structure as well like id,name,last name all line like there is nothing.

