--Create Function shopse()
--Returns int
--Begin 

--Declare @idshop int
--Select @idshop=count(ID_SHOP) from Shops

--Return @idshop
 
--End;

--Print dbo.shopse()


--Create FUNCTION Minimum(@x int,@y int,@s int)
--Returns int
--Begin
--declare @num1 int ,@num2 int, @num3 int, @res int
--set @num1=@x
--set @num2=@y
--set @num3=@s
--if(@num1<@num2 and @num1<@num3)
--return @num1
--else if(@num2<@num1 and @num2<@num3)
--return @num2
--else if(@num3<@num1 and @num3<@num2)
--set @res=@num3
--return @res
--End;

--DECLARE @num1 int,@num2 int,@num3 int
--set @num1=1
--set @num2=2
--set @num3=3
--Print dbo.Minimum(@num1,@num2,@num3)



--Create Function Cteseson(@indate date)
--returns nvarchar(10)
--as
--begin

--declare @xy nvarchar(max)
--if MONTH(@indate) in(1,2,12)
--set @xy='Зима'
--if MONTH(@indate) in(3,4,5)
--set @xy='Весна'
--if MONTH(@indate) in(6,7,8)
--set @xy='Лето'
--if MONTH(@indate) in(9,10,11)
--set @xy='Осень'
--return @xy
--end;

--declare @date  date='2018-02-04'
--print dbo.Cteseson(@date)




--with temp as
--(select dbo.Cteseson(Dateofsale)  as season,
--sum(Quantity) as totalquent
--from Sales
--group by dbo.Cteseson(Dateofsale)
--)
--select season from temp
--where totalquent=(select max(totalquent) from temp)



--Create FUNCTION Getinfo(@thematiko nvarchar(max))
--returns table
--as return (select  Books.NameBook as boksname ,Themes.Nametheme as themename from Books
--join Themes on Books.ID_THEME=Themes.ID_THEME
--where Themes.Nametheme=@thematiko
--)
--declare @theme nvarchar(max)='Fantasy'
--select * from Getinfo(@theme)




--Create function getfunks(@arifmetiks date)
--returns money as
--Begin 

--Declare @avgPrice money
--Select @avgPrice=Avg(Price) from Sales
--where Sales.DateofSale<@arifmetiks
--Return @avgPrice
--End;

--declare @arifmetiks  date='2018-02-04'
--print dbo.getfunks(@arifmetiks)


--Create function getfunks(@themat nvarchar(max))
--returns money as
--Begin
--Declare @zenys money
--Select @zenys=Max(Books.Price) from Books
--join Themes on Themes.ID_THEME=Books.ID_THEME
--where Themes.Nametheme<@themat
--Return @zenys
--end;
--declare @themat nvarchar(max)='Fantasy'
--print dbo.getfunks(@themat)




Create function getfunks(@FamAutor nvarchar(max),@tematika nvarchar(max), @sortRule bit)
returns table as return
(
Select top 3 Authors.LastName,Themes.Nametheme
from Authors
join Books on Authors.ID_AUTHOR=Books.ID_AUTHOR
join Themes on Books.ID_THEME=Themes.ID_THEME
where  Authors.LastName=@FamAutor and Themes.Nametheme=@tematika
Order by 
case when @sortRule=0 then Books.Price end ASC,
case when @sortRule=1 then Books.Price end DESC
)

declare  @FamAutor nvarchar(max)='Fluince'
declare @tematika nvarchar(max)='Fantasy'
select *  from  getfunks(@FamAutor,@tematika, 0)
