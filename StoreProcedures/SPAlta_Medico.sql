--SELECT * FROM Medico
--SELECT * FROM MedicoEspecialidad
--SELECT * FROM Especialidad

/*
insert into Especialidad values ('Pediatria')
insert into Especialidad values ('Optometria')
insert into Especialidad values ('Fisioterapia')
insert into Especialidad values ('Oncologia')
insert into Especialidad values ('Traumatologia')
*/


CREATE PROCEDURE ALTA_Medico(
					@nombre varchar(50),
					@apellido varchar(20),
					@idespecialidad int,
					@descripcion varchar(50)
					)
AS

set nocount on

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE Nombre=@nombre and Apellido=@apellido)
BEGIN
	INSERT INTO Medico(Nombre,Apellido)
	VALUES (@nombre,@apellido)

	declare @auxIdMedico medico --Variable tipo medico(entero)
	set @auxIdMedico = @@IDENTITY  --almacena el ultimo valor insertado en la consulta anterior en el campo identity

	INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,Descripcion)
	VALUES (@auxIdMedico,@idespecialidad,@descripcion)

	print 'El Medico se agrego correctamente'
	return
END
ELSE
BEGIN
	print 'El Medico ya existe'
	return
END

--Prueba

Exec ALTA_Medico'Jose','Cordoba',1,'Medico residente'
Exec ALTA_Medico'Angela','Montoya',2,'Medico residente'
Exec ALTA_Medico'Rafael','Garcia',3,'Medico residente'
Exec ALTA_Medico'Marcela','Valencia',4,'Medico residente'
Exec ALTA_Medico'Pedro','Ortiz',5,'Medico residente'

