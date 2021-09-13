--Weight Güncelleme 

use test
-- WEIGTH

UPDATE jasonOKK
SET Weight = '1459'
where Model_Code ='0035/AKZ'  


--GEARS

UPDATE jasonOKK
SET Gears = '6'
where Model_Code ='0035/AKZ'  

--Drive Chain

UPDATE jasonOKK
SET Drive_chain = 'front'
where Model_Code ='0035/AKZ'  

--Displacement
UPDATE jasonOKK
SET Displacement = '1364'
where Model_Code ='0035/AKZ'  

 --Clinder

UPDATE jasonOKK
SET Cylinders = '4'
where Model_Code ='0035/AKZ'  

--Emission Claas

UPDATE jasonOKK
SET Emission_Class = 'Euro 6'
where Model_Code ='0035/AKZ'  


UPDATE jasonOKK
SET CO2_Emission2 = '0'
where CO2_Emission ='Unknown'  


UPDATE jasonOKK
SET CO2_Emission = '106'
WHERE ID ='4089'



select  *
from JasonOKK
WHERE ID ='8542'
