create database dbms3;
use dbms3;

-- Table - 1
create table AUTHOR(
Author_ID varchar(5) primary key,
Lastname varchar(15),
Firstname varchar(15),
Email varchar(40),
City varchar(15),
Country varchar(15));
desc AUTHOR;

-- Table - 2
create table BOOK(
Book_ID varchar(5) primary key check(Book_ID like "b%"),
Book_title varchar(50) not null,
Copies int check(Copies>2));
desc BOOK;

-- Table - 3
create table AUTHOR_LIST(
Author_ID varchar(5) ,
Book_ID varchar(50) ,
Role varchar(15),
foreign key (Author_ID) references AUTHOR(Author_ID),
foreign key (Book_ID) references BOOK(Book_ID),
primary key(Author_ID,Book_ID));
desc AUTHOR_LIST;

insert into AUTHOR values
("1001","Laljani","Darshan","darshan@gmail.com","Gandhinagar","India"),
("1002","Ganatra","Rahil","rahil@america.com","newyork","America"),
("1003","Suthar","Aniket","aniket@gmail.com","wakanda","Africa"),
("1004","Pandya","Vaidik","vaidik@gmail.com","new york","America");

select * from AUTHOR;

insert into book
values
("b2001","how to be Confident",5),
("b2002","Rules to live in america",6),
("b2003","How to obtain vibranium",4),
("b2004","how not to f*ckup in life",3);
select * from book;

alter table AUTHOR_LIST add Publisher varchar(30);
desc AUTHOR_LIST; 