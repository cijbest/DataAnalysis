show databases;

create database kookmin_univ;
use kookmin_univ;
show tables;

describe users;

CREATE TABLE users (
    id INT,
    first_name VARCHAR(32),
    lastname VARCHAR(32),
    crerated TIMESTAMP
) 
SELECT COUNT(*) FROM
    users;
drop table users;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

alter table users change created registered timestamp;

insert into users (first_name, last_name) values ("rachel", "choi");
insert into users (first_name, last_name) values ("joy", "kim");
insert into users (first_name, last_name) values ("ann", "park");
insert into users (first_name, last_name) values ("julie", "han");
insert into users (first_name, last_name) values ("ben", "lee");
insert into users (first_name, last_name) values ("jerry", "lee");

select * from users limit1;

select id, first_name from users limit1;

select * from users order by last_name;
select * from users order by last_name desc;

select last_name, count(*) from users group by 1 order by 2 desc;

delete from users where last_name="park";
select * from users where last_name="kim";


create table user_score (
    id int, 
    first_name varchar(32),
    last_name varchar(32),
    score int,
    created timestamp
)

select * from user_score; 