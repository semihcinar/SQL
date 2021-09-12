use test


UPDATE jasonOKK
--SET HorsePower = '70' 
SET Model_Code = '0035/BFG'
where ID IN  
(
	SELECT        ID
	FROM            JasonOKK

GROUP BY Model_Code, Model, make_model, Gearing_Type, short_description, Displacement, HorsePower, Fuel, ID
HAVING        (Model = 'Insignia') AND (Model_Code = 'Unknown') AND (Displacement LIKE '%1,600%') AND ((HorsePower = '101') OR (HorsePower = '100'))

)


GROUP BY Model_Code, Model, make_model, Gearing_Type, short_description, Displacement, HorsePower, Fuel, ID
HAVING        (Model = 'Insignia') AND (Model_Code = 'Unknown') AND (Displacement LIKE '%1,490%')  AND (short_description LIKE '%sport%') AND ((HorsePower = '103') OR (HorsePower = '104')) 
)


AND ((short_description LIKE '%SPB%') OR
								(short_description LIKE '%Sport%') OR
								(short_description LIKE '%S t%') OR
								(short_description LIKE '%Sline%') OR
								(short_description LIKE '%SB%') OR
								(short_description LIKE '%S line%') OR
								(short_description LIKE '%S-line%') OR
								(short_description LIKE '%S-t%') OR
								(short_description LIKE '%Design%'))

								)


