

-- Left join or Left inner join

select * from table1
select * from table2

select * from table1 left join table2
on table1.C1=table2.C1

select table1.C1,table2.C1,table2.C3 from table1 left join table2
on table1.C1=table2.C1

select a.C1,a.C1,b.C3 from table1 a left join table2 b
on a.C1=b.C1