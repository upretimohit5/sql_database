

select * from append1
select * from append2

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2
-- union all has all the value and union has the vlaue but not the common one
select c1,c2,c3 from append1
union
select c1,c2,c3 from append2

-- number of columns present in the select list have to be same
-- Data Types of the columns have to be same
-- order in which columns are written has to be the same

-- explanation for point in up side
-- 1)
select c1,c2,c3 from append1
union
select c1,c2 from append2 -- this will not execite because of the columns should be same number

-- 2)
select c1,c2,c3 from append1
union
select c1,c3,c2 from append2  -- this is not gonna execute because datatype should be same in the coulmn

-- 3)
select c1,c2,c3 from append1
union
select c1,c3,c2 from append2  -- this will not execute becuase order of the column should be same

-- column 1 alias name will be prefered first
select c1 [column1],c2 [column2],c3 [column3] from append1
union
select c1 [col1],c2 [col2],c3 [col3] from append2