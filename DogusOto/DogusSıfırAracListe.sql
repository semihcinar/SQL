SELECT    top(1000) Marka.REQ_BRAND_CODE, Marka.REQ_TOPMODEL_CODE, SýfýrAracAlan.CUSTOMER_ID AS VEHICLE_ID, VEHICLE_Bilgileri.VEHICLE_ID, SýfýrAracAlan.VEHICLE_ID, VEHICLE_Bilgileri.TRAFFIC_DATE, 
                         VEHICLE_Bilgileri.BRAND_CODE, VEHICLE_Bilgileri.BASEMODEL_CODE, VEHICLE_Bilgileri.TOPMODEL_CODE, VEHICLE_Bilgileri.MOTOR_GAS_TYPE, VEHICLE_Bilgileri.GEAR_BOX_TYPE, RuhsatSahibi.VEHICLE_ID, 
                         RuhsatSahibi.FK_RELATION_STATUS_EXPLANATION
FROM            Marka INNER JOIN
                         SýfýrAracAlan ON Marka.CUSTOMER_ID = SýfýrAracAlan.CUSTOMER_ID INNER JOIN
                         VEHICLE_Bilgileri ON SýfýrAracAlan.VEHICLE_ID = VEHICLE_Bilgileri.VEHICLE_ID INNER JOIN
                         RuhsatSahibi ON VEHICLE_Bilgileri.VEHICLE_ID = RuhsatSahibi.VEHICLE_ID