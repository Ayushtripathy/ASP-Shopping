create database ComSim2
use ComSim2
--Customer Table
create table Customer(
    CustId int constraint pk_custid primary key identity(11111,99999),
    CustName varchar(30) not null,
    CustAddress varchar(100) not null,
    MobNo bigint constraint un_mno unique,
    EmailId varchar(100) constraint un_em unique,
    [Password] varchar(20) not null
)


--Product Table
create table Products(
    ProductId int constraint pk_prod primary key identity,
    ProductName varchar(50) not null,
    Price money not null,
    Stock int not null,
)


--Order Table
create table Orders(
    OrderId int constraint pk_order primary key identity,
    OrderDate datetime constraint def_Od default getdate(),
    CustId int constraint fk_cust references Customer(CustId),
    ProductId int constraint fk_prod references Products(ProductId),
    Qty int not null,
    TotalAmount money not null,
    PaymentMode varchar(50) not null,
)


create procedure sp_InsertCustomer(@name varchar(30),@add varchar(100),
@mno bigint,@email varchar(50),@pwd varchar(20),@cid int out)
as
begin
insert into Customer values(@name,@add,@mno,@email,@pwd)
select @cid=@@IDENTITY
end


create proc sp_LoginCustomer(@cid int,@pass varchar(20))
as
begin
select * from Customer where CustId=@cid and [Password]=@pass
end


create proc sp_InsertOrder(@cid int,@pid int,@qty int,@oamt money,@oid int out,@pmode varchar(50))
as
begin
insert into Orders(CustId,ProductId,Qty,TotalAmount,PaymentMode) values (@cid,@pid,@qty,@oamt,@pmode)
update Products set Stock = Stock - @qty where ProductId=@pid
select @oid=@@IDENTITY
end


insert into Products(ProductName,Price,Stock) values('Nike',249.99,30)
insert into Products(ProductName,Price,Stock) values('Adidas',199.99,15)
insert into Products(ProductName,Price,Stock) values('Puma',149.99,45)
insert into Products(ProductName,Price,Stock) values('Reebok',209.99,12)
insert into Products(ProductName,Price,Stock) values('New Balance',299.99,23)
insert into Products(ProductName,Price,Stock) values('Under Armour',319.99,10)