--declare @i int set @i=1
--declare @j int set @j=2
--if @i<@j                                  --1
--PRINT 'j максимальное'
--else 
--PRINT 'i максимальное '


--declare @fact int=1, @i int=1
--while @i<7
--begin
--set @fact=@fact*@i              --2
--set @i=@i+1
--end 
--print @fact


--declare @i int set @i=2
--declare @rez int set @rez=0
--while @i<30  
--begin                   
--if(@i%2=0)                             --3
--Set @rez=@rez+@i
--Set @i=@i+1
--end

--print @rez


-- create view Total as
--select Shops.NameShop as Name, Country.Name as Country,
--'ShortName'=case Country.Name 
--when 'Ukrain' then 'UKR'
--when 'Russia' then 'RUS'                                                  --4
--when 'China' then 'CHI'
--when 'Japan' then 'JAP'
--else 'Other countries'
--end
--from Shops join Country on Shops.ID_COUNTRY=Country.id_country
--select * from Total



--DECLARE @MySales TABLE ( Date_of_sale date, quanation INT)
--INSERT INTO @MySales
--SELECT Sales.DateofSale,Sales.Quantity                             --5
--FROM Shops
--join Sales on Sales.ID_SALE=Shops.ID_SHOP
--Select * from @MySales


--update Books
--Set price=case
--when Year(DateofPublich)>2008 then Price+1000
--when Year(DateofPublich)<=2008 then Price+100     --6
--end
--select * from Books


















