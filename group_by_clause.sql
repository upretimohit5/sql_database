

select * from dbo.Sales

select paymentmethod, sum(Totalamount) as [sum of sales] from dbo.Sales
group by paymentmethod

select ProductID,paymentmethod,sum(totalamount) [sum of total sales] from dbo.sales
group by ProductID,paymentmethod
order by ProductID

