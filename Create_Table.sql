

Create database student

create table student_details (
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
Event_Date date,
Distance decimal(5,2))

insert into student_details(Student_Name,Gender,Age,Event_Date,Distance)
values('Rahul', 'M', 26, '2025-04-05', 104.55)


insert into student_details  -- in second time you don't need to mention th sequence 
values('Mohit Upreti', 'M', 26, '2025-04-05', 107.55)
--drop table student_details

select * from student_details
