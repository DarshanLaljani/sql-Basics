create database dbms;
use dbms;
create table CLIENT_MASTER(
	CLIENT_NO VARCHAR(6),
    NAME VARCHAR(20),
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INT,
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2));
    
create table PRODUCT_MASTER(
	PRODUCT_NO varchar(6),
    DESCRIPTION varchar(15),
    PROFITPERCENT decimal(4,2),
    UNIT_MEASURE varchar(10),
    QTYONHAND int,
    REOERDERL_VL int,
    SELLPRICE decimal(8,2),
    COSTPRICE decimal(8,2));
    
create table SALESMAN_MASTER(
	SALESMAN_NO varchar(6),
    SALESMAN_NAME varchar(20),
    ADDRESS1 varchar(30),
    ADDRESS2 varchar(30),
    CITY varchar(20),
    PINCODE int,
    STATE varchar(20),
    SALARY real,
    TGTTOGET decimal(10,2),
    YTDSALES double(6,2),
    REMARKS varchar(60));
drop table SALESMAN_MASTER;
desc CLIENT_MASTER;


insert into CLIENT_MASTER(Client_no,name,city,pincode,state,baldue) values
		("C00001","Ivan Bayross","Mumbai",400054,"Mahasrashtra",15000),
        ("C00002","Mamta Muzumdar","Madras",780001,"Tamil Nadu",0),
		("C00003","Chhaya Bankar ","Mumbai",400057,"Maharashtra",5000),
		("C00004","Ashwini Joshi","Bangalore",560001,"Karnataka",0),
		("C00005","Hansel Colaco","Mumbai",400060,"Maharashtra",2000),
		("C00006","Deepak Sharma","Mangalore",560050,"Karnataka",0);
        
select * from CLient_master;
desc PRODUCT_MASTER;
insert into PRODUCT_MASTER values
	("P00001","T-shirt",5,"Piece",200,50,350,250),
    ("P0345","shirt",6,"Piece",150,50,500,350),
    ("P06734","Cotton Jeans",5,"Piece",100,20,600,450),
    ("P07865","Jeans",5,"Piece",100,20,750,500),
    ("P07868","Trousers",2,"Piece",150,50,850,550),
    ("P07885","Pull Overs",2.5,"Piece",80,30,700,450),
    ("P07965","Denim Jeans",4,"Piece",100,40,350,250),
    ("P07975","Lycra tops",5,"Piece",70,30,300,175),
    ("P08865","skirt",5,"Piece",75,30,450,300);
    
select * from  PRODUCT_MASTER ;
    show tables;

desc Salesman_master;    
insert into SALESMAN_MASTER values
	("S00001","Aman","A/14","Worli","Mumbai",400002,"Maharashtra",3000,100,50,"Good"),
    ("S00002","Omkar","65","Nariman","Mumbai",400001,"Maharashtra",3000,200,50,"Good"),
    ("S00003","Raj","P-7","Bandra","Mumbai",400032,"Maharashtra",3000,200,50,"Good"),
    ("S00004","Ashish","A/5","Juhu","Mumbai",400044,"Maharashtra",3500,200,50,"Good");
set sql_safe_updates = 0;

select name from client_master;

select * from client_master;

select name,city,state from client_master;

select DESCRIPTION FROM PRODUCT_MASTER;

SELECT name FROM client_master where city = 'Mumbai';

SELECT salesman_name FROM SALESMAN_MASTER where salary = 3000;

update Client_Master
set City="Banglore" 
where Client_No="C00005";
select *from Client_Master;

update Client_Master
set BalDue=1000
where Client_No="C00001";
select *from Client_Master;
