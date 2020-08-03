--select  Shops.NameShop  as 'nameshop',
--sum(Sales.Quantity) as 'sum prodachi'
--from Sales
-- join Shops on Sales.ID_SHOP=Shops.ID_SHOP
--group by rollup (Shops.NameShop,Sales.Quantity)



--select  Shops.NameShop  as 'nameshop',
--sum(Sales.Price*Sales.Quantity) as 'sum prodachi'
--from Shops
-- join Sales on Sales.ID_SHOP=Shops.ID_SHOP
-- where DateofSale between Dateadd(Year, -1,Getdate()) and GETDATE()
--group by rollup (Shops.NameShop)




--select  country.name,Shops.NameShop, AVG(Sales.Price) as 'Avg'
--from Sales
--join Shops on Sales.ID_SHOP=Shops.ID_SHOP
--join country on Shops.ID_COUNTRY=country.id_country
--where DateofSale between '2016.01.01' and '2018.01.01' and  country.name='Ukraine' or country.name='Britan'
--group by Rollup (country.name,Shops.NameShop)
----group by cube (country.name,Shops.NameShop)





--select  country.name,  Authors.FirstName, sum(Books.Pages) as 'sum'
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country
--where DateofPublich between '2015.01.01' and '2017.12.31' and  country.name='Ukraine' or country.name='USA'
--group by Rollup (country.name, Authors.FirstName,Books.Pages)
----group by cube ( country.name,Authors.FirstName,Books.Pages)







--select  Authors.FirstName, Books.DateofPublich, max(Books.QuantityBooks) as 'max'
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by
--grouping sets ((Authors.FirstName,Books.DateofPublich,Books.QuantityBooks));




select 'min Sales', [Books.Price] ,[Shops.NameShop]
from (select Books.Price ,Shops.NameShop) as 'Cost'
from Books,Shops
join Sales on Shops.ID_SHOP=Sales.ID_BOOK
join Books on Sales.ID_BOOK=Books.ID_BOOK
pivot (min(Books.Prise) for Books.Prise in([Books.Price], 
[Shops.NameShop]) as PivotTable;




--select 'Minimum Sales', [World of Books], [Book Store], [Library of Lui]
--from (select Shops.Name, Sales.Price as 'Cost'
--from Shops 
--join Sales on Sales.ShopId=Shops.Id
--where DateOfSale between '2016.01.01' and '2018.01.01'
--) as SourceTable
--pivot (min(Cost) for Name in ([World of Books], [Book Store], 
--[Library of Lui])) as PivotTable;


--select *
--from (select Shops.Name, Sales.Price as 'Cost'
--from Shops 
--join Sales on Sales.ShopId=Shops.Id
--where DateOfSale between '2016.01.01' and '2018.01.01'
--) as SourceTable
--pivot (min(Cost) for Name in ([World of Books], [Book Store], 
--[Library of Lui])) as PivotTable
--unpivot
--( Cost for Name in ([World of Books], [Book Store],[Library of Lui])) as UnpivotTable;






