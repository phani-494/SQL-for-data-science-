use phani
create table student(roll_no int,student_name varchar(10),fee money) 
-- Adding a new column into the table

alter table student add doj date

-- adding multiple columns into tha table

alter table student add address varchar(40),height smallint,stud_weight smallint;

-- modifying the column 
alter table student alter column address varchar(20)
select * from student

-- to drop a column from the table
alter table student drop column address

-- to drop a table

drop table if exists indra,student;


 