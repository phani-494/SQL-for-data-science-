select cast(234.56 as int) as value1
select cast(234.56 as varchar) as value2
select cast(234.56 as varchar)+' is now a string' as value2
 
--> choosing one value from a multiple values using index and starting from 1 index
select choose(4,1,2,3,4,5,6,7) as val4
select choose(2,'sun','mon','tue','wed','thu','fri','sat') as val5
--> both convert and cast are almost similar only but syntax is different and date functions can also be specified using the convert

select convert(int,234.567) as val7
select convert(datetime,'1999-12-02')
select convert(datetime,'1999-12-02',101)
select convert(datetime,'1999-12-02',102)
select convert(datetime,'1999-12-02',103)--> british format
select isnull(null,'sql servers') as str5
select isnull(5,'sql') as str6
select isnumeric('5') --> gives 1 since even it is in quotation marks still it is an number only.
select isnumeric(89)-->1
select isnumeric('kjhg') -->0

select iif(7>6,'7 is true','false')
select iif(7<6,'7 is true','false')
select try_cast(234.56 as int)
select try_cast('435.87' as int)
select try_cast (5 as varchar)

select try_convert(int,345.87)
select try_convert(float,678.89)
select try_convert(varchar,67)
select try_convert (int,'your') as str6
select try_parse('abcd' as int)
select try_parse('456' as int)












