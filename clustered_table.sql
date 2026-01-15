

create database test_Index

use test_Index

drop table if exists students

create table students(id int, name nvarchar(50), age int, gender varchar(20))

insert into students values 
(1,'Raj',23,'M'),
(4,'Nitin',21,'M'),
(3,'Nikhil',22,'M'),
(2,'Priya',23,'F'),
(5,'Ayush',20,'M')

select * from students

create clustered index ix_1 on students (ID)  -- It will order the id in ascending order and we can use only 1 clusterd in one table.

create clustered index ix_2 on students(ID desc) -- It will not gonna run because one clustered in a time for run this we have to drop this table

drop index ix_1 on students

create clustered index ix_3 on students (gender desc, age asc)

drop index ix_2 on students




