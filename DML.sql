--DML
insert into Employees
values('amic','tsuriel',null,null,null,null,null,'tiberias',null,null,null,null,null,null,null,null,null)

insert into Employees (FirstName,LastName,City)
values('eli','bobo','jerusalem')

insert into persons
values (default,'aaagg','bbb',7),(default,'ccc','ddd',781)

insert into Customers(CustomerID, CompanyName,ContactName,City)
select  '6767',CompanyName,ContactName,city
from Customers
where CustomerID='222'


update Customers
set City='kinneret'
where CustomerID='6767'

update [Order Details]
set UnitPrice=(select max(unitprice) from Products),
Quantity=(select AVG(Quantity) from [Order Details] )
where UnitPrice<12 and OrderID=10248

delete from Customers
where CustomerID='6767'
