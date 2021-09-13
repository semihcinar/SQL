use test



UPDATE 
    jasonOKK
SET
   -- CO2_Emission= REPLACE(CO2_Emission, '[''\n','')
	
--	CO2_Emission= REPLACE(CO2_Emission, '\n'']','')

	CO2_Emission  = REPLACE(CO2_Emission, '[[], [], []]','')
	--WHERE
   -- ID ='249';




select Model_Code 
from
jasonOKK