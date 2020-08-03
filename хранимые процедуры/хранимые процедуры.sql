--Create Proc maxValue
--@x int,
--@y int
--AS
--if @x>@y
--Print 'x>y'
--else 
--Print 'y>x'



--Declare @max int
--DECLARE @num1  nvarchar(14);
--DECLARE @num2 nvarchar(20);
--Set @num1=2
--Set @num2=4


--EXEC maxValue @num1,@num2


--create Proc AlllboksAuthor
--@nameofauthor nvarchar(20)
--as
--begin
--select *from
--Books join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--where Authors.FirstName=@nameofauthor
--end
--declare @name nvarchar(20)='Ganna'
--Exec AlllboksAuthor @name


--create Proc Shopsale as
--begin
--select Shops.NameShop,country.name
--from country 
--join Shops on Shops.ID_COUNTRY=country.id_country 
--join Sales on Shops.ID_SHOP=Sales.ID_SHOP
--GROUP BY Shops.NameShop,country.name
--end
--EXEC Shopsale


--create Proc PriseThemeWithsort
--@theme nvarchar(20),
--@sorture int
--as
--begin
--select Books.NameBook,Books.Price,@theme as thematik
--from Books
--join Themes on Books.ID_THEME=Themes.ID_THEME
--where Themes.Nametheme=@theme
--ORDER BY 
--case when @sorture=0 then Books.Price end ASC,
--case when @sorture=1 then Books.Price end DESC
--end

--declare @theme1 nvarchar(20)='Computer science'
--declare @sorture1 int=1

--EXEC PriseThemeWithsort @theme1,@sorture1



--create  Proc maxQuantity
--@namemasauthor nvarchar(20) output
--as
--with Template as
--(
--select Authors.FirstName+' '+Authors.LastName as TotalName , sum(Sales.Quantity) as sumQuantity
--from Authors 
--join Books on Books.ID_AUTHOR=Authors.ID_AUTHOR 
--join Sales on Sales.ID_BOOK=Books.ID_BOOK 
--group by Authors.FirstName+' '+Authors.LastName
--)
--select @namemasauthor=TotalName
--from Template
--where  sumQuantity=(select  max(sumQuantity)from Template)


--declare @nameauthor nvarchar(20)
--Exec Maxquantity @nameauthor output
--print @nameauthor



--create proc DateBetween
--@firsdate date,
--@secondDate date
--as
--begin
--if @firsdate=@secondDate
--raiserror('dates is aqual',1,1)
--if @firsdate>@secondDate
--raiserror('firsdate>secondDate',1,1)
--update Books
--set Price=Price+0.2*Price
--where DateofPublich Between @firsdate and @secondDate
--end

--Exec DateBetween '2001-01-01','2008-01-01'
--select *from Books






