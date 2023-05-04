create table students(
id int primary key not null,
name varchar(30) not null,
marks int not null
);

insert into students values
(001,'sami',95),
(002,'john',96),
(003,'winscent',88),
(004,'ben',90),
(005,'mark',85),
(006,'chimtu',80),
(007,'kim',81),
(008,'joe',85),
(009,'leo',88),
(010,'rishi',90);

select * from students;

select * from students where marks=80;

select * from students where marks<85;

select * from students where marks<=85;

select * from students where marks>85;

select * from students where marks>=88;

select * from students where id>=2;

select * from students where marks !=96;

select * from students where not marks = 88;

select * from students where marks <> 85;

select * from students where marks between 88 and 91 order by marks;

select * from students where marks between 88 and 91 order by marks asc; -- ascending order

select * from students where marks between 88 and 91 order by marks desc; -- descending order

select distinct address from rgm;-- gives distinct values only;

select count(distinct address) from rgm;

select count(distinct marks) from students;

select * from students where not marks=88 and not marks=90;

select * from rgm limit 3;

select * from rgm where address='knl' limit 2;
 
select * from rgm where address='knl' limit 5;

select count(address),address from rgm group by address;

select * from rgm where college='rgm' order by contact_number limit 5;

select * from rgm where college='rgm' order by contact_number desc limit 1;

create table dob(
date_ date not null
);

insert into dob values('2003-10-14');

select * from dob;

create table salesman(
sales_id int primary key not null,
s_name varchar(30) not null,
s_address varchar(30) not null,
commission float not null
);

insert into salesman values
(5001,'james',"NY",0.15),
(5002,'nail knite',"paris",0.13),
(5003,'pit alex','london',0.11),
(5004,'mc lyon', 'paris', 0.14),
(5005,'paul adam', 'rome', 0.13),
(5006,'lauson hen', 'san jose', 0.12);

select * from salesman



