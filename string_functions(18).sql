-----> 18.string functions
select ascii('a') as value
select char(65) as character
select charindex('indra','his name is phanindra',5) as position
select concat('phan','indra',' sena') as name
select concat_ws('&','apples','fruits','banana','mango') as fruits
select difference('hi','world') as diff
select difference ('raju','kaju') as diff
select difference('hi','hai') as diff
select len('this is sql server') as length
select lower('THIS IS SQL SERVER') as lower
select upper('this is sql server') as upper
select ltrim('         macha how are you    ')
select rtrim('        yes i am super        ')
select format(getdate(),'d','us-en') as date --> here month first
select format(getdate(),'d','no') as date    --> here day  first
select left('indrasena',5) as name1
select right('mahasena',6) as name2
select nchar(65) as uni_standard
select patindex('%is%','this is sql server') as value2 
select quotename('he is man of masses','[') as name2
select quotename('he is man of masses','{') as name2
select replace('he is man of masses','is','was') as new_str
select replicate('indra',6) as str2
select reverse('indrasena') as str3
select soundex('hi') as str4--> returns code based on phonetic sound
select soundex('world') as str5
select 'hai'+space(20)+'sena' as name
select str(9098099.89,8,2) as str4
use base1
select * from stud1
select string_agg(names,'--') from stud1
select string_escape('['' this is /"  sql server "/ '']','json') as str5
select string_split('this,is,sql,server','.') as str6 --> string_split is not defined here in this.so it won't run.
select stuff('this is ms sql server',9,2,'microsoft') as str6 --> replaces 2 characters at 9 position and inserts microsoft at 9 position
select translate('[7567] 678 dfghjfd','[]','()') as str8
select trim('           ghjkl          ') as str9
select unicode('a')
