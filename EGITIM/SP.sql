INSERT INTO WORKER
( [WORKERCODE], [WORKERNAME], [GENDER], [BIRTHDATE], [TCNO], [WORKERBORDERCODE])
VALUES ('12345678901', 'SEMIH �INAR', 'E','19900101','12345678901', NEWID())




SELECT * FROM WORKER 
SELECT * FROM WORKERTRANSECTIONS


INSERT INTO [dbo].[WORKERTRANSECTIONS]
( [WORKERID], [DATE_], [IOTYPE], [GATEID])
values ('1',GETDATE(),'C','6')



ALTER PROCEDURE SP_CARD_CONTROL
@WORKERBARCODE AS VARCHAR (50)
AS
BEGIN
	IF EXISTS  (SELECT * FROM WORKER WHERE WORKERBORDERCODE =@WORKERBARCODE)
	BEGIN 
		SELECT 'KART DO�RU'
	END
	ELSE
	BEGIN
		SELECT 'KART YANLI�'
	END
END

