use class1
--> here i created a view named view1 using the UI easily.
select * from view1

--> using syntax
create table emp_details(id int identity not null,name nvarchar(50) not null,city nvarchar(11) not null,salary int not null,constraint c1 primary key(id));
insert into emp_details values('indra','kadapa',25000),('phanindra','kadapa',20000),('mahindra','kadapa',10000),
('ravindra','kadiri',200000),('jadendra','kurnool',2500000),('raja','kurnool',55000);


create table emp_contact(id int not null,number nvarchar(20) not null);
alter table emp_contact with check add constraint c2 foreign key(id) references emp_details(id)

insert into emp_contact values(1,'456789'),(2,'5432456'),(3,'654322345'),(4,'9876543345'),(5,'876567'),(6,'893765738')

--> using syntax
create view emp_view1 as select  * from emp_details
select * from emp_view1

create view emp_view2 as select name,city,salary from emp_details
select * from emp_view2

create view emp_view3 as select city,salary from emp_details where id >4
select * from emp_view3

create view emp_view4 as select emp_details.city, emp_details.salary,emp_contact.number from emp_details
left outer join 
emp_contact
on emp_details.id=emp_contact.id
where emp_details.id>3
select * from emp_view4

create view emp_view5 as select emp_details.city, emp_details.salary,emp_contact.number from emp_details
 full outer join 
emp_contact
on emp_details.id=emp_contact.id
where emp_details.id>3
select * from emp_view5

drop view emp_view1

--> rename the view
sp_Rename emp_view2,view_new
select * from view_new

--> to get the details in the view
Sp_Helptext emp_view3

--> alter a view 
alter  view emp_view5 as select emp_details.city, emp_details.salary,emp_contact.number from emp_details
 full outer join 
emp_contact
on emp_details.id=emp_contact.id
where emp_details.id>3 and emp_contact.id>4
select * from emp_view5

--> refresh a view
--> if any data in the base table changes or get updated then we need to refresh the view 
--> else the data won't be visible in the view tables
create view emp_view1 as select * from emp_details
alter table emp_details add my_sala nvarchar(10)

select * from emp_view1
alter table emp_details add my_salaries nvarchar(10)
select * from emp_view1--> here we cannot observe the my_salaries as we haven;t refresh the view 
--> now refresh it then we will get my_salaries column also
exec sp_refreshview emp_view1


create view emp_view6 
with schemabinding 
as select name,city from dbo.emp_details

--> now we can't alter the emp_details 

--> encrypt the data
--> we cannot see the details of this view by sp_helptext
create view view7
with encryption 
as 
select name,city,salary from dbo.emp_details
select * from view7
exec sp_helptext view7
select * from emp_details
--> view with check 
create view [dbo].[emp_details2]
as 
select * from emp_details
where salary>30000
with check option
--> the below query will be failed to update
insert into emp_details2 values('ram','mumbai',20000,12,32,12)


