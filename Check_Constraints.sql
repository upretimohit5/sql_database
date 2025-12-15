

-- Check constraints - It checks for certain condition that can be applied on the columns of a table, if this condition is not fullfilled.
-- So we will not be able to insert the record into the table.


-- case1 : Table doesn't exist
create table test_check (
EID int unique,
firstname varchar(256),
age tinyint check(age>=18)
)
--drop table test_check
select * from test_check

insert test_check values(1,'Mohit',20)
insert test_check values(2,'rohit',17) -- This is not gonna execute because we use the check and the age should be >= 18

update test_check set EID = 11 where EID = 1
-- case2 : if the table already exist
alter table test_check
add check (eid>=5)  -- this is not gonna run becasue we already put the vlaue < less then 5 now we will update then run

insert into test_check values(3,'Sohit',20)
insert into test_check values(12,'Sohit',20)


