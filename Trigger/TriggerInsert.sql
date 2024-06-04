

CREATE TRIGGER PacienteCreado ON Paciente --Nombre trigger y tabla evaluada
AFTER INSERT --Despues de insertar
AS

--Comprobacion ultimo campo insertado
IF (SELECT idPais FROM inserted) = 'MEX'
	INSERT into PacienteLog (idPaciente,idPais,fechaAlta)
		SELECT i.idPaciente,i.idPais,getdate() FROM inserted i

