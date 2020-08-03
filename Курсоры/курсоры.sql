--declare curs cursor for
--select Shops.NameShop, sum(Sales.Quantity)
--from Shops
--join Sales on Shops.ID_SHOP=Sales.ID_SHOP
--group by Shops.NameShop
--open curs

--print('----- ------------------------------ -------- ----- -----')
--declare @shopname nvarchar(20),@sumquantity int
--fetch next from curs into @shopname,@sumquantity
--print concat('shops ',@shopname,replicate(' ',30-len(@shopname)),' has sold ',replicate(' ',5-len(@sumquantity)),@sumquantity,' books')
--while @@FETCH_STATUS=0
--begin
--fetch next from curs into @shopname,@sumquantity
--print concat('shops ',@shopname,replicate(' ',30-len(@shopname)),' has sold ',replicate(' ',5-len(@sumquantity)),@sumquantity,' books')
--end
--close curs
--deallocate curs
--------------------------------------------------------------------------------------------------------------------------------------------------1

--declare cnt_cursor 
--cursor local scroll dynamic for
--select Themes.Nametheme ,count(Authors.ID_AUTHOR) from Themes
--join Books on Themes.ID_THEME=Books.ID_THEME
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by Themes.Nametheme
--open cnt_cursor
--print('----- ------------------------------ -------- ----- -----')
--declare @nametheme nvarchar(20),@kol_avtorov int
--fetch next from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--while @@FETCH_STATUS=0
--begin
--fetch next from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' kol_avtorov')
--end
--close cnt_cursor
--deallocate cnt_cursor








--declare cnt_cursor cursor local scroll for
--select Themes.Nametheme ,count(Authors.ID_AUTHOR) from Themes
--join Books on Themes.ID_THEME=Books.ID_THEME
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by Themes.Nametheme
--open cnt_cursor
--print('----- ------------------------------ -------- ----- -----')
--declare @nametheme nvarchar(20),@kol_avtorov int
--fetch next from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--close cnt_cursor
--deallocate cnt_cursor



--declare cnt_cursor cursor local scroll for
--select Themes.Nametheme ,count(Authors.ID_AUTHOR) from Themes
--join Books on Themes.ID_THEME=Books.ID_THEME
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by Themes.Nametheme
--open cnt_cursor
--print('----- ------------------------------ -------- ----- -----')
--declare @nametheme nvarchar(20),@kol_avtorov int
--fetch absolute 5 from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--close cnt_cursor
--deallocate cnt_cursor


--declare cnt_cursor cursor local scroll for
--select Themes.Nametheme ,count(Authors.ID_AUTHOR) from Themes
--join Books on Themes.ID_THEME=Books.ID_THEME
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by Themes.Nametheme
--open cnt_cursor
--print('----- ------------------------------ -------- ----- -----')
--declare @nametheme nvarchar(20),@kol_avtorov int
--fetch absolute 3 from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--close cnt_cursor
--deallocate cnt_cursor


--declare cnt_cursor cursor local scroll for
--select Themes.Nametheme ,count(Authors.ID_AUTHOR) as kol_avtor from Themes
--join Books on Themes.ID_THEME=Books.ID_THEME
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--group by Themes.Nametheme
--open cnt_cursor
--print('----- ------------------------------ -------- ----- -----')
--declare @nametheme nvarchar(20),@kol_avtorov int
--fetch absolute   3 from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--fetch relative   2 from cnt_cursor into @nametheme,@kol_avtorov
--print concat('nametheme ',@nametheme,replicate(' ',30-len(@nametheme)),replicate(' ',5-len(@kol_avtorov)),@kol_avtorov,' @kol_avtorov')
--close cnt_cursor
--deallocate cnt_cursor





declare cnt_cursor cursor local scroll for
select Authors.FirstName + ' ' +   Authors.LastName  ,count(Books.ID_AUTHOR) from Themes,Books
join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
group by Authors.FirstName + ' ' +   Authors.LastName
open cnt_cursor
print('----- ------------------------------ -------- ----- -----')
declare @firstname nvarchar(20),@kol_knig int
fetch next  from cnt_cursor into @firstname,@kol_knig
print concat('Автор  ',@firstname,replicate(' ',30-len(@firstname)),'Написал ', replicate(' ',5-len(@kol_knig)),@kol_knig,' книг ')
while  @@FETCH_STATUS=0
begin
fetch next  from cnt_cursor into @firstname,@kol_knig
print concat('Автор  ',@firstname,replicate(' ',30-len(@firstname)),'Написал ', replicate(' ',5-len(@kol_knig)),@kol_knig,' книг ')
end
close cnt_cursor
deallocate cnt_cursor