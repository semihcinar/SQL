
use outoscout	

UPDATE Query

SET Gears2= '7',
Fuel ='Diesel',
Displacement ='1598',
Weight='1230',
Cylinders='4',
HP_KW= '85',

CO2_Emission ='106',
Drive_chain ='front',
Emission_Class ='Euro 6',
Nr_of_Seats ='5',
Nr_of_Doors ='3'

WHERE        ModelCodeOrj = '0588/AZD' AND GearType = 'Automatic'



INSERT INTO jason (Consumption_con)
SELECT Consumption
FROM jason



INSERT INTO jason.Consumption_con
SELECT Consumption
FROM jason









WHERE        ModelCodeOrj = '0588/AZD' AND GearType = 'Automatic'








SELECT        Musteri.CUSTOMER_ID AS Expr1, Marka.CUSTOMER_ID, Musteri.BASE_CUSTOMER_ID
FROM            Marka INNER JOIN
                         Musteri ON Marka.CUSTOMER_ID = Musteri.CUSTOMER_ID