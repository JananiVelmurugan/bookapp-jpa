drop database bookapp_db;

create database bookapp_db;

use bookapp_db; 

drop table users;

create table users
(
 id int primary key auto_increment,
 name varchar(200) not null,
 email varchar(200) not null,
 password varchar(200) not null
);

drop table books;

create table books
(
 id int primary key auto_increment,
 name varchar(200) not null,
 price float not null
);
 
drop table orders;

create table orders
(
 id int primary key auto_increment,
 user_id int,
 book_id int,
 quantity int not null,
 ordered_date timestamp default now(),
 status varchar(50) default 'ORDERED' ,
 constraint fk_users_id foreign key(user_id) references users(id),
 constraint fk_books_id foreign key(book_id) references books(id)
);



