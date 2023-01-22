use class1
create table pk(num int primary key,age int ,height int)
insert into pk values(76,34,56),(67,56,43),(45,56,43),(90,56,12)
select * from pk
select * from fk
create table fk(number int constraint fk1 references pk(num),age int,heigt int)
insert into fk values(45,65,43)
insert into fk values(67,98,76)
-->insert into fk values(13,87,43)
--> above line gives error since 13 is not present in the pk table in the num column
--> foreign key column refers only the values present in the reference table column
--> The INSERT statement conflicted with the FOREIGN KEY constraint "fk1". The conflict occurred in database "class1", table "dbo.pk", column 'num'.



alter table fk drop constraint fk1

alter table fk add constraint fk4 foreign key(heigt) references pk(num)

create table my_fk(number int constraint fk1 references pk(num),age int,heigt int)
-->without dropping the foreign key we can alter or add foreign keys to the other columns.
alter table my_fk add constraint mycon foreign key(heigt) references pk(num)