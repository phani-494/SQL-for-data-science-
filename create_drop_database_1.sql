--create database class3  -----> to create database
--create table employee(emp_name varchar(10),emp_id int,emp_email varchar(20),emp_number varchar(25))  ---> to create table

use phani--->  to use it as a current database 

drop database phani --> to delete/drop the database 
--drop table employee --> to delete the table
--drop database if exists class4,class3 --> to drop the database (use comma to delete the multiple databases )

create table mybase.dbo.prod(emp_name varchar(10),emp_id int,emp_email varchar(20),emp_number varchar(25))---> to create a new table in another database which is not in current database


use phani
create table student(roll_no int,student_name varchar(10),fee money) 

alter table student add doj date
