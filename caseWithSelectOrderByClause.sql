

-- Example1: Add a column to categorise each product into categories high, medium & low

select
*,
case
   when price > 500 then 'High'
   when price <= 500 and price >= 200 then 'Medium'
   else 'Low'
end as [High/Medium/Low]
from products

-- Example2 : Provide priority to each category & sort the data according to that priority
select * from products
order by
case
    when category in ('Electronics') then 1
    when category in ('Furniture') then 2
    else 3
end

-- or we use when in place of else
select * from products
order by
case
    when category in ('Electronics') then 1
    when category in ('Furniture') then 2
    when category = 'Accessories' then 3
end