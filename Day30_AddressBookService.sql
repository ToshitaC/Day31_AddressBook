#UC1

Create database AddressBookService;
show databases;
use AddressBookService;


#UC2

create table AddressBookService
(
firstname  varchar(30) not null primary key,
lastname  varchar(30) not null,
address  varchar(50) not null,
city  varchar(20) not null,
state  varchar(25) not null,
zip int not null ,
phone varchar(25) not null,
email  varchar(25) not null 
);
desc AddressBookService;

#UC3

select *from AddressBookService;
insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Toshita','Chaudhari','ganesh nagar','Dombivli','MH',421202,'9874584458','abc@gmail.com');
 
insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Yatin','Rane','Khadakpala','Kalyan','MH',45412,'9874587412','def@gmail.com');

insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Sachin','Chaudhari','Nehrunagar','Titwala','MH',487102,'9834940036','sachin@gmail.com');

insert into AddressBookService(firstname,lastname,address,city,state,zip,phone,email)
values('Reva','Patil','Navinagar','Thane','MH',85462,'9845123265','xyz@gmail.com');

 #UC4
 
 select *from AddressBookService;
 update AddressBookService set city='Kalyan', phone='9874587412' where firstname='Toshita';
 
 
#UC5

select *from AddressBookService;
delete from AddressBookService where firstname='Toshita';

#UC6
 
select *from AddressBookService where city='Titwala'; 
select *from AddressBookService where state='MH'; 
select *from AddressBookService where city='Thane' or state='MH';  
  
#UC7

select count(*)from AddressBookService where city='Kalyan'; 
select count(*)from AddressBookService where state='MH'; 

#UC8
   
select firstname,city from AddressBookService  order by city;

#UC9

alter table AddressBookService add name varchar(30) not null ,add type varchar(30) not null;
desc AddressBookService;
select *from AddressBookService;
update AddressBookService set name='Family', type='Brother' where firstname='Yatin';
update AddressBookService set name='Friend', type='Family' where firstname='Reva';
update AddressBookService set name='College', type='Family' where firstname='Sachin';


