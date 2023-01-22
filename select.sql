 use Northwind
 select * from products -- gives all data  
 select all * from products -- all is optional word.it doesn't matter if u give it or not.
 -- to get only particular columns
 select productname,SupplierId from products
 --to display column name as some short name using AS keyword
 select CategoryId as cid from products --here for cid quotations are optional.without single quotes also it will run
 --filtering the columns using where condition
 select * from products where UnitPrice>50
 -- gives total no of rows
 select count(*) from products
 --to remove duplicate data use the distinct keyword
 select distinct(UnitPrice) from Products
 select count(distinct(UnitPrice)) from Products -- gives the count of distinct unitprices in the products table
 select top(10) * from products -- gives top 10 rows
 select top 10 unitprice from products
 select top 5 percent * from products -- 5 percent of records from starting only.
 select top 50 percent * from products  -- gives the half of records i,e. simply if u have 38 records total then 19 will be displayed.
 
 -- here a new table products2 will be created and data will be inserted into it whatever data present in the products table.
 select *  into product2 from products
 select * into product3 from products where ProductId>10
 -- supplier wise calculating the sum using the group by
 select supplierId,sum(UnitPrice) as total_sum from products group by supplierId 
 select supplierId,sum(UnitPrice) as total_sum from products group by supplierId having supplierId>10
 select supplierId,sum(UnitPrice) as total_sum from products group by supplierId having supplierId>10 order by SupplierId DESC
 select top 2  unitprice from products where unitprice>10 order by 1
 select unitprice from products where unitprice>5 order by 1
 -- if u give with ties then similar values will be displayed along with the top 2 rows if they are available in those top 2 rows
 select top 2 with ties unitprice from products where unitprice>5 order by 1




