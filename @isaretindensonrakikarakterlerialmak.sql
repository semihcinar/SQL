select substring (email, CHARINDEX ('@', email)+1, LEN(email)) as eposta,   count (substring (email, CHARINDEX ('@', email)+1, LEN(email))) as toplam
from customer
group by substring (email, CHARINDEX ('@', email)+1, LEN(email))



select substring (email, CHARINDEX ('.', email)+1, LEN(email)) as eposta
from customer
group by substring (email, CHARINDEX ('.', email)+1, LEN(email))