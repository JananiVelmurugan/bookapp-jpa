
CREATE TABLE books
(
 id INT PRIMARY KEY AUTO_INCREMENT,
 NAME VARCHAR(200) NOT NULL,
 price FLOAT NOT NULL
);

insert into books ( name,price) values ('Core Java', 350);
insert into books ( name,price) values ('MySQL', 200);
insert into books ( name,price) values ('Javascript', 500);