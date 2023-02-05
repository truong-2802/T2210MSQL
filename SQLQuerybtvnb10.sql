create table Khach_hang(
	Ten varchar(255) not null,
	Dia_chi text not null,
	SCM varchar (12) not null,
	id int not null primary key identity(1,1), 
);

create table SDT(
	So varchar(10) not null,
	Loai text not null,
	NgayDK datetime not null,
	id int not null primary key identity(1,1),
	KH_id int not null foreign key references Khach_hang(id)
);

insert into Khach_hang(Ten,Dia_chi,SCM)
values ('Nguyen Nguyet Nga','Ha Noi','123456789'),
('Nguyen Van An','Lai Chau','321654987'),
('Nguyen Thi Bau','Yen Bai','987654321')
select * from Khach_hang;

insert into SDT(So,Loai,NgayDK,KH_id)
values ('0123456789','Tra truoc','12/12/02',1),
('0321654987','Tra truoc','12/12/02',2),
('0987654321','Tra sau','12/12/03',3)
select * from SDT;


select * from Khach_hang;
select * from SDT;

select * from SDT where So like'123456789';
select *from Khach_hang where SCM like'123456789';
select A.*,B.SCM from SDT A
	inner join Khach_hang B on A.KH_id=B.id

select *from SDT where id=
(select id from Khach_hang where SCM ='123456789');

select *from SDT where NgayDK='12/12/02';
select *from SDT where id in
	(select id from Khach_hang where Dia_chi like'Ha Noi');

select count(*) as Tong_KH from Khach_hang;
select count(*) as Tong_SDT from SDT;
select count(*) as soluong from SDT where NgayDK ='12/12/02';

select *from SDT A
	inner join Khach_hang B on A.KH_id = B.id;