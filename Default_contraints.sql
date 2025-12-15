

-- Default constraints - in this the vlaue first you define what you want and then if you don't give vlaue it will give that value by itself in that column

create table test_default (
EID int default 5,
firstname varchar(256) default 'Rohit',
lastname varchar(256),
age tinyint
)

select * from test_default
insert into test_default values(1,'Mohit','Upreti',26)
insert into test_default(lastname,age) values('Upreti',21)
insert into test_default(lastname) values('Kumain')  -- in this the age will be null

--case2 : the table already exist

alter table test_default
add default 25 for age

insert into test_default(lastname) values('Rawat')  -- age will be 25 because we defined the default 25