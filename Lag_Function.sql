

select * from ProfitData

-- To add a new column that shows previous month's profit for each product
select *,
lag(profit) over(partition by product order by monthnumber) [Previous(Lag) Month Profit]
from ProfitData

-- We do not want product column in the output but we want each month's total profit to be show by monthnumber & monthname & new column should be added to show
-- prvious month's total profit

select monthnumber,monthname,sum(profit) [Total Profit By Each Month],
lag(sum(profit)) over(order by monthnumber) [Privious Month's Total profit]
from ProfitData
group by monthnumber,monthname