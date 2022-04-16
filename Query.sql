-- select *from CLIENT_MASTER Where NAME like '_a%'

-- select *from CLIENT_MASTER Where CITY like 'M%'

-- select *from CLIENT_MASTER Where CITY in('Banglore','Manglore')

-- select *from CLIENT_MASTER  Where BALDUE >=5000

-- select * from sales_order Where CLIENTNO = 'C00001' or CLIENTNO = 'C00002'

-- select NAME , CITY, STATE from CLIENT_MASTER Where STATE not in('Maharastra') 



--11-01-2022
-- 1.Find out the products, which have been sold to 'Ivan Bayross'.

-- select CLIENT_MASTER.NAME,
-- 	CLIENT_MASTER.CLIENTNO,
-- 	SALES_ORDER.ORDERNO,
-- 	SALES_ORDER_DETAILS.PRODUCTNO,
-- 	PRODUCT_MASTER.DESCRIPTION
-- 	FROM CLIENT_MASTER
-- 	join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- 	join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- 	join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- 	where CLIENT_MASTER.CLIENTNO = 'C00001'

-- OUTPUT:-
-- T-Shirts
-- Shirt
-- Cotton jeans
-- Denim Shirts
-- Lycra Top



-- 3.List the ProductNo and Discription of constantly sold (i.g. rapidly moving) products.


-- select PRODUCT_MASTER.PRODUCTNO
-- ,PRODUCT_MASTER.DESCRIPTION
-- ,SALES_ORDER_DETAILS.QTYORDERD
-- FROM CLIENT_MASTER
-- join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- Where SALES_ORDER_DETAILS.QTYORDERD>5 

-- OUTPUT:-
-- P00001	T-Shirts	10
-- P00001	T-Shirts	10
-- P00001	T-Shirts	10

-- 4.Find the name of client who have purchased "Trousers".

-- select CLIENT_MASTER.NAME
-- ,PRODUCT_MASTER.DESCRIPTION
-- FROM CLIENT_MASTER
-- join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- Where PRODUCT_MASTER.PRODUCTNO='P00005'

-- OUTPUT:-
-- Chhaya Bankar	Trousers

-- 5.List the products and orders from customers who have ordered less then 5 units od 'Pull Overs'.

-- select PRODUCT_MASTER.DESCRIPTION
-- ,SALES_ORDER_DETAILS.QTYORDERD
-- FROM CLIENT_MASTER
-- join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- Where SALES_ORDER_DETAILS.QTYORDERD<5	

-- OUTPUT:-
-- T-Shirts	4
-- Shirt	2
-- Cotton jeans	2
-- Jeans	3
-- Trousers	3
-- Pull Overs	4
-- Denim Shirts	2
-- Lycra Top	1
-- Shirts	1
-- Pull Overs	1

-- 6.Find the products and their quantities for the orders placed by c AND 'Mamta Muzumdar'.

-- select CLIENT_MASTER.NAME
-- ,PRODUCT_MASTER.DESCRIPTION
-- ,SALES_ORDER_DETAILS.QTYORDERD	
-- FROM CLIENT_MASTER
-- join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- Where CLIENT_MASTER.NAME in ('ivan bayroos','Mamta Muzumdar')

-- OUTPUT:-
-- ivan bayroos	T-Shirts	4
-- ivan bayroos	Shirt	2
-- ivan bayroos	Cotton jeans	2
-- Mamta Muzumdar	T-Shirts	10
-- ivan bayroos	Denim Shirts	2
-- ivan bayroos	Lycra Top	1

-- 7. the products and their quantities for the orders placed by ClientNo'C00001' and 'C00002'.

-- select CLIENT_MASTER.NAME,
-- PRODUCT_MASTER.DESCRIPTION,
-- SALES_ORDER_DETAILS.QTYORDERD	
-- FROM CLIENT_MASTER
-- join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
-- join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
-- join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
-- Where CLIENT_MASTER.CLIENTNO in ('C00001','C00002')

