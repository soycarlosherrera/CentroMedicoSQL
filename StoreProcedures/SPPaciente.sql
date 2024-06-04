

CREATE PROC SP_paciente ( --Nombre
	@idPaciente int --Parametros de entrada con su tipo de dato
)
AS --Inicio del procedimiento
SELECT * FROM Paciente WHERE idPaciente = @idPaciente --Instruccion
GO --Fin del procedimiento