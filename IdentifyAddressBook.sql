alter table [dbo].[address_book] add bookname varchar(20)

update [dbo].[address_book] set bookname= 'family' where first_name = 'Nijam'
update [dbo].[address_book] set bookname = 'family' where first_name = 'Imran'
update [dbo].[address_book] set bookname= 'friend' where first_name = 'Dipak'
update [dbo].[address_book] set bookname = 'family' where first_name = 'Mohin'
update [dbo].[address_book] set bookname = 'office' where first_name = 'Irshad'
update [dbo].[address_book] set bookname= 'friend' where first_name = 'Vishal'
update [dbo].[address_book] set bookname = 'office' where first_name = 'Mahesh'

select * from dbo.address_book where bookname='family'
select * from dbo.address_book where bookname='friend'
select first_name,last_name,phone_number from [dbo].[address_book] where bookname='office'