

select * from dbo.sales
where TotalAmount>=160

select * from dbo.Sales

select productid, sum(totalamount) [sum of sales] from dbo.Sales
group by ProductID
having sum(totalamount)<1400

select productid,sum(totalamount) [sum of sales] from dbo.Sales
where TotalAmount>=160
group by ProductID
having sum(totalamount)>=750
order by productid desc

select productid,sum(totalamount) [sum of sales] from dbo.Sales
where TotalAmount>=160
group by ProductID
having sum(totalamount)>=750
order by sum(totalamount) asc -- we don't need to write asc it is in default vlaue