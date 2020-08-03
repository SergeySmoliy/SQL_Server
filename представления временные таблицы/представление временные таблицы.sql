--create database PublishingHouse on primary
--(name = PublishingHouseDB, filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PublishingHouseDB.mdf',
--size = 10MB,
--maxsize = 100MB,
--filegrowth = 2MB)
--LOG ON
--(name = PublishingHouseDB_Log,
--filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PublishingHouseDB_Log.ldf',
--size = 8MB,
--maxsize = 60MB,
--filegrowth = 1MB)

--use PublishingHouse
--create table country
--(
--id_country int primary key not null identity(1,1),
--name nvarchar(100) not null
--)
--Create Table Shops
--(
--ID_SHOP int not null identity(1, 1) primary key,
--NameShop nvarchar(max) not null check(NameShop!='') Default 'myshop',
--ID_COUNTRY int not null 
--)
--Create Table Authors
--(
--ID_AUTHOR int not null identity(1, 1) primary key,
--FirstName nvarchar(max) not null check(FirstName!='') Default 'myname',
--LastName nvarchar(max) not null check(LastName!='') Default 'mylastname' ,
--ID_COUNTRY int not null check(ID_COUNTRY!='') Default 1
--)
--Create Table Themes
--(
--ID_THEME int not null identity(1, 1) primary key,
--Nametheme nvarchar(max) not null check(Nametheme!='') Default 'mytheme'
--)
--Create Table Sales
--(
--ID_SALE int not null identity(1, 1) primary key,
--ID_BOOK int not null ,
--DateofSale date not null check ([DateofSale] <= getdate()) default getdate(),
--Price int not null check(Price!='') Default 1 ,
--Quantity int not null check(Quantity!='') Default 1,
--ID_SHOP int not null  
--)
--Create Table Books
--(
--ID_BOOK int not null identity(1, 1) primary key,
--NameBook nvarchar(max) not null check(NameBook!='') Default 'mybook',
--ID_THEME int not null ,
--ID_AUTHOR int not null ,
--Price int not null check(Price!='') Default 1,
--DrawingofBook nvarchar(max) not null check(DrawingofBook!='') Default 'draw',
--DateofPublich date not null check ([DateofPublich] <= getdate()) default getdate(),
--Pages int not null Default 1
--)

--alter table [Shops]
--add foreign key ([ID_COUNTRY]) references [Country]([ID_COUNTRY]);


--alter table [Authors]
--add foreign key ([ID_COUNTRY]) references [Country]([ID_COUNTRY]);


--alter table [Sales]
--add foreign key ([ID_SHOP]) references [Shops]([ID_SHOP]);

--alter table [Sales]
--add foreign key ([ID_BOOK]) references [Books]([ID_BOOK]);

--alter table [Books]
--add foreign key ([ID_THEME]) references [Themes]([ID_THEME]);


--alter table [Books]
--add foreign key ([ID_AUTHOR]) references [Authors]([ID_AUTHOR]);


-- Themes
--	('Computer science'),
--	('Programming'),
--	('Web Development'),
--	('Database theory'),
--	('Networks ans security')


-- Country
--	('USA'),
--	('France'),
--	('Germany'),
--	('England'),
--	('Ukraine'),
--	('Sweden'),
--	('Poland'),
--	('Italy'),
--	('Spain'),
--	('Greece')


--Shops
--	('Books for IT', 2),
--	('ITBook', 3),
--	('Book.com', 4),
--	('Books.Kingdom', 5),
--	('RidniBooks', 6),
--	('Readers.SW', 7),
--	('Bukwoedy', 8)


--Authors
--	('Patrick', 'Fluince', 2),
--	('Mark', 'Schaize', 3),
--	('Sam', 'Duck', 4),
--	('Ganna', 'Lyisko', 5),
--	('Drek', 'Frucken', 6),
--	('Janush', 'Navak', 7),
--	('Vlad', 'Ole', 8),
--	('Eden', 'Speilenman', 9),
--	('Aristotel', 'Greckiy', 10),
--	('John', 'Nork', 11)


--INSERT INTO Books
--Values
--	('First steps on PC',1, 41, 59.99, 10000, '2000-01-15', 345 ),
--	('PC it is pro100' , 1, 42 , 29.99, 5000, '2002-02-22', 444),
--	('C++ for newbies' ,2, 43, 35.99, 15000, '2001-05-20', 542),
--	('C++ for professional' , 2, 44 , 39.99, 25000, '2003-05-20', 245),
--	('HTML + CSS', 3, 45, 25.99, 50000, '2005-08-01', 564),
--	('HTML 5.0', 3, 46, 20.99, 45000, '2009-11-11', 600),
--	('MS SQL', 4, 47 ,55.55, 85000, '2015-12-21', 350),
--	('Theory of TCP\IP' , 5, 48 , 15.95, 20000, '1995-03-08', 588),
--	('Introducing on network', 5, 49, 17.95, 22000, '1992-01-05', 754),
--	('Newest PC' ,1, 50, 95.59, 75000, '2016-12-21', 792),
--	('Overclocking PC', 1, 51, 105.59, 97000, '2016-12-21', 379),
--	('Java for newbies' ,2, 42, 58.49, 38000, '2001-05-20', 555),
--	('C# and WPF for professional',2, 43, 55.99, 50000, '2003-05-20', 888),
--	('Phyton for web', 3, 44, 76.55, 50000, '2005-07-07', 564),
--	('JavaScript for web', 3, 45, 67.50, 45000, '2009-08-10', 600),
--	('MS SQL 2017', 4, 46, 15.95, 95000, '2017-01-17', 755),
--	('Introducing to NoSQL', 4, 47, 144.99, 77550, '2018-02-21', 350),
--	('TCP\IP protocol', 5, 48, 99.95, 24000, '1999-09-09', 788),
--	('Hacking on networks', 5, 49, 87.95, 27000, '2000-12-13', 454)



--INSERT INTO Sales
--Values

--	--(74,'2018-06-01', 88, 5, 5)
--	(75,'2018-06-02', 55.29, 3, 6),
--	(76 ,'2018-06-03', 43.99, 2,  7),
--	(77 ,'2018-06-04', 39.99, 4, 1),
--	(78 ,'2018-06-05', 35.75, 1, 5),
--	(79,'2018-06-06', 30.00, 2, 6),
--	(80,'2018-06-07', 13.95, 1, 7),
--	(81,'2018-06-08', 115.55, 7, 2),
--	(82,'2018-06-09', 45.95, 8, 7),
--	(83,'2018-06-10', 37.95, 3, 2),
--	(84,'2018-06-11', 355.95, 2, 2),
--	(85,'2018-06-12', 95.49, 11, 3),
--	(86,'2018-06-13', 48.99, 25,  3),
--	(87,'2018-06-14', 79.99, 54, 4),
--	(88,'2018-06-15', 86.99, 14, 5),
--	(89,'2018-06-16', 97.55, 27, 6),
--	(90,'2018-06-17', 13.95, 18, 7),
--	(91,'2018-06-18', 225.00, 72, 3),
--	(92,'2018-06-19', 145.95, 48,  4),
--	(79,'2018-06-20', 137.95, 53,  5)



--ALTER DATABASE PublishingHouse MODIFY NAME = Publishing; 
