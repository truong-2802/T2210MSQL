create table supplier (
id varchar(255) not null primary key,
name varchar(255) not null ,
address varchar(255) not null ,
phone varchar(255) not null,
introduce text not null ,
ratings varchar(255) not null ,
images text not null 
);
create table cart(
id varchar(255) not null primary key  ,
customer_address text not null ,
name_product varchar(255) not null,
number_phone varchar(255) not null ,
name varchar(255) not null 
);

create table payment_history(
id varchar(255) not null primary key ,
price varchar(255) not null ,
name varchar(255) not null ,
bid_date datetime not null  check(bid_date < getdate())
); 
create table product(
id varchar(255) not null primary key,
product_name varchar(255) not null ,
describe varchar(255) not null , 
starting_price varchar(255) not null,
auction_buyer varchar(255) not null,
start_day datetime not null check(start_day<=getdate()),
end_date datetime not null ,
images text not null ,
related_product varchar(255),
name varchar(255) not null,
supplier_id varchar(255) foreign key references supplier(id),
payment_history_id varchar(255) foreign key references payment_history(id),
cart_id varchar(255) foreign key references cart(id)
);

create table home (
id varchar(255) not null primary key,
images text not null ,
current_price varchar(255) not null ,
product_name varchar(255) not null ,
product_id varchar(255) foreign key references product(id)
);


insert into supplier(id,name,address,phone,introduce,ratings,images)
values('NCC01','Sam Sung','Hoan Kiem,Hoang Mai,Ha Noi','0965432189','Samsung Galaxy S9 smartphone was launched in March 2018','4.7','images 1'),
('NCC02','Dien tu Ha Noi','Ba Vi , Ha noi','0896532423','Product a reality sandwich before you walk back in that boardroom fire up your browser','3.6','images 2'),
('NCC03', 'Dien tu Ha Noi','Hoan Kiem, Ha Noi','02314569213', 'Product a reality sandwich before you walk back in that boardroom fire up your browser','4.2','images 3'),
('NCC04','Ragdoll','Ba Dinh, Ha Noi','0531462879','The Ragdoll is a cat breed with blue eyes and a distinct colorpoint coat','4.1','images 4'),
('NCC05','Galaxi S+10','Song Lo, Vinh Phuc','0621453219','Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day','3.9','images 5'),
('NCC06','Hatitex','Dong Da,Ha Noi','0231564895','Bring to the table win-win survival strategies to ensure proactive domination','4.5','images 6'),
('NCC07', 'Lap top','Hai Ba Trung , Ha Noi','0623510230','Product a reality sandwich before you walk back in that boardroom fire up your browser','4.8','images 7');
select * from supplier;


insert into cart(customer_address,name_product,name,number_phone,id)
values('Nhan Dao-Song Lo-Vinh Phuc','Samsung Galaxy S9','Nguyen Van An','0342130565','C1'),
('Son Duong-Tuyen Quang','Lap Top AGC3','Tran Trung Manh','0354621899','C2'),
('Nhan Dao-Song Lo-Vinh Phuc','earphone', 'Nguyen Van An','0342130565','C4'),
('Hoang Mai-Ha Noi','LG TV', 'Le Thi Vy','025316437','C3');
select * from cart;

 insert into payment_history ( id, price, name , bid_date)
 values ('NCC01','$143.00', 'Nguyen Van An','2020-12-02'),
 ('NCC07','$125,300.22 ','Tran Trung Manh','2021-02-10'),
 ('NCC03','$178.22' ,'Nguyen Van An','2020-03-25'),
 ('NCC06',' $276.00','Le Thi Vy','2023-01-20'),
 ('NCC02','$456.00','Le Thi Vy','2019-09-10'),
 ('NCC04','$253.02 ','Tran Trung Manh','2021-10-10'),
 ('NCC05','$ 450.00 ','Nguyen Van An' ,'2022-05-05');
  select * from payment_history;


  insert into home (images,current_price,product_name,id)
  values('1.images','$123.00','Dual SIM SmartPhone','BFF01'),
  ('2.images','$234.00','Bluetooth Headphone','BFF02'),
  ('3.images','$157.00','Smaetphone Earbuds','BFF04'),
  ('4.images','$190.00','Smart TV 4K Ultra HD','BFF05');
  select * from home;

  insert into product(id,product_name,describe,starting_price,auction_buyer,start_day,end_date,images,name)
  values('NCC01','Dual SIM SmartPhone',' New','$123.00','$160.00','2016-12-03','2016-12-25','5.images','Sam Sung'),
  ('NCC02','Bluetooth Headphone','99% new','$200.00','$234.00','2022-03-12','2022-04-25','6.images','Dien tu Ha Noi');
  select * from product;
