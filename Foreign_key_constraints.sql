

-- Foreign key constraint

-- Case1 : new tbale has to be created

create table test_primary_key (
ID int primary key,
Name varchar(256)
)

insert into test_primary_key values (1,'Mohit'),(2,'Rohit'),(3,'Mayank')

select * from test_primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(ID),
course varchar(256)
)

insert into test_foreign_key values (1,'Maths')

insert into test_foreign_key values (null,'S.S.T')  -- this execute because foreign key keep null values and duplicates

insert into test_foreign_key values (5,'science')   -- this is not gonna execute because ID value in not in primary key

select * from test_foreign_key

-- case2 : table already exists

create table test_foreign_key_2(ID int, course varchar(256))

alter table test_foreign_key_2 
add foreign key (id) references test_primary_key(ID)

insert into test_foreign_key_2 values (4,'S.K.T') -- this is not gonna execute because test foriegn key 2 already defined as references key of test primary key 