select current_timestamp as time
select GETUTCDATE() as time1
select getdate() as time2
select SYSDATETIME() as time3
select SYSUTCDATETIME() as time4
select SYSDATETIMEOFFSET() as time5

select datename(y,'12-12-89') as date1 --> gives  346 simply it means it is 346 th day of the year
select datename(y,'2-2-09') as date1    --> 33 rd date of the year
select datename(d,'2-3-99') as date2 --> gives 3 since date is 3
select datename(m,'12-13-99') as date2 --> gives december since month  is 12


select datepart(y,'12-12-89') as date1 --> gives  346 simply it means it is 346 th day of the year
select datepart(y,'2-2-09') as date1    --> 33 rd date of the year
select datepart(d,'2-3-99') as date2 --> gives 3 since date is 3
select datepart(m,'12-13-99') as date2 --> gives december since month  is 12

select day('12-10-99') as day1
select month('1-13-2009') as month
select year('12-10-99') as year

select datediff(year,'12-10-99','5-8-2009') as years
select datediff(month,'1-13-2009','4-9-2020') as months
select datediff(day,'12-10-99','1-1-2000') as days

select dateadd(year,15,'12-10-99') as years
select dateadd(month,10,'12-10-99') as years
select dateadd(day,215,'12-10-99') as years
select isdate('34-6-89')
select isdate('12-12-09')

select DATEFROMPARTS(1998,12,15) as date
select DATETIME2FROMPARTS(1998,12,12,4,5,6,76,5)
select DATETIMEFROMPARTS(1999,12,10,3,45,6,7)
select TIMEFROMPARTS(12,12,12,1,1)








