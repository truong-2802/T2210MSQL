create table products(
   name varchar(255) not null unique,
   desccribe text,
   unit varchar(100),
   price decimal(12,4) not null check(price >=0),
   id int primary key identity(1,1)
);
create table customers(
   name varchar(255) not null,
   address text not null,
   phone varchar(15) not null unique,
   id int primary key identity(1,1)
);

create table orders( 
   id int primary key identity(1,1),
   customers_id int not null foreign key references customers(id),
   order_data datetime not null check(order_data <= getdate()),
   grand_total decimal(12,4) not null check(grand_total >=0),
);
create table order_products(
   quantity int not null check(quantity >0),
   price decimal(12,4) not null check(price >=0),
   orders_id int not null foreign key references orders(id),
   products_id int not null foreign key references products(id)
);

