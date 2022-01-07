select * 
from sale.customer C LEFT JOIN sale.orders O ON C.customer_id = O.customer_id  