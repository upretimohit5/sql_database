

create database constraints

use constraints


-- constraints
-- conditions that can be applied on columns of a table and these condition are to be followed while inserting records into the table#

-- no null constraints


-- case1 : We will have to create a new table
create table test_not_null(
EID int not null,
age tinyint,
firstName varchar(256)
)

select * from test_not_null

-- to check the information about tbale

select * from INFORMATION_SCHEMA.columns
where TABLE_NAME like 'test_not_null'


insert into test_not_null values (1,23,'Mohit')
insert into test_not_null values(2,24,'Madhav')
insert into test_not_null values(null,24,'Raghav')  --This line is not gonna execute because we define EID can't be null
insert into test_not_null values(4,null,'Sohit')

--case2 : table already exists
-- We start to make firstName column nullable

alter table test_not_null
alter column firstName varchar(256) not null

insert into test_not nulll vlaues(21,34,null)  --This line is not gonna execute because we define on 37-39 firstName can't be null

alter table test_not_null
alter column age tinyint not null  -- this is not gonna execute becuse the null value is already defined as null in upper section

select * from test_not_null
