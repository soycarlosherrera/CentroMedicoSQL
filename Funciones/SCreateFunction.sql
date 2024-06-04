

CREATE FUNCTION nombrefun(@param int)
RETURNS int
AS
BEGIN
	set @param = @param * 5
	return @param
END

--Forma de ejecutar la funcion

select dbo.nombrefun (256)

--Modificar la funcion 

ALTER FUNCTION nombrefun(@param int)
RETURNS int
AS
BEGIN
	set @param = @param * 5
	return @param
END