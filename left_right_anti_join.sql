

-- left & right anti join
select * from table1
select * from table2

-- left anti join

select * from table1 a left join table2 b on a.c1 = b.c1
where b.C3 is null

select a.c1,a.c2,b.c3 from table1 a left join table2 b on a.c1 = b.c1
where b.C3 is null

select * from table1
select * from table2
-- right anti join

select * from table1 right join table2 on table1.c1 = table2.c1
where table1.c2 is null
-- or
select * from table1 a right join table2 b on a.c1 = b.c1
where a.c2 is null

select a.c1,a.c2,b.c3 from table1 a right join table2 b on a.c1 = b.c1
where a.c2 is null