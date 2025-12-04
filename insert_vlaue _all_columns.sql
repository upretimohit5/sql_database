

select * from dbo.student_details

insert into student_details
values('Rohit', 'M', 21, '2024-05-04', 155.60),
('Raj', 'M', 22, '2024-05-05',158.60),
('karan','M', 24, '2024-09-05',192.60)

-- how we check what we need to put in the order of anything
select * from INFORMATION_SCHEMA.columns where Table_Name like 'student_details'

insert into student_details (student_name,gender)
values ('priya', 'F')