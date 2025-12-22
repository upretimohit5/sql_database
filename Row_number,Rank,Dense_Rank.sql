

select * from students

-- Bassically these are gonna use as to give orde to that specific column

--Row_number -> In case of a tie row number assigned randomly
select *,row_number() over(order by marks desc) as [Row Number]
from Students

--Rank -> If there's a tie next rank/ranks will be skipped
select *,rank() over(order by marks desc) as [Rank Function]
from Students

-- Dense_rank -> If there's a tie ranks will not be skiped
select *,dense_rank() over(order by marks desc) [Dense Rank]
from Students