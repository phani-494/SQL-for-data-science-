use base1
--> creating the table level constraint
create table stud5(number int,age int,name varchar(90), primary key(number,name))
insert into stud5 values(56,65,'indra')
insert into stud5 values(87,65,'phani')
-->Violation of PRIMARY KEY constraint 'PK__stud5__4A070CB11B11C1F5'. Cannot insert duplicate key in object 'dbo.stud5'. The duplicate key value is (87, phani).
--> above error for this below line.
insert into stud5 values(87,65,'phani')

alter table stud5 add constraint pk1 primary key(age)

create table stud7(number int constraint pk4 primary key,age int,name varchar(90))
--> for the below line it will  give an error since there will be only one primary key for entire table
--> so first  drop that primary key and then add the primary key on all columns u want.
--> it gives error as : Msg 1779, Level 16, State 0, Line 13
 --                       Table 'stud5a' already has a primary key defined on it.
 --                       Msg 1750, Level 16, State 0, Line 13
 --                      Could not create constraint or index. See previous errors.
--> alter table stud5a add primary key(age)


-->There is already an primary key in your table. You can't just add primary key,otherwise will cause error. Because there is one primary key for sql table.

-->First, you have to drop your old primary key.

alter table stud7 drop constraint pk4

--> now u can create the primary keys for all the columns u wanted.

--> we cannot add  primary key for the nullable columns

alter table stud7 add constraint pk5 primary key(number)


--> for unique no need to drop the constraint
create table stud7a(number int constraint pk4 unique,age int,name varchar(90))

alter table stud7a add constraint u12 unique(age)


-->You can only have one primary key, but you can have multiple columns in your primary key.

-->You can also have Unique Indexes on your table, which will work a bit like a primary key in that they will enforce unique values, and will speed up querying of those values.
-->Primary in the context of Primary Key means that it's ranked first in importance. Therefore, there can only be one key. It's by definition.

-->However a primary key can include several columns


-->Primary key allows us to uniquely identify each record in the table. 
-->You can have 2 primary keys in a table but they are called Composite Primary Keys.
-->"When you define more than one column as your primary key on a table, it is called a composite primary key."
