use base1
create table mytables23(names nvarchar(10),age integer,height integer);
insert into mytables23 values('Indra',34,55),('phani',45,23),('djtillu',56,32);
select * from mytables23
select * from mytables
select * from mytables2
-- updating the multiple values using comma
update mytables set height=45,myage=321 where weights=7
-- updating the entire column without applying condition
update mytables set height=90
-- updating the value from another table data value
update mytables set weights=(select mytables23.age from mytables23 where height=55) where sixpack =1 
--delete the records using condition or without condition to remove all data in table
delete from mytables23
delete from mytables23 where height=23
--deleting the half records in the table
delete top (50) percent from mytables23
--delete top 15 records from table
delete top(15) from mytables23
-- removing all the data present in the table
truncate table mytables


--renaming the column names
sp_rename 'mytables.height','hei','COLUMN'

-- renaming the table
sp_rename mytables23 ,mytable2