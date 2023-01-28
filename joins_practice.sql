create database statesbase
create table states(
id1 int primary key identity,
state1 nvarchar(10),
code nvarchar(2)
)
insert into states values('Andhra','AP')
insert into states values('Telangana','TG')
insert into states values('Karnataka','KA')
insert into states values('MADHYA','MP')
insert into states values('TAMILNADU','TN')
insert into states values('KERALA','KA')


create table districts(
id2 int primary key identity,
dist_name nvarchar(20),
dis_id int references states(id1)
);
insert into districts values('kadapa',1)
insert into districts values('khamman',2)
insert into districts values('chikbalapur',3)
insert into districts values('chennai',5)
insert into districts values('ananatapur',1)
insert into districts values('mandya',3)

select * from states
select * from districts
insert into districts values('mandya',6)
select code,dist_name
from states si
join districts di
on si.id1=di.dis_id

select code,dist_name
from districts di
join states si
on si.id1=di.dis_id

select dist_name,code,state1
from districts di
join states si
on di.dis_id=si.id1;

