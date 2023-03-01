create table Customer(
Customer int not null primary key ,
Name nvarchar(50),
City nvarchar(50),
Country nvarchar(50),
Phone nvarchar(50),
Email nvarchar(50)
);
create table CustomerAccount (
AccountNumber char(9) not null primary key,
CustomerId int not null foreign key references Customer(Customer),
Balance money not null,
MinAccoun money
);
create table CustomerTransation (
TransactionId int primary key not null,
AccountNumber char(9) foreign key references CustomerAccount(AccountNumber),
TransactionDatabase smalldatetime ,
Amount money ,
DepositorWithdraw bit 
);





select * from Customer;

select * from CustomerAccount;

select * from CustomerTransation;






insert into Customer(Customer,Name,City,Country, Phone,Email)
values
(1,'Nguyen Van A','HaNoi','Viet Nam','0986521902','Nguyena@gmail.com'),
(2,'Tran Van Can','Ho Chi Minh','Viet Nam','0963215495','Trancan@gmail.com'),
(3,'Franklin ','alaska ', 'My','09453219852','Vuhuy@gmail.com');
select * from Customer;

insert into CustomerAccount(AccountNumber,CustomerId,Balance,MinAccoun)
values
('365425',1,150000,5000),
('365458',2,200000,3000),
('256485',3,180000,2000);
select * from CustomerAccount;

insert into CustomerTransation(TransactionId,AccountNumber,TransactionDatabase,Amount,DepositorWithdraw)
values 
(1,'365425','2018-02-06',10000000 ,1),
(2,'365458','2019-04-10',5000000 ,1),
(3,'256485','2022-09-01',15000 ,0);
select * from CustomerTransation;




select * from Customer where City = 'HaNoi';


select A.Name, A.phone , A.Email, B.AccountNumber, B.Balance from customer A
inner join CustomerAccount  B on A.Customer  = B.CustomerId;















