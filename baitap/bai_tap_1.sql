create database student_management;

use student_management; 
create table class(
id int ,
`name` varchar(50)
);
insert into class ( id, `name`) values (1,"hau");

create table teacher(
id int,
`name` varchar(50),
age int,
country varchar(50)
);
insert into teacher (id,`name`,age,country) values (1,"hau",24,"hue");
