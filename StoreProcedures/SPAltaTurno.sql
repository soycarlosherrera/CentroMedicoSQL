--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--SELECT * FROM Medico


CREATE PROCEDURE ALTA_Turno(
					@fechaTurno char(14), --20190215 12:00					
					@idPaciente paciente,
					@idMedico medico,
					@observacion observacion=''
					)
AS

set nocount on -- se utiliza para evitar que el servidor envíe el recuento de filas afectadas por una instrucción T-SQL como parte del mensaje de retorno, ya que el recuento de filas afectadas podría generar mensajes adicionales y afectarme el print dentro del procedimiento.

/*
Estado = 0 (Pendiente)
Estado = 1 (Realizado)
Estado = 2 (Cancelado)

*/


IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno=@fechaTurno)
BEGIN
	INSERT INTO Turno(fechaTurno,estado,observacion)
	VALUES (@fechaTurno,0,@observacion)

	declare @auxIdTurno turno --Variable tipo turno(entero)
	set @auxIdTurno = @@IDENTITY  --almacena el ultimo valor insertado en la consulta anterior en el campo identity

	INSERT INTO TurnoPaciente(idTurno,idPaciente,idMedico)
	VALUES (@auxIdTurno,@idPaciente,@idMedico)

	print 'El Turno se agrego correctamente'
	return
END
ELSE
BEGIN
	print 'El turno ya existe'
	return
END

--Prueba

Exec ALTA_Turno '20190215 09:30',7,5,'El paciente tiene que estar en ayunas'


