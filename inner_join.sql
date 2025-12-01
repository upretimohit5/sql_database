

select * from table1
select * from table1

select * from table1 as a inner join table1 as b on a.c1 = b.C1

select a.c1,a.c2,b.c2 from table1 as a inner join table1 as b on a.c1 = b.C1
--or
select a.c1,a.c2,b.c2 from table1 as a join table1 as b on a.c1 = b.C1