
SELECT * FROM Paciente

DELETE FROM Paciente WHERE idPaciente = 1 --No permite eliminar porque el paciente es clave foranea en otra tabla

SELECT * FROM TurnoPaciente --En la tabla TurnoPaciente esta la FK

DELETE FROM TurnoPaciente WHERE idPaciente = 7 --Borro el registro en la otra tabla

DELETE FROM Paciente WHERE idPaciente = 7 --Ahora permite eliminar, sin errores de FK

