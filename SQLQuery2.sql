create database base1
use  base1;
create table mytables (
myage int not null,
height int,
weights int not null,
sixpack bit not null)
insert into mytables values(4,5,7,1)
select * from mytables
insert into mytables(myage,height,weights,sixpack) values(23,44,45,0)
select myage from mytables