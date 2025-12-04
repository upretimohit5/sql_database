

select * from products

-- we need to group the data based on columns category & price into diffrent categories i.e affordable & premium
select
*,
case
	when category= 'electronics' then
		case when price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end
	when category = 'furniture' then
		case when price>=250 then 'Perimium Funiture'
		else 'Affordable Furniture'
		end
else
		case when price>=25 then 'premium Accesories'
		else 'Affordable Accesories'
		end
end as [Groups]
from products
 --or
 select
*,
case
	when category= 'electronics' then
		case when price>=300 then 'Premium Electronics'
		else 'Affordable Electronics'
		end
	when category = 'furniture' then
		case when price>=250 then 'Perimium Funiture'
		else 'Affordable Furniture'
		end
	when category in ('Accessories') then
		case when price>=25 then 'premium Accesories'
		else 'Affordable Accesories'
		end
end as [Groups]
from products