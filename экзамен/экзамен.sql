--CREATE VIEW author AS
--SELECT concat(Authors.FirstName,' ',Authors.LastName) AS cena
--FROM Sales
--join Books on Sales.ID_BOOK=Books.ID_BOOK
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR                                       ---1
--where Sales.DateofSale between Dateadd(Year, -1,Getdate()) and GETDATE()
--group by concat(Authors.FirstName,' ',Authors.LastName)
--having sum(Sales.Quantity*Sales.Price)>1000



--select concat(Authors.FirstName,' ',Authors.LastName) as authorname ,Shops.NameShop,country.name into Temtable
--from Shops
--join Sales on Shops.ID_SHOP=Sales.ID_SHOP
--join Books on Sales.ID_BOOK=Books.ID_BOOK
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country                                                 -------2
--where Authors.ID_AUTHOR in 
--(select Authors.ID_AUTHOR
--from Authors
--join Books on Authors.ID_AUTHOR=Books.ID_BOOK
--join Sales on Books.ID_BOOK=Sales.ID_BOOK
--group by Authors.ID_AUTHOR
--having count(Sales.ID_SHOP)>1)
--select *from Temtable



--CREATE proc Boks_authors
--@namecountry nvarchar(20),
--@getdate date
--as
--if @getdate>Getdate()
--begin
--raiserror('date must less than eror date',11,1)
--rollback tran
--end
--SELECT Books.NameBook,CONCAT(Authors.FirstName,'',Authors.LastName) as name        ------3
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country    
--where country.name=@namecountry and Books.DateofPublich>@getdate
--Exec Boks_authors 'USA','01.01.2015'













--CREATE FUNCTION EmployeesInProject(@authors_name nvarchar(max),@authors_firstname nvarchar(max))
--    RETURNS TABLE	
--    AS 	 
--	RETURN (SELECT Authors.FirstName,Authors.LastName, sum(Sales.Quantity) as sumen
--        FROM Sales
--		join Books on Sales.ID_BOOK=Books.ID_BOOK
--		join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR                                                --4
--		where  Authors.FirstName = @authors_name and Authors.LastName = @authors_firstname
--		group by Authors.FirstName,Authors.LastName
--		)
--		declare  @authors_name nvarchar(max)='Patrick'
--        declare @authors_firstname nvarchar(max)='Fluince'
--       SELECT *  FROM dbo.EmployeesInProject(@authors_name,@authors_firstname)



--select distinct  Authors.FirstName,Authors.LastName , country.name,  
--sum(country.id_country) as country_sym,
--sum(Authors.ID_AUTHOR) as sum_authors 
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country
--where Books.DateofPublich > '2015/01/01' or Books.DateofPublich < '2017/12/31'                          
--and country.name='Ukraine' 
--and country.name='USA'
----group by Rollup (Authors.FirstName,Authors.LastName,Books.Pages,country.name)               -----6
----group by cube (Authors.FirstName,Authors.LastName,Books.Pages,country.name)



--declare curs cursor for
--select country.name ,Authors.FirstName+' '+Authors.LastName,max(Sales.Quantity)
--from Sales
--join Books on Sales.ID_BOOK=Books.ID_BOOK
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country
--group by country.name ,Authors.FirstName+' '+Authors.LastName
--open curs
--print('----- ------------------------------ -------- ----- -----')
--declare @countryname nvarchar(50),@authorname nvarchar(50), @count int
--fetch next from curs into @countryname,@authorname,@count
----print concat(@countryname,replicate(' ',30-len(@countryname)),@authorname,replicate(' ',30-len(@authorname)),' Продано ',replicate(' ',5-len(@count)),@count,'книг')      -----10
--while @@FETCH_STATUS=0
--begin
--print concat(@countryname,replicate(' ',30-len(@countryname)),@authorname,replicate(' ',30-len(@authorname)),' Продано ',replicate(' ',5-len(@count)),@count,'книг')
--fetch next from curs into @countryname,@authorname,@count
--end
--close curs
--deallocate curs





--select *
--from (select Shops.NameShop as 'name', (Books.Price-Sales.Price)*Sales.Quantity as 'Price' ,year(Sales.DateofSale) as 'Year1'
--from Sales
--join Shops on Sales.ID_SHOP=Shops.ID_SHOP
--join Books on Sales.ID_BOOK=Books.ID_BOOK                                      -------7
--Order by Shops.NameShop
--) as SourceTable
--pivot (sum(Price) for Year1 in([2016], [2017],[2018],[2019])) as pvt;




--create Proc registrazia(@id_bok int,@id_shops int,@prise int,@quantity int)as
--begin
--declare @tempquant int
--Select @tempquant=Books.QuantityBooks from Books
--where Books.ID_BOOK=@id_bok
--if @tempquant>@quantity
--begin
--update Books
--set QuantityBooks=Books.QuantityBooks                                                       -----5
--where Books.ID_BOOK=@id_bok
--insert into Sales
--values(@id_bok,'2015.01.01',@prise,@quantity,@id_shops)
--end
--else 
--begin 
--raiserror('eror',11,1)
--rollback tran
--end
--end;
--Exec registrazia 75,2,215,4




--select Authors.FirstName,+' '+ Authors.LastName as Author,country.name as NameCountry, Books.NameBook as Name 
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--join country on Authors.ID_COUNTRY=country.id_country                                                                 -----9
--where Books.Pages in (
--select max(Books.Pages ) from Books
--union 
--select min(Books.Pages) from Books
--)

























