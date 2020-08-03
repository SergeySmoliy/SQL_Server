




--select Themes.Nametheme as'theme',
--(select Authors.FirstName+' '+Authors.LastName as 'autor',
--Books.NameBook as'bookname',Books.Pages as 'pages',              -------1
--Books.Price as 'prise'
--from Books
--join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--for xml raw('book'), elements, type
--)
--from Themes
--for xml raw('themes'),root('themes')



--select Themes.Nametheme as'nametheme',
--	(select Authors.FirstName+' '+Authors.LastName as 'fullname',
--		(
--		select Books.NameBook as'bookname',Books.Pages as 'pages', ------------2
--		Books.Price as 'prise'
--		from Books
--		where Books.ID_THEME=Themes.ID_THEME
--		for xml raw('book'), type
--		)
--	from Authors
--	for xml raw('author'), type
--	)
--from Themes
--for xml raw('theme'),root('themes')




--select Books.NameBook as'book', Authors.FirstName+ ' '+ Authors.LastName as 'nameboks',
--		(
--		select Shops.NameShop as'shops',Sales.Quantity as 'totalsold'
--		from Shops,Sales
--		where Shops.ID_SHOP=Sales.ID_SHOP and Sales.ID_BOOK=Books.ID_BOOK     -----------------------3
--		for xml raw('shops'), type
--		)
	
--from Books join Authors on Books.ID_AUTHOR=Authors.ID_AUTHOR
--for xml raw('name'),root('booksSold')

