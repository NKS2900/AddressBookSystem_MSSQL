create table Address
(
address_id int not null primary key,
address varchar(200) not null,
city varchar(50) not null,
state varchar(50) not null,
zip varchar not null
)
insert into Address values
(101,'street1','Beed','maharashtra',415263),
(102,'dighi','pune','maharashtra',417896),
(103,'oophighway','portugal','goa',442356),
(104,'bhosari','pune','maharashtra',444425),
(105,'fivestar','bengluru','karnataka',415263),
(106,'lacaldb','lacknau','madyapradesh',456123);
select * from Address;

create table ContactType
(
contact_type_id int not null  primary key,
contact_type_name varchar(100) not null
)
insert into ContactType values
(701,'Family'),
(702,'Friend'),
(703,'Office');
select * from ContactType;

create table Contact
(
contact_id int not null primary key,
address_id int not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
phone_number varchar(10) not null,
email varchar(100) not null,
contact_name varchar(20) not null,
foreign key(address_id) REFERENCES Address(address_id)
)
insert into Contact values
(1,101,'Nijam','Sayyad',9178456321,'nks1@gmail,com','family'),
(2,102,'Imran','Shaikh',7485961230,'imra@gmail,com','family'),
(3,103,'Dipak','Nagargoje',7894561230,'dipak@gmail,com','friend'),
(4,104,'Mahesh','Kande',7849612345,'mahesh@gmail,com','friend'),
(5,105,'Vishal','Karad',8796541230,'karad@gmail,com','office');
select * from Contact;

create table ContactConnection
(
contact_connection_id int not null primary key,
contact_id int not null,
contact_type_id int not null
foreign key(contact_id) REFERENCES Contact(contact_id),
foreign key(contact_type_id) REFERENCES ContactType(contact_type_id)
)
insert into ContactConnection values
(401,1,701),
(402,2,701),
(403,3,702),
(404,4,702),
(405,2,703);

select * from ContactConnection;
