
-- @ i�aretinden �nceki karakterleri al�r. @ yerine bo�luk koysayd�k bo�luk araacakt�


select left(email, CHARINDEX ('@', email)-1) 
from sale.customer


select right(email, len (email) - CHARINDEX ('@', email)) 
from sale.customer
