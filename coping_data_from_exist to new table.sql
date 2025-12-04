

-- copying data from existing table to the new table

-- case 1 : The New table simply doesn't exist.
-- case 2 : The New table structure/new table exists

-- case 1 :
select * from dbo.sales

-- all column webe copied from existing table
select * into New_Table_1 from dbo.sales
-- This statement will result in the creation of New_Table_1 which will have structure & records both same as that of dbo.sales table

select * from New_Table_1

--drop table New_Table_1
-- for certain column to be copied

select productid,quantity into new_table_1 from dbo.sales

-- case 2

select top 0 * into new_table_2 from dbo.sales  -- just structure made form top 0

select * from new_table_2

insert into new_table_2 select * from dbo.Sales  -- in this case table already exist so we use this statment

------ copying certain columns which is already exist

select * into new_table_3 from dbo.sales where 1=0  -- if we put the false statment like1=0 so only strcture make but nothing copy so the table will be same like line 24

select * from new_table_3

insert into new_table_3 (ProductID, SaleDate) select ProductID, SaleDate from dbo.sales  -- just for certain columns which table already exists


