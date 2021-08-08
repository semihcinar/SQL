select substring (email, CHARINDEX ('@', email)+1, LEN(email)) as eposta,   count (substring (email, CHARINDEX ('@', email)+1, LEN(email))) as toplam
from sales.customers
group by substring (email, CHARINDEX ('@', email)+1, LEN(email))

