

select * from Students

-- Partition by is used to do the partition of specific column and then order by is used to order them.

select *,Row_Number() over(partition by subject order by marks desc) [Row Number Desc]
from Students

select *,Row_Number() over(partition by subject order by marks) [Row Number Asc]
from Students

select *,Row_Number() over(partition by student_name order by marks) [Row Number Asc]
from Students

select *,rank() over(partition by student_name order by marks desc) [Rank Desc]
from Students

select *,rank() over(partition by subject order by marks desc) [Rank Desc]
from Students

select *,Dense_Rank() over(partition by subject order by marks desc) [Rank Desc]
from Students

select *,Dense_Rank() over(partition by student_name order by marks desc) [Rank Desc]
from Students