-- OUTPUT:-
-- ivan bayroos	T-Shirts	4
-- ivan bayroos	Shirt	2
-- ivan bayroos	Cotton jeans	2
-- Mamta Muzumdar	T-Shirts	10
-- ivan bayroos	Denim Shirts	2
-- ivan bayroos	Lycra Top	1



  --select * from PRODUCT_MASTER 

--SELECT MIN ( DISTINCT SELLPRICE)    
--FROM PRODUCT_MASTER; 

--SELECT Max( DISTINCT SELLPRICE)    
--FROM PRODUCT_MASTER;
--
--SELECT sum( DISTINCT SELLPRICE)    
--FROM PRODUCT_MASTER;
--	
--SELECT AVG( DISTINCT SELLPRICE)    
--FROM PRODUCT_MASTER;

--SELECT COUNT( DISTINCT SELLPRICE)    
--FROM PRODUCT_MASTER;

--17/01//2022


--DECLARE @d DATETIME = '2022-01-17 14:30:14';
--SELECT 
--   DATEPART(year, @d) year, 
--   DATEPART(quarter, @d) quarter, 
--   DATEPART(month, @d) month, 
--   DATEPART(day, @d) day, 
--   DATEPART(hour, @d) hour, 
--   DATEPART(minute, @d) minute, 
--   DATEPART(second, @d) second;
--
--   OUTPUT:-------2022	1	1	17	14	30	14



--DECLARE @dt DATETIME2= '2022-02-17 13:38:30.1234567 +08:10';
--
--SELECT 'year,yyy,yy' date_part, 
--    DATENAME(year, @dt) result
--UNION
--SELECT 'quarter, qq, q', 
--    DATENAME(quarter, @dt)
--UNION
--SELECT 'month, mm, m', 
--    DATENAME(month, @dt)
--UNION
--SELECT 'dayofyear, dy, y', 
--    DATENAME(dayofyear, @dt)
--UNION
--SELECT 'day, dd, d', 
--    DATENAME(day, @dt)
--UNION
--SELECT 'week, wk, ww', 
--    DATENAME(week, @dt)
--UNION
--SELECT 'weekday, dw, w', 
--    DATENAME(weekday, @dt)
--UNION
--SELECT 'hour, hh' date_part, 
--    DATENAME(hour, @dt)
--UNION
--SELECT 'minute, mi,n', 
--    DATENAME(minute, @dt)
--UNION
--SELECT 'second, ss, s', 
--    DATENAME(second, @dt)
--UNION
--SELECT 'millisecond, ms', 
--    DATENAME(millisecond, @dt)
--UNION
--SELECT 'microsecond, mcs', 
--    DATENAME(microsecond, @dt)
--UNION
--SELECT 'nanosecond, ns', 
--    DATENAME(nanosecond, @dt)
--UNION
--SELECT 'TZoffset, tz', 
--    DATENAME(tz, @dt)
--UNION
--SELECT 'ISO_WEEK, ISOWK, ISOWW', 
--    DATENAME(ISO_WEEK, @dt);

---------OUTPUT-----------------------------


    -- day, dd, d	17
    -- dayofyear, dy, y	48
    -- hour, hh	13
    -- ISO_WEEK, ISOWK, ISOWW	7
    -- microsecond, mcs	123456
    -- millisecond, ms	123
    -- minute, mi,n	38
    -- month, mm, m	February
    -- nanosecond, ns	123456700
    -- quarter, qq, q	1
    -- second, ss, s	30
    -- TZoffset, tz	+00:00
    -- week, wk, ww	8
    -- weekday, dw, w	Thursday
    -- year,yyy,yy	2022

--19/01/2022

-- select description, sum(sellprice) 'Total sale',sum(qtyonhand) qty
-- from product_master
-- group by description


-- select description, sum(sellprice) 'Total sale',sum(qtyonhand) qty
-- from product_master
-- group by description

-- select description, sum(sellprice) 'Total sale',sum(qtyonhand) qty
-- from product_master
-- group by description
-- where description like ='shirt'

-- select * from product_master

-- select DESCRIPTION,SUM()





