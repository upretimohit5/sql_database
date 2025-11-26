

select * from dbo.sales

-- Total sales, avg sales, Total Quantity, Avg Quantity for each distinct product

select
productid,
sum(totalamount) [total amount sold out],
avg(totalamount) [avg amount sold out],
sum(Quantity) [total quantity],
avg(Quantity) [avg quantity]
from dbo.sales
group by ProductID
having sum(totalamount)<1400 and sum(quantity)=42
order by ProductID
