create database ss2_bai_tap_2;
use ss2_bai_tap_2;
create table customer(
cid int primary key,
cname varchar(25),
cage tinyint
);

create table order1(
oid int primary key,
cid int,
foreign key (cid) references customer(cid),
odate datetime,
ototalprice int
);

create table product(
pid int primary key,
pname varchar(25),
pprice int
);

create table orderdetail(
oid int,
pid int,
odqty int,
primary key (oid,pid),
foreign key (oid) references order1(oid),
foreign key (pid) references product(pid)
);
insert into customer(cid,cname,cage) 
values (1,'minh quan',10),
(2,'ngoc oanh',20),
(3,'hong ha',50);
insert into order1(oid,cid,odate,ototalprice) 
values (1,1,'2006/3/21',null),
(2,2,'2006/3/26',null),
(3,1,'2006/3/16',null);
insert into product(pid,pname,pprice) 
values (1,'may giat',3),
(2,'tu lanh',5),
(3,'dieu hoa',7),
(4,'quat',1),
(5,'bep dien',2);
insert into OrderDetail(oid,pid,odqty)
values (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
