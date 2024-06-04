

ALTER TABLE PacienteLog ADD fechaBaja DATETIME
SELECT * FROM PacienteLog
delete from Paciente where idPaciente = 10

CREATE TRIGGER PacienteEliminado ON Paciente
FOR DELETE --No se utiliza AFTER DELETE, ya que en ese caso perderíamos los datos antes de actualizar nuestro Log.
AS

--Comprobacion existencia campo a eliminar
IF EXISTS (SELECT idPaciente FROM PacienteLog
			WHERE idPaciente = (SELECT idPaciente FROM deleted))
		UPDATE PacienteLog SET fechaBaja = getdate()
			WHERE idPaciente = (SELECT idPaciente FROM deleted)
ELSE
	INSERT INTO PacienteLog (idPaciente,idPais,fechaBaja)
		SELECT idPaciente, idPais, getdate() FROM deleted