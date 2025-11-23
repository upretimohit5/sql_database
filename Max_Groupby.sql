

select * from dbo.Sales

select max(totalamount) [Maximum Ammount] from dbo.Sales

select max(SaleDate) [Maximum SaleDate] from dbo.Sales

select max(PaymentMethod) [max pay method] from dbo.Sales

-- maximum quality sold for each product id
select productid,max(quantity) [Maximum Quantity] from dbo.sales
group by ProductID

-- maximum total ammount for all distinct date in salesdate column
select saledate,max(totalamount) [Maximum Total Amount] from dbo.Sales
group by SaleDate