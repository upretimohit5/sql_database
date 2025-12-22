

select * from Customers
select * from Orders
select * from Products

-- 1) Write an sql query to find the name of customers who have placed an order.
select distinct CustomerName from Customers c inner join Orders o on c.CustomerID = o.CustomerID

-- 2) Find the list of customers who have not placed any orders.
select distinct CustomerName from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.OrderID is null  --anti left join

-- 3) List all orders along with the product name and price.
select distinct ProductName,Price from Orders o inner join Products p on o.productid = p.productid

-- 4) Find the name of the customers and their orders, including customers who haven't placed the orders.
select distinct CustomerName,ProductID from Customers c left join Orders o on c.CustomerID = o.CustomerID

-- 5) Retrieve a list of product that have never been orderd.
select p.ProductID,ProductName from Orders o right join Products p on o.ProductID = p.ProductID where o.ProductID is null
--or
select p.ProductID,ProductName from Products p left join Orders o on p.ProductID = o.ProductID where o.OrderDate is null

-- 6) Find the total number of placed order by each customer
select CustomerName, count(OrderID) [Number of Orders] from Customers c inner join Orders o on c.CustomerID = o.CustomerID group by CustomerName

-- If we want the customer who order or not all and count them
select CustomerName, count(OrderID) [Number of Orders] from Customers c left join Orders o on c.CustomerID = o.CustomerID group by CustomerName

-- 7) Display the customers, the products they've ordered, and the order date. Include customer who haven't placed any orders.
select distinct CustomerName,p.ProductID,ProductName,OrderDate
from Customers c left join Orders o on c.CustomerID = o.CustomerID left join Products p on o.ProductID = p.ProductID