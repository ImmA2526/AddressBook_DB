alter table [dbo].[AddressBook] add BookName varchar(20),BookType varchar(30);
update [dbo].[AddressBook] set BookName='Family_Book', BookType='Family' where firstName='nijam';
update [dbo].[AddressBook] set BookName='Friend_Book' ,BookType='Friend' where firstName='maske';
update [dbo].[AddressBook] set BookName='Friend_Book' ,BookType='Friend' where firstName='dandge';


select * from AddressBook