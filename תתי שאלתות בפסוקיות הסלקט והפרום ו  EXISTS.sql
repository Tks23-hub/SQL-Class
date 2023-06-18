

 SELECT 
   AVG(order_count) as average_order_count_by_staff
FROM
(
    SELECT 
	EmployeeID, 
        COUNT(OrderID) order_count
    FROM 
	orders
    GROUP BY 
	EmployeeID
)as t

select CustomerID
from customers c
where not exists (select CustomerID
from orders 
where CustomerID=c.CustomerID)

SELECT
    CustomerID,
    CompanyName,
    City,
	( SELECT
            COUNT (*)
        FROM
            orders o
        WHERE
            CustomerID = c.CustomerID
        GROUP BY
            CustomerID) as d
FROM
    customers c
WHERE
    EXISTS (
        SELECT
            COUNT (*)
        FROM
            orders o
        WHERE
            CustomerID = c.CustomerID
        GROUP BY
            CustomerID
        HAVING
            COUNT (*) > 2
    )
ORDER BY
    CompanyName,
   City;

   select *
   from orders
   where CustomerID='alfki'