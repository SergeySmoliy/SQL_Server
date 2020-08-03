--create login Smoliy 
--with password = '19.08.1999';
--------------------------------1

--create login Sergei_Smoliy
--with password = 'superpassword',
--default_database=PublishingHouse

------------------------------------2
--alter login Sergei_Smoliy
--with password = 'superpassword'
--must_change,check_expiration=on
---------------------------------------3
--create user Sergei for login Sergei_Smoliy
--create schema Book
--create schema Globall 
--create schema Sale 

--alter schema [Book] transfer themes

--alter schema Book transfer Books

--alter schema Book transfer Authors 


--alter schema [Globall] transfer Country 

--alter schema Sale transfer Shops

--alter schema Sale transfer Sales 
--------------------------------------------4

--Create User Sergei for Login  Sergei_Smoliy
--with Default_schema=Sale
---------------------------------------------5
--Select CuRRent_USER as Users
---------------------------------------------6

--alter role   db_datareader  add member Sergei
--alter role db_owner
-- add role db_denydatawriter 
 ---------------------------------------------7
 --create login Smoliy
 --WITH password ='forb',
 --default_database=PublishingHouse
 ----------------------------------------------8


