
--SELECT * FROM Paciente

CREATE PROCEDURE ALTA_Paciente(
					@dni varchar(20),
					@nombre varchar(50),
					@apellido varchar(50),
					@fnacimiento varchar(8), --el formato seria YYYYMMDD, lo defino como varchar para evitar problemas, pero solo en caso de que no contenga horas, sino un varchar mas grande YYYYMMDD HH:MM:SS
					@domicilio varchar(50),
					@idPais char(3),
					@telefono varchar(20)='',
					@email varchar(30),
					@observacion varchar(1000)='' --Si este parametro llega con null, el valor por defecto es vacio
					)
AS

--si quisiera modificar este procedimiento
/*
ALTER PROCEDURE ALTA_Paciente(
					@dni varchar(20),
					@nombre varchar(50),
					@apellido varchar(50),
					@fnacimiento varchar(8),
					@domicilio varchar(50),
					@idPais char(3),
					@telefono varchar(20)='',
					@email varchar(30),
					@observacion varchar(1000)='' --Si este parametro llega con null, el valor por defecto es vacio
					)
AS
*/

set nocount on



--Retardo para pruebas 
--declare @a bigint=0
--while @a <=15000000
	--set @a = @a + 1



IF NOT EXISTS(SELECT * FROM Paciente WHERE dni=@dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fnacimiento,@domicilio,@idPais,@telefono,@email,@observacion)
	print 'El paciente se agrego correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe'
	return
END

--Prueba

exec ALTA_Paciente '9871236578','Jorge','Lopez','20180518','1','MEX','','jorge@lopez@gmail.com',''

