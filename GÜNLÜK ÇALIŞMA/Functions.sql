SELECT [product_name],[model_year],[list_price]
INTO #deneme1
FROM product.product;


select * from #deneme1
drop table #deneme1

select GETDATE()
select datename(MONTH, getdate())
select DATEPART(MONTH, GETDATE())
select DAY(getdate())
select MONTH(getdate())
select YEAR(GETDATE())
select DATEDIFF(DAY, '20220101', getdate())
select DATEDIFF(MONTH, '20220101', getdate())
select DATEDIFF(YEAR, '20220101', getdate())
select DATEADD(day, 30, GETDATE())
EOMONTH(startdate [, month to add])
SELECT EOMONTH(getdate()) AS EndofFeb

select ISDATE('20220101')
select ISDATE('20220')

SET DATEFORMAT DMY


SELECT SUBSTRING('clarusway.com.tr', LEN('clarusway.com.tr')-1, LEN('clarusway.com.tr'));
SELECT SUBSTRING('clarusway.com.tr', 4,5);



SELECT LEN('this is an example') AS sample
SELECT LEN(NULL) AS col1, LEN(10) AS col2, LEN(10.5) AS col3
SELECT CHARINDEX('yourself', 'Reinvent yourself') AS start_position;
SELECT CHARINDEX('r', 'Reinvent yourself') AS motto;
SELECT CHARINDEX('self', 'Reinvent yourself and ourself') AS motto;
SELECT CHARINDEX('self', 'Reinvent yourself and ourself', 15) AS motto;

SELECT PATINDEX('%ern%', 'this is not a pattern') AS sample
SELECT PATINDEX('%ern', 'this is not a pattern') AS sample

SELECT SUBSTRING('clarusway.com', LEN('clarusway.com')-1, LEN('clarusway.com'));




select substring (email, CHARINDEX ('@', email)+1, LEN(email)) as eposta from sale.customer
select right(email, len (email) - CHARINDEX ('@', email)) from sale.customer

SELECT UPPER('clarusway') AS col;
SELECT LOWER('CLARUSWAY') AS col;


SELECT value from string_split('John,is,a,very,tall,boy.', ',')




SELECT SUBSTRING('Clarusway', 1, 3) AS substr

SELECT SUBSTRING('Clarusway', 4,3) AS substr

SELECT SUBSTRING('Clarusway', -5,2) AS substr

SELECT LEFT('Clarusway', 2) AS leftchars
SELECT RIGHT('Clarusway', 2) AS rightchars


SELECT UPPER (SUBSTRING('clarusway.com', 0 , CHARINDEX('.','clarusway.com')));

SELECT TRIM('@' FROM '@@@clarusway@@@@') AS new_string;
SELECT TRIM('ca' FROM 'cadillac') AS new_string;

SELECT STR(FLOOR (123.45), 8, 3) AS num_to_str;

SELECT 'Reinvent' + ' yourself' AS concat_string;
SELECT CONCAT('Reinvent' , ' yourself') AS concat_string;
SELECT 'Way' + ' to ' + 'Reinvent ' + 'Yourself' AS motto;
SELECT CONCAT ('Robert' , ' ', 'Gilmore') AS full_name

SELECT GETDATE() AS current_time_, CONVERT(DATE, GETDATE()) AS current_date_
SELECT GETDATE() AS current_time_, CONVERT(NVARCHAR, GETDATE(), 11)AS current_date_

SELECT ROUND(565.49, -1) AS col;
SELECT ROUND(565.49, -2) AS col;
SELECT ROUND(123.9994, 3) AS col1, ROUND(123.9995, 3) AS col2;
SELECT ROUND(123.9994, 3) AS col1, ROUND(123.9995, 3) AS col2;
SELECT ROUND(123.4545, 2) col1, ROUND(123.45, -2) AS col2;
SELECT ROUND(150.75, 0) AS col1, ROUND(150.75, 0, 1) AS col2;


SELECT CAST(1034.845299 AS DECIMAL(7,3))
select STR(1034.845299,8,4)
select CAST(1034.845299 AS NUMERIC(7,3))
select ROUND(1034.845299,3)


SELECT COALESCE(NULLIF(ISNUMERIC(STR(12255.212, 7)), 1), 9999);