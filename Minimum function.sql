

select * from dbo.sales

select min(Quantity) [Minimum quantity] from dbo.sales

select min(totalamount) [Minimum Ammount] from dbo.Sales

select min(paymentmethod) [Minimum Pay Method] from dbo.Sales.

-- show minimum total amount for each storeid
select StoreID, min(paymentmethod) [Minimum Pay Method] from dbo.sales
group by StoreID

