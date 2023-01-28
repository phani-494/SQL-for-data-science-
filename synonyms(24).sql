--> using the interface we can create synonyms. select dbo while creating synonyms
--> watch video for clear understanding
select * from s1 --> this will recover the data from the fk table since s1 is synonym for fk table
select * from fk
select * from s2
use class1

--> to create a synonym using syntax
create synonym s3  for northwind.dbo.orders
--> here s3 synonym refers to the orders table in the northwind database
select * from s3
drop synonym s1 

--> to get the details of all synonyms present  in the table use like this
select name,base_object_name,type from sys.synonyms
order by name;
