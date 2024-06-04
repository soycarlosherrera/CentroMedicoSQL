
/*
select * from Turno
select * from TurnoPaciente
select * from PagoPaciente

*/

CREATE PROCEDURE DELETE_Turno(
					@idTurno tinyint
					)
AS
set nocount on

if EXISTS (SELECT * FROM Turno WHERE idTurno=@idTurno)
	BEGIN
		DELETE FROM TurnoPaciente WHERE idTurno=@idTurno
		DELETE FROM PagoPaciente WHERE idTurno=@idTurno
		DELETE FROM Turno WHERE idTurno=@idTurno		
	END
ELSE
	SELECT 0 AS Result

--Ejecutar

EXEC DELETE_Turno 3