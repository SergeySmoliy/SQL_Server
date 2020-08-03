--Alter table Books 
--add  QuantityBooks int not null Default 50


--create trigger updatequantutybook
--on Sales
--After insert,update as
--begin
--declare @id int,@quant int
--select @id=ID_BOOK,@quant=Quantity
--from inserted
--if @quant>(Select  QuantityBooks  from Books where ID_BOOK=@id)
--begin
--raiserror('quantity of inserted books lages that mustte be', 11,1 )
--rollback tran
--end
--else
--begin
--update Books
--set QuantityBooks=QuantityBooks-@quant
--where ID_BOOK=@id
--end
--end;
--insert into Sales
--values(78,'2018.01.02',25,20,5)



Create Table [dbo].[DeletedBooks](

	[NameBook] [nvarchar](max) NOT NULL DEFAULT ('mybook'),
	[ID_THEME] [int] NOT NULL,
	[ID_AUTHOR] [int] NOT NULL,
	[Price] [int] NOT NULL DEFAULT ((1)),
	[DrawingofBook] [nvarchar](max) NOT NULL DEFAULT ('draw'),
	[DateofPublich] [date] NOT NULL DEFAULT (getdate()),
	[Pages] [int] NOT NULL DEFAULT ((1)),
	[QuantityBooks] [int] NOT NULL DEFAULT ((50)))

alter table [DeletedBooks]
add foreign key (ID_THEME) references Themes(ID_THEME),foreign key (ID_AUTHOR) references Authors([ID_AUTHOR])


CREATE TRIGGER Products_DELETE
ON Books
AFTER DELETE
AS
INSERT INTO DeletedBooks (NameBook,ID_THEME,ID_AUTHOR,Price,DrawingofBook,DateofPublich,Pages,QuantityBooks)
SELECT Namebook,ID_THEME,ID_AUTHOR,Price,DrawingofBook,DateofPublich,Pages,QuantityBooks
FROM DELETED
alter table Sales
drop constraint FK__Sales__ID_BOOK__34C8D9D1

DELETE FROM Books where NameBook='Microsoft steps on PC'
SELECT * FROM DeletedBooks




--create trigger cheskprise
--on sales
--after insert,update 
--as
--begin
--declare @id int,@prise money
--select @id=ID_BOOK,@prise=Price
--from inserted
--if @prise<(select @prise from Books where ID_BOOK=@id)
--begin
--raiserror('Eror',11,1)
--rollback tran
--end;
--end;


--create trigger checkDate
--on Books
--after insert ,update
--as
--begin
--declare @addDate date
--select @addDate=DateofPublich
--from inserted
--if @addDate=''
--begin
--RAISERROR('Eror',0,1)
--rollback tran
--end
--end

--insert into Books
--values('Avtor',1,41,200,'The book popylar','',200,10)













