create database if not exists ordersdb;
-- drop database ordersdb ;
use ordersdb ;

create table sales_people (
snum int not null  ,
sname varchar(20) not null,
scity varchar(25) not null ,
scumm int  (10) not null,
primary key(snum)

);

create table customer (
cusnum int not null ,
cusname varchar(25) not null,
cuscity varchar(12) not null ,
primary key (cusnum)
);

create table sales_orders(
sonum int not null,
soamt decimal (10,2),
sodate date not null default '0000-00-00', 
primary key(onum),
foreign key (cusnum) references customer(cusnum),
foreign key (snum) references sales_people(snum)

);

desc sales_people;
desc customer;
desc sales_orders;

insert into sales_people values
(1001 ,'Peel', 'London',12),

(1002, 'Serres', 'Sanjose',13),

(1004, 'Motika',' London',11),

(1007,'Rifkin', 'Barcelona',15),

(1003, 'Axelrod', 'Newyork',10);

insert into customer values
(2001, 'Hoffman', 'London', 1001),

(2002,  'Giovanni', 'Rome', 1003),

(2003, ' Liu', 'Sanjose', 1002),

(2004 ,'Grass','Berlin', 1002),

(2006,'Clemens',' London',1001),

(2008,' Cisneros', 'Sanjose', 1007),

(2007,' Pereira', 'Rome', 1004);

insert into sales_orders values
(3001, 18.69, 3-10-1990, 2008 ,1007),
(3003, 767.19, 3-10-1990, 2001, 1001),
(3002 ,1900.10, 3-10-1990, 2007, 1004),
(3005 , 5160.45, 3-10-1990, 2003, 1002),
(3009, 1713.23 ,4-10-1990 ,2002, 1003),
(3008,  4273.00, 5-10-1990, 2006 ,1001),
(3010 , 1309.95, 6-10-1990 ,2004 ,1002),
(3011,  9891.88, 6-10-1990, 2006, 1001);
select * from sales_people;
select * from customer;
select * from sales_orders;

select 
snum as 'sale number',
sname as 'sales people name',
cusnum as 'Customer number',
cusname as ' customer Name',
sodate as 'sales_order Date',
soamt as 'sales_order amount',
sonum as 'sales_order number'
from sales_people as s
inner join customer as cus
inner join sales_orders as so; 
 select * from sales_persons where sname like 'a%''A%';
 select * from sales_order where soamt >2000 ;
 select * from sales_people where scity ='newyork' ;
  select * from sales_people where scity ='landon'and 'paries';
 select * from sales_orders where  sodate  and sname;

