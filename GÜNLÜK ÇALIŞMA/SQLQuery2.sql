SELECT        TOP (100) sale.staff.staff_id, sale.staff.first_name, sale.staff.last_name, sale.staff.email, sale.staff.phone, sale.staff.active, sale.staff.store_id, sale.staff.manager_id, sale.store.email AS Expr1
FROM            sale.staff INNER JOIN
                         sale.store ON sale.staff.store_id = sale.store.store_id AND sale.staff.store_id = sale.store.store_id
ORDER BY sale.staff.store_id