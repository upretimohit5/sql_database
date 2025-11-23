

select * from dbo.sales

select sum(quantity) [total quantity] from dbo.sales

select sum(quantity) [total quantity],sum(totalamount) [total amount] from dbo.Sales

select avg(quantity) [average quantity] from dbo.sales

select avg(quantity) [avarage quantity],avg(totalamount) [avarage amount] from dbo.Sales

--sum of Quantity, sum of totalamount, avg of total amount for each distinct product

select
ProductID,
sum(Quantity) as [Total Quatity],
sum(TotalAmount) as [Sum of Amount],
avg(quantity) [Average Quantity],
avg(TotalAmount) [Average Total Amount]
from dbo.sales
group by ProductID

select * from dbo.Sales

-- sum of quantity, sum of amount, avg of quantity & avg of amount for distinct combination of productID & storied 
select
productID,
StoreID,
sum(quantity) [Total quantity],
sum(totalamount) [Total amount],
avg(quantity) [Average Quantity],
avg(TotalAmount) [Average Total Amount]
from dbo.Sales
group by ProductID,StoreID

select * from dbo.Sales

select 





