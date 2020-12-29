select * from Contact c inner join Address a on
c.address_id=a.address_id inner join ContactConnection cn on
c.contact_id=cn.contact_id inner join ContactType ct on
cn.contact_type_id=ct.contact_type_id where a.city='Pune' or a.state='Maharashtra'

select COUNT(city) as 'number_of_contacts' from Address where city='Pune';
select COUNT(state) as 'number_of_contacts' from Address where state='Maharashtra';

select * from Contact c inner join Address a on
c.address_id=a.address_id inner join ContactConnection cn on
c.contact_id=cn.contact_id inner join ContactType ct on
cn.contact_type_id=ct.contact_type_id where a.city='pune' order by c.first_name

select * from Contact c inner join Address a on
c.address_id=a.address_id inner join ContactConnection cn on
c.contact_id=cn.contact_id inner join ContactType ct on
cn.contact_type_id=ct.contact_type_id where ct.contact_type_name='Family'