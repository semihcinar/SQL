
Select  brand, name
From product1
Group By brand, name 
Having Count (ID) >1


select * from product1




DELETE FROM Data
WHERE ID NOT IN
(
	SELECT MAX(ID)
		From Data
		Group By prices_currency, brand, manufacturer, name);




UPDATE  Data
SET categories = '16'
WHERE  ID IN (

SELECT        ID
FROM            Data
WHERE        (categories <> N'1') AND (categories <> N'4') AND (categories <> N'5') AND (categories <> N'6') AND (categories <> N'7') AND (categories <> N'8') AND (categories <> N'9') AND (categories <> N'10') AND (categories <> N'11') AND 
                         (categories <> N'13') AND (categories <> N'14') AND (categories <> N'15') AND (categories LIKE N'%Receivers Amplifiers%')
) ;






Select   prices_currency, brand, manufacturer, name
From Data
Group By  prices_currency, brand, manufacturer, name
Having Count (name) > 1




select count(*) from Data

select * from Data



DELETE FROM creditcard
WHERE id NOT IN
(
	SELECT MAX(id)
		From creditcard
		Group By Time, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, Amount, Class
);





delete from Data
where ID IN (

SELECT        ID
FROM            Data
WHERE        (categories <> N'1') AND (categories <> N'4') AND (categories <> N'5') AND (categories <> N'6') AND (categories <> N'7') AND (categories <> N'8') AND (categories <> N'9') AND (categories <> N'10') AND (categories <> N'11') AND 
                         (categories <> N'13') AND (categories <> N'14') AND (categories <> N'15') AND (categories <> N'16')

);



UPDATE Data
set brand ='40'
WHERE ID IN (


SELECT        ID
FROM            Data
WHERE        (brand = N'BenQ')

) ;




select count(*) from Data	 


delete from Data
where ID IN (

SELECT        ID
FROM            Data
WHERE        (brand <> N'1') AND (brand <> N'2') AND (brand <> N'3') AND (brand <> N'4') AND (brand <> N'5') AND (brand <> N'6') AND (brand <> N'7') AND (brand <> N'8') AND (brand <> N'9') AND (brand <> N'10') AND (brand <> N'11') AND 
                         (brand <> N'12') AND (brand <> N'13') AND (brand <> N'14') AND (brand <> N'15') AND (brand <> N'16') AND (brand <> N'17') AND (brand <> N'18') AND (brand <> N'19') AND (brand <> N'20') AND (brand <> N'21') AND 
                         (brand <> N'22') AND (brand <> N'23') AND (brand <> N'24') AND (brand <> N'25') AND (brand <> N'26') AND (brand <> N'27') AND (brand <> N'28') AND (brand <> N'29') AND (brand <> N'30') AND (brand <> N'31') AND 
                         (brand <> N'32') AND (brand <> N'33') AND (brand <> N'34') AND (brand <> N'35') AND (brand <> N'36') AND (brand <> N'37') AND (brand <> N'38') AND (brand <> N'39') AND (brand <> N'40')


)