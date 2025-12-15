

-- Unique Constraints
-- it ensures that a column cosists of unique vlaues

-- case1 : we need to create the table
create table test_unique (
SID int unique,
age tinyint not null,
firstanme varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique
insert into test_unique values (1,22,'Mayank','chauhan')
insert into test_unique values (1,22,'Rohit','upreti')  -- This is not gonna execute because we give the SID as unique value so the number is repeating
insert into test_unique values (null,27,'Akash','chaudry')
insert into test_unique values (null,80,'Mohit','Upreti')
-- and we can't give the null values in firstname and age and should be unique in firstname as well


-- case2 : When the table already exist
alter table test_unique
add unique (lastname) -- i run this command after line 16 and if i run the comand agian on line 18 it is not gonna execute
