

/*
select * from Turno
select * from TurnoPaciente

*/

CREATE PROCEDURE UPDATE_Turno(
					@idTurno tinyint,
					@estado tinyint,
					@observacion observacion
					)
AS
set nocount on

if EXISTS (SELECT * FROM Turno WHERE idTurno=@idTurno)
	BEGIN
		UPDATE Turno SET estado = @estado,observacion=@observacion
		WHERE idTurno=@idTurno 
	END
ELSE
	SELECT 0 AS Result

--Ejecutar

EXEC UPDATE_Turno 3,1,'Ha sido atendido'