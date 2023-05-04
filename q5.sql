select * from manager;
-- finding 2nd largest salary from manager
select m_name, salary from manager order by salary desc limit 1,1;

-- finding the 3rd largest number
select m_name, salary from manager order by salary desc limit 2,1;

-- finding 4th largest number
select m_name, salary from manager order by salary desc limit 3,1;

-- largest number
select m_name, salary from manager order by salary desc limit 0,1;




--------- joins----------

create table orders1(
o_id int ,o_date date, c_id int);


create table customer1(
c_id int, c_name varchar(30), country varchar(30)
);
alter table customer1 add column contact_name varchar(30);


insert into orders1 values
(110,'2023-5-1',200),
(111,'2023-5-2',207),
(112,'2023-5-3',201),
(114,'2023-5-4',204),
(113,'2023-5-5',205);

insert into customer1 values
(200,'sami','ind','sam'),
(201,'aman','us','motu'),
(204,'khan','ind','srk'),
(205,'yamuna','russian','zaina'),
(209,'sumanth','uk','vani');

-- joins

select orders1.o_id, customer1.c_name,orders1.o_date from orders1
inner join customer1 on orders1.c_id=customer1.c_id;

create table staff(
st_id int, s_name varchar(30), age int , package int);

create table payment (
p_id int, p_date date, st_id int, amount int);

insert into staff  values
(201,'swapna',20,20000),
(202,'swathi',20,300000),
(203,'suman',19,5000000),
(204,'rahul',22,6000000);

insert into payment values
(301,'2023-5-2',201,200000),
(302,'2023-5-3',202,150000),
(304,'2023-5-2',203,100000),
(305,'2023-5-7',209,400000);

select s.st_id ,s_name,age,amount from staff s,payment p where s.st_id=p.st_id;
alter table orders1 add shipping_id int;
update orders1 set shipping_id=1234 where o_id=110;
update orders1 set shipping_id=6166 where o_id=111;
update orders1 set shipping_id=4545 where o_id=112;
update orders1 set shipping_id=5566 where o_id=114;
update orders1 set shipping_id=1212 where o_id=113;

create table shipping(
shipping_id int, ship_name varchar(30)
);

insert into shipping values
(1234,'kong'),
(6166,'sami'),
(4545,'godzilla'),
(5566,'pan'),
(1212,'goku');

select orders1.o_id, customer1.c_name,shipping.ship_name from 
((orders1 inner join customer1 on orders1.c_id=customer1.c_id)
inner join shipping on orders1.shipping_id=shipping.shipping_id);


-- left join

select customer1.c_name, orders1.o_id from customer1 left join orders1 on customer1.c_id=orders1.o_id;

select c_name, country, o_date from customer1 right join orders1 on customer1.c_id=orders1.c_id;

select customer1.c_name,orders1.o_id from customer1 left join
 orders1 on customer1.c_id=orders1.c_id;

select customer1.c_name,orders1.o_id from customer1 left join
 orders1 on customer1.c_id=orders1.c_id order by customer1.c_name;
 
 select customer1.c_name , orders1.o_id from customer1
 left join orders1 on customer1.c_id=orders1.c_id  where customer1.c_name like 's%' order by customer1.c_name;


select c_name , orders1.o_id from customer1 full join orders1 on c_id=orders1.c_id;

select customer1.c_name, orders1.o_id from customer1 left join orders1 on customer1.c_id=orders1.c_id
union
select customer1.c_name, orders1.o_id from customer1 right join orders1 on customer1.c_id=orders1.c_id;

create table temp(
id int primary key not null auto_increment,
c2 varchar(40) not null,
c3 varchar(40) default 'software enngineer');











































