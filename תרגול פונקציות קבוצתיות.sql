select  convert(char(12),min(birthdate),113)
from Employees

select count(*)
from Customers

select COUNT(*),count(region)
from Customers

select categoryid,supplierid, max(unitprice),min(unitprice),avg(unitprice),count(*)
from products
group by CategoryID,SupplierID

select Region,city,count(*)
from Customers
where (city like '%R%' or city like '%S%') and Region is not null
group by Region,city
having  count(*)>=2