
--SELECT Shops.NameShop as 'shopname',
--(SELECT Books.NameBook as 'bookname',Authors.FirstName+' '+Authors.LastName as 'authorname',sum(Sales.Quantity) as totalcost FROM Authors
--join Books on Authors.ID_AUTHOR=Books.ID_AUTHOR
--join Sales on Sales.ID_BOOK=Books.ID_BOOK
--where Sales.ID_SHOP=Shops.ID_SHOP
--group by Books.NameBook, Authors.FirstName+' '+Authors.LastName
--FOR XML RAW('book'), TYPE)
--FROM Shops 
--FOR XML RAW ('shop'), ROOT('shops')



--DECLARE @var xml
--SET @var=
--(
--SELECT Shops.NameShop as 'shopname',
--(SELECT Books.NameBook as 'bookname',Authors.FirstName+' '+Authors.LastName as 'authorname',sum(Sales.Quantity) as 'totalcost'FROM Authors
--join Books on Authors.ID_AUTHOR=Books.ID_AUTHOR
--join Sales on Sales.ID_BOOK=Books.ID_BOOK
--where Sales.ID_SHOP=Shops.ID_SHOP
--group by Books.NameBook, Authors.FirstName+' '+Authors.LastName
--FOR XML RAW('book'), TYPE)
--FROM Shops 
--FOR XML RAW ('shop'), ROOT('shops'))
--SELECT @var.query('/shops/shop[@shopname = "Book.com"]')



--select c.value('@bookname','nvarchar(30)') as title,
--c.value('@authorname','nvarchar(30)')as author,
--c.value('@totalcost','int')as  totalcost
--from @var.nodes('shops/shop[@shopname="Book.com"]/book') as tmp(c)








