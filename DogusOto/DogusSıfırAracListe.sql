SELECT    top(1000) Marka.REQ_BRAND_CODE, Marka.REQ_TOPMODEL_CODE, S�f�rAracAlan.CUSTOMER_ID AS VEHICLE_ID, VEHICLE_Bilgileri.VEHICLE_ID, S�f�rAracAlan.VEHICLE_ID, VEHICLE_Bilgileri.TRAFFIC_DATE, 
                         VEHICLE_Bilgileri.BRAND_CODE, VEHICLE_Bilgileri.BASEMODEL_CODE, VEHICLE_Bilgileri.TOPMODEL_CODE, VEHICLE_Bilgileri.MOTOR_GAS_TYPE, VEHICLE_Bilgileri.GEAR_BOX_TYPE, RuhsatSahibi.VEHICLE_ID, 
                         RuhsatSahibi.FK_RELATION_STATUS_EXPLANATION
FROM            Marka INNER JOIN
                         S�f�rAracAlan ON Marka.CUSTOMER_ID = S�f�rAracAlan.CUSTOMER_ID INNER JOIN
                         VEHICLE_Bilgileri ON S�f�rAracAlan.VEHICLE_ID = VEHICLE_Bilgileri.VEHICLE_ID INNER JOIN
                         RuhsatSahibi ON VEHICLE_Bilgileri.VEHICLE_ID = RuhsatSahibi.VEHICLE_ID