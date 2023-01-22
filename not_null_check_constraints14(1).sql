use base1
create table stud1(names varchar(80) not null,age int)
insert into stud1 values('indranna',45)
insert into stud1(names) values('phani')
-->insert into stud1(age) values(76) ... gives error as : Cannot insert the value NULL into column 'names', table 'base1.dbo.stud1'; column does not allow nulls. INSERT fails.


--> alter table stud1  alter column age int not null ... update fails if any null values will present in the column.
select * from stud1
-- > here we already having null value in the age column
-- > so to make a column as not null there should not be any null values present in it
-- > either make it update with a value or delete the row where the null values are present.

update stud1 set age=50 where names='phani'
alter table stud1  alter column age int not null
insert into stud1 values('akki',87)

create table stud2(roll_no int check(roll_no>100))  --> it  will assign a constraint name itself only since we are not mentioning any name to the constraint.
insert into stud2 values(102)
insert into stud2 values(89) 
-->gives below error
-- > The INSERT statement conflicted with the CHECK constraint "CK__stud2__roll_no__4316F928". The conflict occurred in database "base1", table "dbo.stud2", column 'roll_no'.



select * from stud2a

create table stud2a(roll_no int constraint const_name check(roll_no>100))
--> this way will be very useful when we want to drop a constraint by using the given  constraint name
insert into stud2a values(102)
-->insert into stud2a values(89) 
--> gives error as : The INSERT statement conflicted with the CHECK constraint "const_name". The conflict occurred in database "base1", table "dbo.stud2a", column 'roll_no'.


-- > if we observe both  tables clearly in the error messages the constraint names are came . we can give names to the constraints as given in stud2a.
-- > constraint const_name is optional.

select * from stud3
create table stud3(age int )
alter table stud3 add constraint c1 check(age>89)  --> and height>90  : if u give to multiple columns like this then it will become the table constraint.

-- > insert into stud3 values(8)    error: The INSERT statement conflicted with the CHECK constraint "c1". The conflict occurred in database "base1", table "dbo.stud3", column 'age'.
insert into stud3 values(97)


alter table stud3 drop constraint c1 