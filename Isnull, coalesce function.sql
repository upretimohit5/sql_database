

-- isnull and coalesce function
select * from customers 

select isnull (null,'1st value is null')   -- In this code both function inside the bracket is checked and which has no value that will be execute second will be execute

select isnull ('abc', null)  -- In this code both function inside the bracket is checked and which has no value that will be execute first will be execute

select isnull (null,null)    -- In this code both function inside the bracket is checked and which has no value that will be execute so both show null vlaue and null will be execute

select coalesce('A','B','C')  -- Coalese function first non-null vlaue so in this code 'A' will be execute

select coalesce (null,'B','C') -- Coalese function first non-null vlaue so in this code 'B' will be execute

select coalesce (null,null,'C') -- Coalese function first non null vlaue so in this code 'C' will be execute

select * from customers

select customerID,Email,Phonenumber from customers

-- Isnull function in the table

select customerID,isnull(Email, 'Email- NA')[Revise Email], isnull(phonenumber, 'PH.- NA') [Revise Phone] from customers

-- coalesce funstion in the table

select customerID,coalesce(email,phonenumber, 'Contact NA') [Coalesce Function] from customers


