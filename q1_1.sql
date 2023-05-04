-- create database HeroVired
 create table rgm(
 std_name varchar(30)  not null, 
 college varchar(30) not null,
 sessions varchar(30), 
 contact_number int unique,
 address varchar(30) unique not null
 );
 
 insert into rgm values
 ("sami","rgm", "dbms",9885895,"knl"),
 ("bruce", "mit", "mechtronics", 99845896, "MALIBU"),
 ("jenna", "mhs", "pt", 5913348,"knl"),
 ("samantha","vjs", "gymnatic",49845655,"knl"),
 ("john","knis","martial arts",59848944,"dc"),
 ("aman","pjit","mysql",98458384,"knl");
 
 
 