
--SELECT CONCAT(A.FirstName, ' ', A.LastName) as Fullname, temp.*
--FROM Authors A
--CROSS APPLY 
--(SELECT (max(Sales. DateofSale)) as Maxdateofsale, min( Sales.DateofSale) as Mindateofsale 
--FROM Sales
--join Books on Sales.ID_BOOK=Books.ID_BOOK
--where Books.ID_AUTHOR=A.ID_AUTHOR
--) temp

 --create function inform(@id int)
 --returns table
 --as return
 --(Select
 --max(Sales.DateofSale) as MaxDateofsale,
 --min(Sales.DateofSale) as MinDateofsale
 --from Sales
 --join Books on Sales.ID_BOOK=Books.ID_BOOK
 --where Books.ID_AUTHOR=@id)

 
 --SELECT CONCAT(Authors.FirstName, ' ', Authors.LastName) as Fullname ,Y.*
 --FROM Authors
 --CROSS APPLY  dbo.inform(Authors.ID_AUTHOR) as  Y


 SELECT CONCAT(Authors. FirstName, ' ', Authors.LastName) as Fullname, temp.kol,temp.koSale,temp.NameCountry
FROM Authors
CROSS APPLY 
(SELECT  
(select count(Books.ID_BOOK) from Books  where Books.ID_AUTHOR=Authors.ID_AUTHOR)  as kol,
 (select count(Sales.ID_SALE) from Sales join Books on Sales.ID_BOOK=Books.ID_BOOK where Books.ID_AUTHOR=Authors.ID_AUTHOR) as koSale,
 (select country.name from country  join Authors on country.id_country=Authors.ID_COUNTRY where Authors.ID_AUTHOR=Authors.ID_AUTHOR) as NameCountry
group by country.name
) temp



--create function informes(@id int)
-- returns table
-- as return
-- Select 
-- (select count(Books.ID_BOOK) from Books  where Books.ID_AUTHORu@id)  as kol,
-- (select count(Sales.ID_SALE) from Sales join Books on Sales.ID_BOOK=Books.ID_BOOK where Books.ID_AUTHOR=@id) as koSale,
-- (select country.name from country  join Authors on country.id_country=Authors.ID_COUNTRY where Authors.ID_AUTHOR=@id) as NameCountry


 
-- SELECT CONCAT(Authors.FirstName, ' ', Authors.LastName) as Fullname ,Y.*
-- FROM Authors
-- CROSS APPLY  dbo.informes(Authors.ID_AUTHOR) as  Y






--create function searche(@idtheme int)
--returns table as
--return
--select Authors.FirstName as nameth,count(Books.ID_BOOK) as kol_boks
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--where Books.ID_THEME=@idtheme
--group by Authors.FirstName

--select Themes.Nametheme,x.*
--from Themes
--CROSS APPLY 
--searche(Themes.ID_THEME) x