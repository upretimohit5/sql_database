

select * from Customers
select * from Orders
select * from Products

--1) Identify pairs of customers who live in the same country
select x.CustomerName,y.CustomerName 
from Customers x join Customers y on x.country = y.Country and x.CustomerID<>y.CustomerID and x.CustomerID<y.CustomerID

-- 2) Find the customer one who has spent the most on their orders
select CustomerName from
(select CustomerName,sum(price)[Customer Total spend],dense_rank() over(order by sum(price) desc) [DR]
from Customers c inner join Orders o on c.CustomerID = o.CustomerID inner join products p on o.ProductID=p.ProductID 
group by CustomerName) m where DR = 1

-- 3) Find customers who have ordered more than one type of products
select CustomerName,count(OrderID) [Total customer's orders]
from Customers c join Orders o on c.CustomerID = o.CustomerID 
group by CustomerName
having COUNT(OrderID)>1

-- 4) List all product and their corresponding orders, using a RIGHT JOIN, including product that have never been ordered.
select OrderID,p.ProductID,ProductName from Orders o right join Products p on o.ProductID = p.ProductID

-- 5) Retrieve all orders placed by customers from the USA
select OrderID from Customers c inner join Orders o on c.CustomerID = o.CustomerID where Country in ('usa')

-- 6) Find the names of the customers who have ordered a product priced above $500
select CustomerName,Price
from Customers c inner join Orders o on c.CustomerID = o.CustomerID inner join Products p on o.ProductID = p.ProductID
where price>500

--7) Find the customers who have ordered same product more than once.
