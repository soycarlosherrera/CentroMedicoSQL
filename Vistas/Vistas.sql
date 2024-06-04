
CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idPaciente, P.nombre, P.apellido, T.idTurno, T.estado 
FROM Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente
	inner join Turno T
	on T.idTurno = TP.idTurno
WHERE isnull(T.estado,0) = 0 --Si es nulo lo establezco en cero


--Prueba
SELECT * FROM PacientesTurnosPendientes