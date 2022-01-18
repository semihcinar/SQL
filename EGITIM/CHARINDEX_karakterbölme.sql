
-- @ iþaretinden önceki karakterleri alýr. @ yerine boþluk koysaydýk boþluk araacaktý


select left(email, CHARINDEX ('@', email)-1) 
from sale.customer


select right(email, len (email) - CHARINDEX ('@', email)) 
from sale.customer
