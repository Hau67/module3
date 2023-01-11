create database ss2_bai_tap_1;
use ss2_bai_tap_1;

create table so_dien_thoai(
ma_so_dien_thoai varchar(50) primary key, 
ten_so_dien_thoai varchar(50)
);

create table nha_cung_cap(
ma_nha_cung_cap varchar(50) primary key,
ten_nha_cung_cap varchar(50),
dia_chi varchar(50),
so_dien_thoai varchar(50),
foreign key (so_dien_thoai) references so_dien_thoai(ma_so_dien_thoai)
); 

create table don_dat_hang(
so_don_hang varchar(50) primary key,
ngay_dao_hang varchar(50),
ma_nha_cung_cap varchar(50),
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table vat_tu(
ma_vat_tu varchar(50) primary key,
ten_vat_tu varchar(50)
);

create table chi_tiet_don_dat_hang(
so_don_hang varchar(50),
ma_vat_tu varchar(50),
primary key (so_don_hang, ma_vat_tu),
foreign key (so_don_hang) references don_dat_hang(so_don_hang),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table phieu_xuat(
so_phieu_xuat varchar(50) primary key,
ngay_xuat varchar(50)
);

create table chi_tiet_phieu_xuat(
don_gia_xuat varchar(50),
so_luong_xuat varchar(50),
so_phieu_xuat varchar(50),
ma_vat_tu varchar(50),
primary key (so_phieu_xuat, ma_vat_tu),
foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table phieu_nhap(
so_phieu_nhap varchar(50) primary key,
ngay_nhap varchar(50)
);

create table chi_tiet_phieu_nhap(
don_gia_nhap varchar(50),
so_luong_nhap varchar(50),
so_phieu_nhap varchar(50),
ma_vat_tu varchar(50),
primary key (so_phieu_nhap, ma_vat_tu),
foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);


