SELECT        dbo.FINAL_CUSTOMER_DATATHON.BASE_CUSTOMER_ID, dbo.FINAL_SALES_FILE_DATATHON.CUSTOMER_ID, dbo.FINAL_SALES_FILE_DATATHON.SALESFILE_ID, dbo.FINAL_SALES_FILE_DATATHON.SF_CREATE_DATE, 
                         dbo.FINAL_SALES_FILE_DATATHON.STATUS, dbo.FINAL_SALES_FILE_DATATHON.REQ_BRAND_CODE, dbo.FINAL_SALES_FILE_DATATHON.REQ_TOPMODEL_CODE, 
                         dbo.FINAL_CUSTOMER_DATATHON.CUSTOMER_ID AS Expr1, dbo.FINAL_CUSTOMER_DATATHON.GENDER, dbo.FINAL_CUSTOMER_DATATHON.GENDER_ID, dbo.FINAL_CUSTOMER_DATATHON.MARITAL_STATUS, 
                         dbo.FINAL_CUSTOMER_DATATHON.MARITAL_STATUS_ID, dbo.FINAL_CUSTOMER_DATATHON.BIRTH_DATE, dbo.FINAL_CUSTOMER_DATATHON.FK_ADDRESS_COMMUNICATION_CITY, 
                         dbo.FINAL_CUSTOMER_DATATHON.OCCUPATION, dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.VEHICLE_ID, dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.CUSTOMER_ID AS Expr2, 
                         dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.CREATE_DATE, dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.BASE_CUSTOMER_ID AS Expr3, 
                         dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.VEHICLE_ID AS Expr4, dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.START_DATE, 
                         dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.END_DATE, dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.FK_RELATION_STATUS_ID, 
                         dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.FK_RELATION_STATUS_EXPLANATION, dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL.TOTAL_AMOUNT_TL, 
                         dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL.VEHICLE_ID AS Expr5, dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL.IS_MAINTENANCE, dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL.CREATE_DATE AS Expr6, 
                         dbo.FINAL_VEHICLE_TABLE_DATATHON.GEAR_BOX_TYPE, dbo.FINAL_VEHICLE_TABLE_DATATHON.MOTOR_GAS_TYPE, dbo.FINAL_VEHICLE_TABLE_DATATHON.TOPMODEL_CODE, 
                         dbo.FINAL_VEHICLE_TABLE_DATATHON.BASEMODEL_CODE, dbo.FINAL_VEHICLE_TABLE_DATATHON.BRAND_CODE, dbo.FINAL_VEHICLE_TABLE_DATATHON.TRAFFIC_DATE, 
                         dbo.FINAL_VEHICLE_TABLE_DATATHON.VEHICLE_ID AS Expr7
FROM            dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL INNER JOIN
                         dbo.FINAL_VEHICLE_TABLE_DATATHON ON dbo.MASK_SERVIS_BAKIM_DATATHON_FINAL.VEHICLE_ID = dbo.FINAL_VEHICLE_TABLE_DATATHON.VEHICLE_ID INNER JOIN
                         dbo.FINAL_CUSTOMER_DATATHON INNER JOIN
                         dbo.FINAL_SALES_FILE_DATATHON ON dbo.FINAL_CUSTOMER_DATATHON.CUSTOMER_ID = dbo.FINAL_SALES_FILE_DATATHON.CUSTOMER_ID INNER JOIN
                         dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON ON dbo.FINAL_CUSTOMER_DATATHON.CUSTOMER_ID = dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.CUSTOMER_ID INNER JOIN
                         dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON ON dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.VEHICLE_ID = dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.VEHICLE_ID AND 
                         dbo.FINAL_CUSTOMER_DATATHON.BASE_CUSTOMER_ID = dbo.FINAL_CUSTOMER_RELATED_TABLE_FOR_DATATHON.BASE_CUSTOMER_ID ON 
                         dbo.FINAL_VEHICLE_TABLE_DATATHON.VEHICLE_ID = dbo.FINAL_SIFIR_ARAC_ALANLAR_DATATHON.VEHICLE_ID CROSS JOIN
                         dbo.sample_submission