
/*
SELECT * FROM Especialidad
*/

CREATE PROCEDURE SELECT_EspecialidadMedico
AS
set nocount on

IF EXISTS(
	SELECT * FROM Especialidad
	)
	SELECT * FROM Especialidad
ELSE
	print 'No existen Especialidades'
	select 0 as resultados


--Ejecutar

Exec SELECT_EspecialidadMedico

