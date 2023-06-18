

use Northwind
create table students
(
	studentId int primary key identity(1,10),
	studentName nchar(20)  null,
	addres nchar(10) unique,
	phone int default(123456)
)

	select FirstName,Address,city,birthdate
	into students
	from Employees
	where city='london'

	select * from students

insert into students
values('null',default,default),('jhgj',default,default)

truncate table students

drop table students

alter table students drop column addres
alter table students add adress nvarchar(50) default('amichai')


create table cities
( cityId int  identity(1,1) ,
cityName nchar(10) not null unique,
country nchar(10)  check(country='israel'),
unitPrice int check(unitPrice>0),
discount int constraint dis check(discount>0),
--primary key(cityId)
--constraint dis2 check( discount<unitPrice)
)

