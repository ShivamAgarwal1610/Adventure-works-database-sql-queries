-- 35. List of products where unit in stock is less than 10 and units on order are 0


select p.ProductID ,p.name, pi.Quantity as unitinstock
from Production.ProductInventory pi
join Production.Product p 
on ( pi.ProductID =  p.ProductID)
where pi.Quantity < 10 and p.SafetyStockLevel = 0