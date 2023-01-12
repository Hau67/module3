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