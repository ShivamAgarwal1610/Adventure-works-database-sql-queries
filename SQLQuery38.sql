-- 40. supplierid and number of product offered

select BusinessEntityID as supplierid, count(ProductID) as number_of_product
from Purchasing.ProductVendor
group by BusinessEntityID
order by number_of_product desc





