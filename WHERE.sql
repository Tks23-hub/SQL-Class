select ProductID,ProductName,UnitPrice,UnitsInStock
from Products
where UnitsInStock<=10

select *
from Employees
where city='london'

select ProductID,ProductName,UnitsInStock
from Products
where UnitsInStock not between 10 and 20

select *
from Employees
where city not in ('london','seattle','tiberias')

select *
from Employees
where region is null

select *
from Employees
where region is null and city='london'

select ProductID,ProductName,UnitsInStock
from Products
where ProductID>5 and (UnitsInStock< 10 or UnitsInStock> 20)

select CategoryName
from Categories
order by CategoryName

select ProductName,UnitPrice
from Products
order by UnitPrice desc