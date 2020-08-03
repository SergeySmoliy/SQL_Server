--create index name_author on Authors(FirstName) --1
--create index boks_name on Books(NameBook)---------2


--select  Sales.Price into tempTable from Sales
--where Sales.Price>55
--create clustered index id_news on tempTable(Price); --3



--create index i_country_USA on Country(name) where ---4
--name = 'USA';



--create index id_shop on Shops(NameShop) where --5
--NameShop = 'ITBook';


--create index cover_index on country(id_country) include(name) --6






--create table news_infos
--(
--id int not null,
--Name_book nvarchar(50),
--prise int not null,
--Drawing_of_book int not null,         ---------7
--Dateofpublich date not null,
--pages int not null,
--QuantityBooks int not null,
--theme_id int not null,
--Authors_id int not null
--)



--alter table Sales
--add profit  as Price*Quantity
--create index inedxer on Sales(profit)  --------8
--Select *from Sales 
--with(index(inedxer))
--where profit>900



 --ALTER INDEX  PK__Authors__6DCBACC298BC36C7    ON Authors DISABLE --------9
 --ALTER INDEX  PK__Authors__6DCBACC298BC36C7    ON Authors REBUILD
 --select * from Authors

