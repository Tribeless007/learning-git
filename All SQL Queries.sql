create database pet_shop; -- to create database
drop database pet_shop; -- to drop the database or delete the database
use pet_shop; -- to use the database
create table CATS(
Name varchar(100),
Breed varchar(50),
Age int
);
create table DOGS(
Name varchar(100),
Breed varchar(50),
Age int
);
show tables; -- to show the number of tables
show columns from cats;
describe cats;
desc dogs;
--  the above commands shows the inside of the table
drop table cats; -- to delete the table 
insert into cats(name, breed, age) values('pussy', 'persian', 3);
select * from cats; -- to show the data from the specified table



