select OrderID,CustomerID,EmployeeID,OrderDate
from orders
where OrderDate between '04-01-1997' and '05-30-1997'
order by CustomerID desc, OrderDate asc 

select top 10 *
from Employees
order by EmployeeID desc

select top 10 percent *
from Employees
--order by EmployeeID desc


select *
from Employees
where FirstName like 'a_i%'
--'[^a]%'
--'[a,f,_,h]%'
--'[a-d,h]%'


select EmployeeID,FirstName+' '+LastName as 'fullName',BirthDate,Country
from Employees
where LastName like '%[k,d]%' and BirthDate like '%1948%'
