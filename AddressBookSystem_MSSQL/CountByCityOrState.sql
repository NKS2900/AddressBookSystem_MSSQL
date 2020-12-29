select count(state) from [dbo].[address_book] where state = 'Maharashtra';

select count(city) from [dbo].[address_book] where city = 'Latur';

select count(first_name) from [dbo].[address_book] 
where city = 'Beed' AND state = 'Maharashtra';

