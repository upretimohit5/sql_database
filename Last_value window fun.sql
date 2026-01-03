

select * from EmployeeSalaries

use [Window Fun]

-- Incorrect query
select *,
LAST_VALUE(employeename) over(order by salary desc) [Minimum Salary Employee]
from EmployeeSalaries

-- Correct Query
select *,
LAST_VALUE(employeename) over(order by salary desc rows between unbounded preceding and unbounded following) [Minimum Salary Employee],
LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following) [Minimum Salary]
from EmployeeSalaries


-- departmentwise lowest salary should be represented in partition by
select *,
LAST_VALUE(department) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Department With Lowest Salary],
LAST_VALUE(employeename) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Employee With Lowest Salary]
from EmployeeSalaries

-- Correct Query[Last Value Window Func]
select *,
LAST_VALUE(Salary) over(partition by department
order by salary asc rows between unbounded preceding and unbounded following) [Department With Highest Salary],

LAST_VALUE(employeename) over(partition by department
order by salary asc rows between unbounded preceding and unbounded following) [Employee With Highest Salary]
from EmployeeSalaries

-- Correct Query[First Value Window Func]
select *,
FIRST_VALUE(Salary) over(partition by department
order by salary desc) [Department With Highest Salary],

FIRST_VALUE(employeename) over(partition by department
order by salary desc) [Employee With Highest Salary]
from EmployeeSalaries



