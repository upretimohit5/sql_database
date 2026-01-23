

select * from Employees

select * from departments

-- Questions for this assignment

-- Write a SQL query to list the names of employees along with the names of the departments they work in.
select e.firstname,e.lastname,d.departmentname from employees e
inner join departments d
on e.departmentID = d.departmentID

-- Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
SELECT 
    d.departmentName, 
    e.FirstName, 
    e.LastName
FROM departments d
LEFT JOIN employees e ON d.departmentID = e.departmentID;


-- Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select e.firstname,e.lastname
from employees e
left join departments d on d.departmentId = e.departmentId
where d.departmentid is null



-- Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
select e.firstname,e.lastname
from employees e
left join departments d on d.departmentId = e.departmentId
where d.departmentid = (select departmentId from employees where firstname='Jane' and lastname='Doe')
AND e.firstname <> 'Jane'

-- Write a SQL query to find the department with the highest total salary paid to its employees.
SELECT TOP 1 D.DepartmentName
FROM Departments D
JOIN Employees E
ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName
ORDER BY SUM(E.Salary) DESC;