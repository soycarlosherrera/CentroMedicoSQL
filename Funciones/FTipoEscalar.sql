
CREATE FUNCTION nombreFunction (@var int)
RETURNS int

AS

BEGIN
	set @var = @var * 5
	return @var
END

CREATE FUNCTION concatenar(
							@apellido varchar(50),
							@nombre varchar(50)
							)
RETURNS varchar(100)

AS
BEGIN
	declare @resultado varchar(100)
	set @resultado = @apellido+', '+@nombre
	return @resultado
END

--Prueba

SELECT dbo.concatenar('Herrera','Carlos')


CREATE FUNCTION obtenerPais(
							@idPaciente paciente
							)
RETURNS varchar(50)

AS
BEGIN
	declare @pais varchar(50)
	SET @pais = (SELECT PA.Pais FROM Paciente AS P
					INNER JOIN Pais AS PA
					ON PA.idPais = P.idPais
					WHERE idPaciente = @idPaciente)
	RETURN @pais
END

--Prueba

SELECT dbo.obtenerPais(3)