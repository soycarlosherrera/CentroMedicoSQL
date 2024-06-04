

/*
select * from Paciente
*/

CREATE PROCEDURE UPDATE_Paciente(
					@idPaciente paciente,
					@dni varchar(20),
					@nombre varchar(50),
					@apellido varchar(50),
					@fnacimiento date,
					@domicilio varchar(50),
					@idPais char(3),
					@telefono varchar(20),
					@email varchar(30),
					@observacion observacion
					)
AS
set nocount on

if EXISTS (SELECT * FROM Paciente WHERE idPaciente=@idPaciente)
	BEGIN
		UPDATE Paciente SET dni=@dni,
							nombre=@nombre,
							apellido=@apellido,
							fNacimiento=@fnacimiento,
							domicilio=@domicilio,
							idPais=@idPais,
							telefono=@telefono,
							email=@email,
							observacion=@observacion
		WHERE idPaciente=@idPaciente
	END
ELSE
	SELECT 0 AS Result

--Ejecutar

EXEC UPDATE_Paciente 1,'987896','Jorge Ivan','Ramirez','2019-01-18','Calle 23 1512','COL','6049874566','jorge@mail.com','Sin observacion'

