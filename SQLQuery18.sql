-- Q17. list of all orders placed on or after 1996/12/31

select * from sales.SalesOrderHeader
where orderdate >= '1996-12-31'