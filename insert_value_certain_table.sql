

select * from student_details

insert into student_details(Age,event_date)
values (26, '2024-05-08'),
(26, '2024-09-03'),(25, '2024-01-07')

select * from INFORMATION_SCHEMA.columns where TABLE_NAME like 'student_detials' --we can find the data type as well.

-- age data type is tinyint whose vlaue is 0-255 if we put vlaue 256 it will thow an error

insert into student_details(Age)
values (256)