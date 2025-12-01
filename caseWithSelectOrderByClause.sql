

-- Example : Add a column to categorise each product into categories high, medium & low

select
*,
case
   when price > 500 then 'High'
   when price <= 500 and price >= 200 then 'Medium'
   else 'Low'
end as [High/Medium/Low]
from products