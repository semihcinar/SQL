

UPDATE  customer
SET city ='Nashville'
WHERE customer_id IN (


SELECT        TOP (50) customer_id
FROM            customer
WHERE        (city <> N'Brooklyn') AND (city <> N'Columbia') AND (city <> N'Boise') AND (city <> N'Dallas') AND (city <> N'Oakley')
GROUP BY state, city, customer_id
HAVING        (state = N'ny') AND (city <> N'New York') AND (city <> N'Sacramento') AND (city <> N'Yonkers') AND (city <> N'Minneapolis') AND (city <> N'Atlanta') AND (city <> N'Seattle')



)

--WHERE state IN ('MA','WI','IN', 'or', 'LA','TN','AZ','NC','GA','MN','WA','CO','VA','AK','RI','CT','KS','HI','MO','ID','SC','ME','MS','WY','NM','NV','SD','IA','NH','ND','AR','OK','MT','NE','UT','KY','DC' );



