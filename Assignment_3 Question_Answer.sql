

select * from employees

-- > Questions for this assignment

-- Write a SQL query to find the names of employees whose first names start with the letter 'J'.
select * from employees
where FirstName like 'J%'

-- Write a SQL query to find the names of employees whose last names end with the letter 'n'.
select * from employees
where LastName like '%n'

-- Write a SQL query to find the email addresses of employees that contain the word "john".
select * from employees
where Email like '%john%'

-- Write a SQL query to find the names of employees whose first names have exactly 5 characters.
select * from employees
where FirstName like '_____'

-- Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
select * from employees
where LastName like '_a%'