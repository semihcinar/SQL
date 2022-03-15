use [E-Commerce]

UPDATE combined_table
set Ship_Date = b.tarih_new from combined_table a 
inner join shipping_dimen b on a.Ship_id =	b.Ship_id 



select  * from combined_table a 
inner join shipping_dimen b on a.Ship_id =	b.Ship_id 



UPDATE combined_table
set Ship_Date = shp.tarih_new

where Ship_id = 



	