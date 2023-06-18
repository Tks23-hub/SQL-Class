select p.ProductName,c.CategoryName
from products p inner join Categories c
on p.CategoryID=c.CategoryID

select zalman.ProductName,c.CategoryName,s.CompanyName
from products zalman 
join Categories c
on zalman.CategoryID=c.CategoryID
join Suppliers s
on zalman.SupplierID=s.SupplierID





select o.OrderID, p.ProductName, p.UnitPrice, o.Quantity
from products p join [Order Details] o
on o.ProductID=p.ProductID
where o.Quantity=9
order by p.UnitPrice

select p.ProductName,c.CategoryName
from products p right outer join Categories c
on p.CategoryID=c.CategoryID

select p.ProductName,c.CategoryName
from products p left outer join Categories c
on p.CategoryID=c.CategoryID

select p.ProductName,c.CategoryName
from products p full outer join Categories c
on p.CategoryID=c.CategoryID



