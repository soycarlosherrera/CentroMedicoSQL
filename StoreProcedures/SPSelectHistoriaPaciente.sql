
/*
SELECT * FROM Historia
SELECT * FROM HistoriaPaciente
SELECT * FROM Paciente
INSERT INTO MedicoEspecialidad values (1,2,'Medico Clinico')
*/

CREATE PROCEDURE SELECT_HistoriaPaciente(
					@idPaciente paciente
					)
AS
set nocount on

IF exists(
	SELECT * FROM Paciente AS P
	INNER JOIN HistoriaPaciente AS HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia AS H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad AS ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico AS M
	ON M.idMedico = ME.idMedico

	WHERE P.idPaciente = @idPaciente
)

	SELECT * FROM Paciente AS P
	INNER JOIN HistoriaPaciente AS HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia AS H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad AS ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico AS M
	ON M.idMedico = ME.idMedico

	WHERE P.idPaciente = @idPaciente

ELSE
	print 'No existen historias clinicas para el paciente'
	select 0 as resultados



--Ejecutar

Exec SELECT_HistoriaPaciente 7

