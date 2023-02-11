create database dbms1;
use dbms1;
create table CLIENT_MASTER(
	CLIENT_NO VARCHAR(6) check (client_no like 'C') primary key,
    NAME VARCHAR(20) not null,
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INT,
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2));