select COUNT(city) from [dbo].[AddressBook] where city='pune';

select COUNT(state) from [dbo].[AddressBook] where state='maha';

select COUNT(firstName) from [dbo].[AddressBook]
where city='Dubai' AND state='maha';