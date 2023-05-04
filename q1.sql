-- this is my database comments are written in like this(--).
-- create database sami;

-- create table student(
-- std_id int primary key not null, 
-- std_name varchar(30) not null,
-- std_phn int not null,
-- std_dept varchar(30) not null 
-- );

-- INSERT INTO student (std_id, std_name, std_phn, std_dept)
-- VALUES(101, "sami", 98857260, "CSE(DS)");

INSERT INTO student VALUES(102, "peter", 70506508, "CSE(DS)"); -- if you know column names correctly
INSERT INTO student VALUES(103, "john", 70506505, "martial arts");
INSERT INTO student VALUES(104, "caine", 70506458, "pt");
INSERT INTO student VALUES(105, "samantha", 74466508, "physchatrist");
INSERT INTO student VALUES(106, "jenna", 705046468, "agri");
INSERT INTO student VALUES(107, "ultron", 708868, "CSE(AI-ML)");

INSERT INTO student VALUES
(108,"bruce", 112058497, "biologyist"),
(109,"tony", "108880", "scientist");


select * from student