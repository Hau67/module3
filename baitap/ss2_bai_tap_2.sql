create database ss2_bai_tap_2;
use ss2_bai_tap_2;
create table customer(
cid varchar(50) primary key,
cname varchar(50),
cage varchar(50)
);

create table order1(
oid varchar(50) primary key,
cid varchar(50),
foreign key (cid) references customer(cid),
odate varchar(50),
ototalprice varchar(50)
);

create table product(
pid varchar(50) primary key,
pname varchar(50),
pprice varchar(50)
);

create table orderdetail(
oid varchar(50),
pid varchar(50),
odqty varchar(50),
primary key (oid,pid),
foreign key (oid) references order1(oid),
foreign key (pid) references product(pid)
);