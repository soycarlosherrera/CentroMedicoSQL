
--Se utiliza para evaluar porcion de codigo
--en la que actualiza o borra datos
--para validar insert
--poder dejar todo como estaba si los resultados no son los esperados

SELECT * FROM Paciente

BEGIN TRAN --bloquea tabla hasta despues de un commit o rollback
	UPDATE Paciente SET telefono = 444 WHERE idPaciente=7--Actualizo campo
if @@ROWCOUNT = 1 --@@ROWCOUNT cuantos registros furon actualizados
	COMMIT TRAN --Confirmo transaccion, hace efectivo el update
else
	ROLLBACK TRAN --Cancela el update

--------------------------------------------------------------------

BEGIN TRAN --bloquea tabla hasta despues de un commit o rollback
	UPDATE Paciente SET telefono = 444 WHERE apellido='Lopez'--Actualizo campo
if @@ROWCOUNT = 1 --@@ROWCOUNT cuantos registros furon actualizados
	COMMIT TRAN --Confirmo transaccion, hace efectivo el update
else
	ROLLBACK TRAN --Cancela el update


----------------------------------------------------------------------


select * from Turno

BEGIN TRAN 
	DELETE FROM Turno WHERE estado=0
if @@ROWCOUNT =1
	COMMIT TRAN
else
	ROLLBACK TRAN
