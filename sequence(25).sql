--> to see the value in seq give this command
--> every time u run the sequence  query the value will increases.
--> once it reaches the maximum value if u don't specify thre cycle then it throws a error.
-->The sequence object 'SEQ1' has reached its minimum or maximum value. Restart the sequence object to allow new values to be generated.

use class1
select next value for SEQ1

-->syntax
create sequence seq2
as int
start with 1
increment by 2

select next value for seq2

select * from sys.sequences where name='seq2'
alter sequence seq2 restart with 1
select next value for seq2 -->started with 1 again here as we restarted with 1 by above query.

--> how to use the sequence in the insert commands

create table emplo(id int primary key,name varchar(70),gender nvarchar(10))
insert into emplo values(next value for seq2 ,'ben','male'),(next value for seq2 ,'hen','female')

select * from emplo

--> decrement a sequence
create sequence seq3
as int
start with 100
increment by -1
select next value for seq3 -->100,99,98......

create sequence seq4
as int
start with 100
increment by 10
minvalue 100
maxvalue 200
cycle


create sequence seq5
as int
start with 100
increment by 10
cache 150

--> creating a sequence while creating a table
create table seq6(id int default(next value for dbo.seq5),name varchar(10))
insert into seq6(name) values('hyderabad'),('kurnool')
select * from seq6



