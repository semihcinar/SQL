use test


--  REPLACE
UPDATE     jason
--SET	Body_Color_Original  = REPLACE(Body_Color_Original, '[''\n','') 
SET Body_Color_Original  = REPLACE(Body_Color_Original, '\n'']','') 
	
select Body_Color_Original 
from
jason


-- UPPER
SELECT UPPER (Body_Color_Original) 
from
jason


SELECT SUBSTRING ('CHARACTER', 0, 5)



select  SUBSTRING (Consumption, 4, 12)     from jason