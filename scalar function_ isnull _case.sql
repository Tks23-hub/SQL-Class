
--פונקציות סקלריות
--פונקציות מתמטיות
select ceiling(8.3)
select floor(8.3)
select round(8.354,2)

--פונקציות לטיפול במחרוזות(טקסטים)
select ASCII('A')
select CHAR(97)
--select CHARINDEX('KINNERET','R')
SELECT RIGHT('KINNERET',3)
SELECT LEFT('KINNERET',3)
SELECT LEN('KINNE RET')
SELECT LEN(RTRIM('  KINNERET    '))
SELECT LEN(LTRIM('  KINNERET    K'))
SELECT REPLACE('KINNERET','NN','AA')
SELECT REVERSE('KINNERET')
SELECT SUBSTRING('KINNERET',2,3)
SELECT LOWER('KINNERET')
SELECT UPPER('kinneret')

--פונקציות תאריך וזמן
--year yy,yyyy
--quarter qq,q
--month mm,m
--dayofyear dy,y
--day dd,d
--week wk,ww
--hour hh
--minute mi,n
--second ss,s
select DATEADD(dd,2,'2023-03-31')
select DATEDIFF(mm,'2023-03-31','2023-02-28')
select DATENAME  (mm,'2023-03-31')
select DAY('2023-03-31')
select MONTH('2023-03-31')
select YEAR ('2023-03-31')
select GETDATE()

--פונקציות המרה
select cast(getdate() as char(12))
select convert(char(12),getdate())
select convert(char(12),getdate(),101)
select convert(char(12),getdate(),103)



select isnull(region,'north')
from Employees
where region is null

 select CompanyName, isnull(fax,'unknown')
 from Suppliers
 where fax is not null

 select fax
 from Suppliers

 --simple case
 select distinct case discount
 when 0 then 'no dicount'
 when 0.05 then 'small dicount'
 end 
 from [Order Details]

 --search case
 select CustomerID,
 case
 when ShippedDate is null
	then 'call for schedule shipping'
 when DATEDIFF(dd,ShippedDate,RequiredDate)<0
	then 'call and apologize'
 end as 'shipping status'
 from orders
 --where ShippedDate is not null
