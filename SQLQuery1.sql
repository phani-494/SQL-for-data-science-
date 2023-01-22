create table jan5(id int,sal int,fname varchar(20),number varchar(11))
insert into jan5 values(1,20000,'phani',678907876)
insert into jan5 values(2,20000,'phani',67678907876)
insert into jan5 values(null,20000,'phani',34678907876)
 alter table jan5
 add constraint uni_const unique(id)

 
select id,sal from jan5 where not  id=1

update jan5 set number=89908745,fname='sena'
where id=2
delete from jan5 where id=1
delete from jan5
