alter table [dbo].[address_book] add bookname varchar(20) not null default 'address001'
alter table [dbo].[address_book] add addressbooktype varchar(20) not null default 'family'


update [dbo].[address_book] set bookname= 'address001' where first_name = 'Nijam'
update [dbo].[address_book] set bookname = 'address001' where first_name = 'Imran'
update [dbo].[address_book] set bookname= 'address002' where first_name = 'Dipak'
update [dbo].[address_book] set bookname = 'address001' where first_name = 'Mohin'
update [dbo].[address_book] set bookname = 'address003' where first_name = 'Irshad'
update [dbo].[address_book] set bookname= 'address002' where first_name = 'Vishal'
update [dbo].[address_book] set bookname = 'address003' where first_name = 'Mahesh'

update [dbo].[address_book] set addressbooktype = 'family' where bookname='address001'
update [dbo].[address_book] set addressbooktype = 'friend' where bookname='address002'
update [dbo].[address_book] set addressbooktype = 'office' where bookname='address003'

select * from [dbo].[address_book] where addressbooktype='family'