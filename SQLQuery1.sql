create database ExerciseDb
use ExerciseDb

drop table CompanyInfo
create table CompanyInfo
(
cid int primary key identity(1,1),
cname nvarchar(50) not null
)
select * from CompanyInfo

drop table ProductInfo
create table ProductInfo 
(
    pid int primary key identity(101, 1),
    pname nvarchar(50) not null,
    pprice float,
    pmdate date,
    cid int foreign key references CompanyInfo(cid)
)
select * from ProductInfo

insert into CompanyInfo (cname) values
('SamSung'),
('HP'),
('Apple'),
('Dell'),
('Toshiba'),
('Redmi')
select * from CompanyInfo order by cid

insert into ProductInfo(pname,pprice,pmdate,cid) values
('Laptop','55000.90','12/12/2023',1),
('Laptop','35000.90','12/12/2012',2),
('Mobile','15000.90','12/03/2023',2),
('Laptop','135000.90','12/12/2012',3),
('Mobile','65000.90','12/12/2012',3),
('Laptop','35000.90','12/12/2012',5),
('Mobile','35000.90','12/01/2012',5),
('Earpod','1000.90','12/01/2022',3),
('Laptop','85000.90','12/12/2021',6),
('Mobile','55000.70','12/12/2020',1)
select * from ProductInfo order by pid


select CI.cname as CompanyName, PI.pname as ProductName, PI.pprice, PI.pmdate
from CompanyInfo CI
inner join ProductInfo PI on CI.cid = PI.cid

select CI.cname as CompanyName, PI.pname as ProductName
from CompanyInfo CI
inner join ProductInfo PI on CI.cid = PI.cid;

select CI.cname as CompanyName, PI.pname as ProductName
from CompanyInfo CI
cross join ProductInfo PI;






