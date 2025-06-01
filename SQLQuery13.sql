--12. Find the details of most expensive order date

select top 1 * from sales.SalesOrderHeader
order by TotalDue desc