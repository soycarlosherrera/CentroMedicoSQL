

ALTER TABLE PacienteLog ADD fechaModificacion DATETIME
SELECT * FROM PacienteLog

CREATE TRIGGER PacienteModificado ON Paciente --Nombre trigger y tabla evaluada
AFTER UPDATE --Despues de actualizar
AS

--Comprobacion existencia ultimo campo actualizado
IF EXISTS (SELECT idPaciente FROM PacienteLog
			WHERE idPaciente = (SELECT idPaciente FROM inserted))
		UPDATE PacienteLog SET fechaModificacion = getdate()
			WHERE idPaciente = (SELECT idPaciente FROM inserted)
ELSE
	INSERT INTO PacienteLog (idPaciente,idPais,fechaModificacion)
		SELECT idPaciente, idPais, getdate() FROM inserted


