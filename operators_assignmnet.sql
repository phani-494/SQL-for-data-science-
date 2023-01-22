--> arithmetic operators
use base1
print 20+30 
print 20%3
--> don't run a single line .. it will gives error.. at a time run the 3-4 lines along with the declare statement else it cannot find the variable
declare @x int =10, @y int=30,@y1 varchar(30)
declare @z int
set @z = @x + @y  --> assignment operator--> if u run this single line it will give error as Must declare the scalar variable "@x"
print @z


DECLARE @myVar INT
SET @myVar = 10
SET @myVar = @myVar * 5
SELECT @myVar AS MyResult
GO


--> Bitwise operatord
print 25 &20

print 25|20



create table new_studs(name varchar(30),age int,class int,height int,fees int)
insert into new_studs values('Indra' ,15,8,59,45000),('Indrasena' ,19,9,65,55000),('akki' ,8,4,55,25000),
('mahandra' ,12,16,58,45000),('phaniIndra' ,16,10,85,75000),('Indra' ,14,5,67,90000)
select * from new_studs

select * from new_studs where height=55 and name='akki'
select * from new_studs where height=59 or name='akki'

delete from new_studs where height=55

select * from new_studs where fees> all(select height from new_studs where height>60)
select * from new_studs where fees> all(select fees from new_studs where fees<60000)
select * from new_studs where fees> all(select fees from new_studs where fees>60000)
select * from new_studs where fees> any(select fees from new_studs where fees>50000)



select * from new_studs where fees between 45000 and 90000

select * from new_studs where fees in (45000,55000,75000)
select * from new_studs where fees not in (select class from new_studs where fees>50000)


select * from  new_studs where name like'_k%'
select * from  new_studs where name like'm%'
select * from  new_studs where name like'p%a'



print 'hello'+'world'
declare @a varchar(30)='indra' , @b varchar(40)='phani',@c varchar(90)
set @c=@a+@b
print @c
set @c+=@a
print @c
set



select * from  new_studs where name like'p[a-m]%a'
select * from  new_studs where name like'p[^a-m]%a'


--> set operators
select * from new_studs union select * from new_studs


select * from new_studs union select * from new_studs
select * from new_studs union  all  select * from new_studs

create table new_studs1(name varchar(30),age int,class int,height int,fees int)
insert into new_studs1 values('Indra' ,15,8,59,45000),('Indrasena' ,19,9,65,55000),('akki' ,8,4,55,25000),
('mahandra' ,12,16,58,45000),('phaniIndra' ,16,10,85,75000),('Indra' ,14,5,67,90000),('RAJA' ,19,15,98,10000),('Mahesh' ,11,17,33,44000)

select * from new_studs union select * from new_studs1
select * from new_studs intersect select * from new_studs1
select * from new_studs except select * from new_studs1
 

 --> logical operators


 select * from emps1
 create table emps1(eno int,ename varchar(30),job varchar(70),sal int ,rating int)
 insert into emps1 values(101,'indra','lead',34000,5)
 insert into emps1 values(101,'indra','lead',34000,5),(102,'raja','lead',44000,5),(103,'indranna','manager',54000,5),
 (104,'indrasena','engineer',64000,4),(105,'srinu','ceo',134000,5)

 select * from emps1 where eno> 102 and sal>100000

 select * from emps1 where eno> 102 or sal<50000
 select * from emps1 where eno> 102 and not sal>100000


  select * from emps1 where sal>all(select sal from emps1 where job='lead')
--> first above sub query  in all ()gives all sal values which lead has there.gives (34000,44000)...
-->simply returns a list of salaries.
-->so the next query will prints sal which is greater than the list values.

--> now it should print the data which is more than 44000 

  select * from emps1 where sal>any(select sal from emps1 where job='lead')-->bracket query is the sub query.
  --> first above query  in all ()gives all sal values which lead has there.gives (34000,44000)....

  --> it will print any of the values such as >34000,>44000, all values but for all only it will give >44000 values only
  select * from emps1 where sal>some(select sal from emps1 where job='lead')
  -->any or some both  gives same result only

  select * from emps1 where sal in (select sal from emps1 where job='lead')--> gives all lead positions

  select * from emps1 where sal not in (select sal from emps1 where job='lead')--> gives all lead positions

  select * from emps1 where exists (select sal from emps1 where job='associate')
  select * from emps1 where exists (select sal from emps1 where job='lead') --> atleast one record should be there .then sub query is true.


  --> if sub query is true then only maain query will be executed and gives entire main query results.



 




