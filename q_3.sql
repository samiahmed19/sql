show databases;

select * from students;

update rgm set session='java' , address='hyd' where contact_number=9885895; -- where is the place we should give the correct value to upadte;

create table temp(
id int primary key, name varchar(30), marks int
);

select * from temp;

insert into temp select * from students; -- copying the data into another table here the no.of columns must be same

update temp set name='chimtu' where marks=60;

truncate table temp; -- deleting the data in the table not table

delete from rgm  where name='john'; -- deleting specific data;

drop table temp;

alter table students rename column name to std_name; -- changing the column name and renameing the column

alter table students rename to H_std; -- changing the table name;

create database suns;

show databases;

drop database suns; -- droping the database suns

alter table h_std add address varchar(30);

update h_std set address='goa' where std_name='sami'; -- adding the values to the tables to added column

alter table h_std modify column address varchar(50);

alter table h_std drop column address ; -- deleting a column;

-- alter table table_name drop column col_name1, drop column col_name2,......; -- for deleting multiple columns

alter table h_std add column address varchar(50);

select min(marks) from h_std;
select max(marks) from h_std;
select avg(marks) from h_std;
select sum(marks) from h_std;
select sum(marks) as total from h_std;


create database exercise;

create table customer(
c_id int primary key not null,
c_name varchar(50) not null,
city varchar(50) not null,
grade int not null,
s_id int );


insert into customer values
(101,'sami','knl',98,201),
(102,'afreen','knl',78,202),
(103,'raju','godavari',75,203),
(104,'daniya','hyd',92,204),
(105,'bheem','hyd',90,205),
(106,'shaik','knl',82,206),
(107,'bhaii','hyd',80,207),
(108,'shah rukh khan','mumbai',88,208),
(109,'aamir','chennai',96,209),
(110,'john','mumbai',90,210);



-- write a query to find detail of customer whose grade are above and equal to 100
select * from customer where grade>100;

-- make them ascending order
select * from customer where grade>=90 order by grade asc; 

-- who are living in hyd city and grade<=100
select * from customer where city='hyd' and grade<=100;

-- find out name of customer who are from hyd city or having grade above 100
select * from customer where city='hyd' or grade>90;

-- write a query to find detail of customer who are either kerala or who donot have a grade more than 100
select * from customer where city='kerala' or not grade>100;

-- write a query to identify customer who don't belong city mumbai or have grade that exceeds 100
select * from customer where not city='mumbai' and grade>100;


create table orders(
o_num int,
purchase_amount int,
o_date date,
c_id int, s_id int);

insert into orders values
(2002,1100,'2023-04-10',100,200),
(2003,1500,'2023-2-14',101,202),
(2004,900,'2023-3-24',102,204),
(2005,550,'2023-1-26',103,206);

-- find the order details excluding date 2023-04-10 and salesman id more than 202 or purchase amount greater than 1000
select * from orders where not o_date='2023-04-10' and s_id>202 or purchase_amount>1000;

create table salesman(
s_id int primary key, s_name varchar(300), city varchar(30), comission float
);

insert into salesman value
(200,'prasanna','knl',0.65),
(201,'aadi','hyd',1.15),
(202,'sami','knl',0.43),
(203,'ken','hyd',0.33);

-- write a query to find comission within range 0.23 to 0.43
select * from salesman where comission between 0.23 and 0.43;

-- find out salesman name whose name starts with k letter
select  * from salesman where S_name like 'k%';

-- create a new column insert some data in that address column and display all those addresss in descending order
alter table salesman add column address varchar(30);
update salesman set address='ms9' where s_name='sami';
update salesman set address='105th street' where s_name='ken';
update salesman set address='soho' where s_name='prasanna';
update salesman set address='dc' where s_name='aadi';
select address as salesman_address from salesman order by address desc;

