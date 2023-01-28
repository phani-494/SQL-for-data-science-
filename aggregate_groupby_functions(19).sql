 use Northwind
 --> all these aggregate functions can also be applied using group by for all min,sum.max.stdev,stdevp etc

 select * from PRODUCTS
 select checksum_agg(SupplierID) from Products
 SELECT avg(UnitPrice) from Products group by SupplierID
 SELECT avg(UnitPrice) as Avg1 from Products 


 SELECT SupplierID,avg(UnitPrice) from Products group by SupplierID
 SELECT SupplierID,sum(UnitPrice) from Products group by SupplierID

 select count(*) from Products
 select count(*) from Products where ProductId>30 
 --> if the data or records is very high in number(>100000) then u have to use the count_big function
 select count_big(*) from Products where ProductId>10
 SELECT SupplierID,count(UnitPrice) from Products group by SupplierID

 UPDATE Products set SupplierID=3 where ProductID=5
  SELECT avg(UnitPrice) as Avg1 from Products
  --> when the data  is modified then  it will change the result which  indicates that data is modified here.
-->checksum_agg ia used or applied on columns to check the result 
--> if the result  is changed then it shows that some values are changed or updated in the column.

 select checksum_agg(SupplierID) from Products --> here the value is changed compared to above value since the value in column is also changed
 --> previously 5 now 4 which means some value(s) are updated.

select max(unitprice) as max from products
select SupplierId, max(unitprice) as max from products group by SupplierID

select min(unitprice) as min from products


select supplierId,stdev(unitprice)as deviation from Products group by SupplierID--> takes sample of data 
select stdevp(unitprice)as deviation from Products--> takes entire data of that column and calculate the result

select var(unitprice)as variance from Products--> takes sample of data 
select varp(unitprice)as variance from Products--> takes entire data of that column and calculate the result





