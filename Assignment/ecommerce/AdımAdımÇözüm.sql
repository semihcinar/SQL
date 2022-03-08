-- E-COMMERCE ANALÝZ 

select * from cust_dimen

update cust_dimen
set Cust_id = REPLACE(Cust_id,'Cust_','') 

---------------------------------------------------
select * from orders_dimen

update orders_dimen
set Ord_id = REPLACE(Ord_id,'Ord_','') 

------------------------------------------------------
select * from prod_dimen

update prod_dimen
set Prod_id = REPLACE(Prod_id,'Prod_','') 
---------------------------------------
select * from shipping_dimen

update shipping_dimen
set Ship_id = REPLACE(Ship_id,'_','')
-------------------------------------------

select * from market_factORT

update market_factORT
--set Ord_id = REPLACE(Ord_id,'Ord_',''),
--set Prod_id = REPLACE(Prod_id,'Prod_',''),
--set Ship_id = REPLACE(Ship_id,'SHP_','')
set Cust_id = REPLACE(Cust_id,'Cust_','')

---------------------------------------------
alter table market_fact alter column Ord_id int
alter table market_fact alter column Prod_id int
alter table market_fact alter column Ship_id int
alter table market_fact alter column Cust_id int
--------------------------------------------------
alter table cust_dimen alter column Cust_id int
alter table [dbo].[orders_dimen] alter column Ord_id int
alter table [dbo].[prod_dimen] alter column Prod_id int
alter table [dbo].[shipping_dimen] alter column Ship_id int
----------------------------------------------------------
