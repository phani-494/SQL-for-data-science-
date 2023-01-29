use class1
use base1
select * from mytable2

create  index idx3 on mytables(weights)
create unique clustered index idx4 on new_studs(age)
-->disable the index

alter index idx3 on mytables disable

--> to enable it again give rebuild

alter index idx3 on mytables rebuild
--> to drop a index  using the syntax
drop index  if exists idx4 on new_studs