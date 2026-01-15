

use test_Index

select * from students

create nonclustered index ix_1 on students (ID)

create nonclustered index ix_2 on students (gender desc,age asc)

drop index ix_1 on students 

