create table car(
c_num int primary key not null,
c_name varchar(30) not null,
c_price int,
c_qty int
);

insert into car values
(112,'lambohrgini',300000,2),
(114,'audi',70000,3),
(116,'jaguar',60000,4);
insert into car values
(118,'bmw',70000,3);

select count(c_name) as c1, c_price from car group by c_price; -- using group by function 
select count(c_name) from car group by c_price having c_price>100000;
select count(*) from car group by c_price having c_price>100000;

create table visitation(
v_date date, price int, duration int 
);

insert into visitation values
('2023-5-1',1000,20),
('2023-6-3',2000,50),
('2023-5-1',1500,15),
('2023-5-3',1000,25),
('2023-6-3',2500,40);


select * from visitation;

select v_date, count(*) from visitation group by v_date;

select extract(year from v_date) as year, 
extract(month from v_date) as month, 
round(avg(price),3) from visitation group by extract(year from v_date), extract(month from v_date);   -- it will round up to 2 decimal values

select v_date, round(avg(price),2) as avgprice from visitation group by v_date having count(*)>1 order by v_date;

select v_date, round(avg(price),2) as avgprice from visitation group by v_date having count(*)>3 order by v_date;

select v_date,round(avg(price)) as avgprice from visitation where duration>30 
group by v_date having count(*)>1 order by v_date;

select city,count(*) from customer group by city;


create table employee(
emp_id int , emp_name varchar(30), age int , county varchar(30)
);


insert into employee value
(101,'sami',19,'india'),
(102,'john',45,'canada'),
(103,'caine',39,'british'),
(104,'ana',26,'usa'),
(105,'anaya',25,'usa');

select count(county) , county from employee group by county having count(county)>=1;
select county, count(county) from employee group by county having min(age)>30;


create table manager(
m_id int,
m_name varchar(30),
salary int,
age int, gender varchar(30)
);

insert into manager values
(101,'swapna',100000,20 ,'f'),
(102,'swathi',2000000,20,'f'),
(103,'sami',30000000,20,'m'),
(104,'rahul',200000,21,'m'),
(105,'naveen',3200000,22,'m');

select m_name, sum(salary) as total from manager group by m_name having sum(salary)>100000 order by m_name;


select gender, max(salary) as highsalary from manager group by gender having max(salary)<3000000;

DELIMITER // 
CREATE PROCEDURE GetManagerInfo()
  BEGIN
	select * from MANAGER1;
  END //

CALL GetManagerInfo()

DELIMITER // 
CREATE PROCEDURE GetManagerAge()
  BEGIN
	select * from MANAGER1  where age=20;
  END //

CALL GetManagerAge();