select first_name, last_name, 
LTRIM(first_name), 
LTRIM(last_name) 
FROM customer



UPDATE  sale.staff
SET first_name IN  (RemoveAllSpaces (first_name) from sale.staff)


UPDATE sale.staff SET  "first_name"=replace("first_name", ' ', ''); 



select * from sale.staff
where first_name ='Linda'


update sale.staff
set first_name = REPLACE(LTRIM(RTRIM(first_name)), '  ', ' ')







CREATE FUNCTION RemoveAllSpaces
(
    @InputStr varchar(8000)
)
RETURNS varchar(8000)
AS
BEGIN
declare @ResultStr varchar(8000)
set @ResultStr = @InputStr
while charindex(' ', @ResultStr) > 0
    set @ResultStr = replace(@InputStr, ' ', '')

return @ResultStr
END

select dbo.RemoveAllSpaces (first_name) from sale.staff