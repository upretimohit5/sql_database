

select * from ProfitData

-- To add a new column that shows next month's profit for each product
select *,
lead(profit) over(partition by product order by monthnumber) [Next Month Profit]
from ProfitData

-- We do not want product column in the output but we want each month's total profit to be show by monthnumber & monthname & new column should be added to show
-- next month's total profit
select MonthName,MonthNumber,sum(profit) [Total Profit By Month],
LEAD(sum(profit)) over(order by monthnumber) [Next Month Total Profit]
from ProfitData
group by MonthName,MonthNumber