

-- Primary key - It can be used to distinguies between any two records in a given table. it contains non-null value and no duplicates

--Case1 : when new table need to create
create table Primary_key(
EID int primary key,
Gender char(1),
Age tinyint,
FirstName varchar(256)
)

insert into Primary_key values(1,'M',26,'Mohit')

insert into Primary_key values(1,'M',21,'Rohit') -- It is not gonna run because of the EID is primary key it can't consists duplicates.

insert into Primary_key values(null,'M',26,'Mayank') -- It is not gonna run because of the EID is primary key it can't consists null Values.

select * from Primary_key

--case 2 : table already exist
alter table primary_key
add primary key(age) -- This is not gonna run if the primary key is already exist there can be  only one primary key in a table exists but if we make new one we can make more primary key

create table primary_key_1 (
EID int,
FirstName varchar(256),
age tinyint
)

alter table primary_key_1
add primary key (EID,age) -- this is not gonna run because column we wanna make primary but did not put any value we did not defined as non null or unique by
-- by default it null and with duplicates

-- if we defined the value non null and unique

create table primary_key_2 (
EID int not null unique,
FirstName varchar(256),
age tinyint not null
)
drop table primary_key_2
alter table primary_key_2
add primary key (EID,age) -- this is gonna run because we already defiend the value as not null and unique which we wanna make primary key.
