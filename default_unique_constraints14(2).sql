use base1
create table stud4(age int default(80),height int)
insert into stud4  values(87,76)
insert into stud4(height) values(56) --> if u don't give any value then default value will be entered.
-- > insert into stud4 values(89)
--> above query gives error since it doesn't specify whether 89 belongs to which column. even though if other is default we cannot give directly like this.
--> Column name or number of supplied values does not match table definition.

select * from stud4_a

create table stud4_a(doj date constraint d2 default getdate(),age int)
insert into stud4_a(age) values(45)


alter table stud4_a add constraint c4 default(87) for age



create table stud6(name varchar(60) constraint u1 unique,age int unique)
insert into stud6 values('indra',80)
-->insert into stud6 values('indra',85)  ... gives error as below:
-->Violation of UNIQUE KEY constraint 'u1'. Cannot insert duplicate key in object 'dbo.stud6'. The duplicate key value is (indra).

 

create table stud6_a(name varchar(60) constraint u1a unique,age int unique,heigt int)
alter  table stud6_a add constraint u2 unique(heigt)
