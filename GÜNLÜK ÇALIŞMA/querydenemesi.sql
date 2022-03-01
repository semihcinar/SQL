

SELECT   sale.staff.staff_id, sale.staff.first_name, 
		 sale.staff.last_name, sale.staff.email, sale.staff.phone, 
		 sale.staff.active, sale.staff.store_id, sale.staff.manager_id, 
		 sale.store.store_id AS Expr1, sale.store.store_name, 
        sale.store.phone AS Expr2, sale.store.email AS Expr3
FROM            sale.staff INNER JOIN
                sale.store ON sale.staff.store_id = sale.store.store_id