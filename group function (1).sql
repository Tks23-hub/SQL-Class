--group function

select avg(unitprice)
from products

select sum( UnitPrice)
from Products

select count(*)
from Employees
where city='london'

select max(unitprice) --ProductID,ProductName,UnitPrice
from products

select min(unitprice)
from Products

select count(*),city
from Employees
group by City
having city='hispin'

