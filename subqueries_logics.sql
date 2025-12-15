

select * from Customers

select *  from Orders

-- Que: select the couttumers which orders in month of august using orders tabel and customers table
select * from Customers
where customer_id in (
select distinct customer_id from Orders where order_date between '2024-08-01' and '2024-08-31'
)

-- Que: select the couttumers which orders not in month of august using orders tabel and customers table
select * from Customers
where customer_id in (
select distinct customer_id from Orders where order_date not between '2024-08-01' and '2024-08-31'
)

select * from Employees

-- Que: fetch the data from employee table where salary > aveage salary

select * from Employees where salary > (
select avg(salary) from Employees 
)

select avg(salary) from Employees