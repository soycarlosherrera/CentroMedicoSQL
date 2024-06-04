
/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Paciente
SELECT * FROM MedicoEspecialidad

INSERT INTO MedicoEspecialidad values (1,2,'Medico Clinico')
*/

CREATE PROCEDURE SELECT_TurnoPaciente(
					@idPaciente paciente
					)
AS
set nocount on

/*
SELECT * FROM Turno AS T
INNER JOIN Paciente AS P
ON P.idPaciente = T.idPaciente
INNER JOIN TurnoPaciente AS TP
ON TP.idTurno = T.idTurno
AND TP.idPaciente = @idPaciente
--El orden de los inner es importante para que reconozca las claves
--no debo igualar a variables sino a claves en las tablas
*/

SELECT * FROM Paciente AS P
INNER JOIN TurnoPaciente AS TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno AS T
ON T.idTurno = TP.idTurno
INNER JOIN MedicoEspecialidad AS M
ON M.idMedico = TP.idMedico

WHERE P.idPaciente = @idPaciente


--Ejecutar

Exec SELECT_TurnoPaciente 6

