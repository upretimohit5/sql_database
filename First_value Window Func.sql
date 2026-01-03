

select * from EmployeeSalaries

use [Window Fun]

select *,
First_value(salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *,
First_value(employeename) over(order by salary asc) [Minimum Salary Employee],
First_value(salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *,
first_value(Department) over(partition by department order by salary) [Most Salary Department]
from EmployeeSalaries

select *,
first_value(Department) over(partition by department order by salary) [Most Salary Department],
first_value(EmployeeName) over(partition by department order by salary) [Most Salary Employee]
from EmployeeSalaries

