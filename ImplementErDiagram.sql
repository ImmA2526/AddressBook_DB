create table AddressDetail
(
	addressID int not null primary key,
	area varchar(20) not null,
	city varchar(20) not null,
	state varchar(20) not null,
	zip int not null
)	

insert into AddressDetail values
	(22,'Dighi','Pune','maha',444332),
	(24,'MAldhok','Kashmir','maha',888888),
	(26,'Dighi','Pune','maha',444334),
	(28,'Noida','Delhi','NCR',544332)
	
select * from AddressDetail

create table PersonalDetail
(
	personID int not null primary key,
	addressID int not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	phone_number bigint not null,
	foreign key(addressID) REFERENCES AddressDetail(addressID)
)
insert into PersonalDetail values
	(1,22,'Imran','Shaikh','1234567890'),
	(2,24,'Nijam','Shaikh','1234567999'),
	(3,28,'Khalid','Shaikh','8988884433')

select * from PersonalDetail

create table ContactType
(
	contactID int primary key not null,
	contactName varchar (20) not null,
)

insert into ContactType values
	(112,'Family'),
	(114,'Friends'),
	(115,'Official')

select * from ContactType

create table Person_Contact
(
	paID int primary key not null,
	contactID int not null,
	personID int not null,
	foreign key (contactID) REFERENCES ContactType(contactID),
	foreign key (personID) REFERENCES PersonalDetail(personID)
)

insert into Person_Contact values
	(100,112,1),
	(101,114,2),
	(102,115,3)

select * from Person_Contact
