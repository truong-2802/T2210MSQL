create table HangSP(
id int primary key not null,
name varchar(20) not null,
address varchar(50) not null,
Tell int not null,
);

create table SanPham(
id int primary key not null,
name varchar(50) not null,
mota text not  null,
unit varchar(10),
);

create table Kho(
MaHang int not null foreign key references HangSP(id),
MaSP int not null foreign key references SanPham(id),
Gia decimal not null,
SoLuong int not null,
);