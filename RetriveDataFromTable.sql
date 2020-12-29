/*UC 6 Retrive Data by sttate or City*/

select * from PersonalDetail p inner join AddressDetail a on
p.addressID =a.addressID inner join Person_Contact pc on
p.personID=pc.personID inner join ContactType ct on
pc.contactID=ct.contactID where a.city='Pune' or a.state='maha'

/*UC 7 Retruve Count */

select COUNT(city) from addressDetail where city='Pune'
select COUNT(state) from addressDetail where state='Maha'

/*UC 8 Retrive Data From Table Using Order by */

select * from PersonalDetail p inner join AddressDetail a on
p.addressID =a.addressID inner join Person_Contact pc on
p.personID=pc.personID inner join ContactType ct on
pc.contactID=ct.contactID where a.city='Pune' order by p.first_name
