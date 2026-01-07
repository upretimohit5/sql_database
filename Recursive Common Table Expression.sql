

-- Recursive CTE
-- Factorial of a given number

with [R CTE] as (
select 1 as n

union all

-- Recursive Query
select n+1 from [R CTE] where n<=4
)

select * from [R CTE]


-- Factorial of any number

with [R CTE] as (
select 1 as n

union all

-- Recursive Query
select n+1 from [R CTE] where n<=4
)

select exp(sum(log(n))) [Factorial] from [R CTE]

--Find the fatorial of 15
with [R CTE] as (
select 1 as n 

union all

select n+1 from [R CTE] where n<=14
)

select exp(sum(log(n)))  [Factorial Of 15] from [R CTE]