


CREATE FUNCTION listaPaises()

RETURNS @paises TABLE(idPais char(3),pais varchar (50))

AS
BEGIN
	INSERT INTO @paises values('ESP','España')
	INSERT INTO @paises values('MEX','Mexico')
	INSERT INTO @paises values('CHI','Chile')
	INSERT INTO @paises values('PER','Peru')
	INSERT INTO @paises values('ARG','Argentina')

	RETURN
END

--Prueba

SELECT * FROM dbo.listaPaises()