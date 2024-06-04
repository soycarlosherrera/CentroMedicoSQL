
SELECT * FROM Paciente
SELECT * FROM TurnoEstado

INSERT INTO TurnoEstado (idEstado,Descripcion) VALUES ('0','Pendiente')
,('1','Realizado')
,('2','Cancelado')
,('3','Rechazado')
,('4','Postergado')
,('5','Anulado')
,('6','Derivado')

INSERT INTO Pais VALUES('ESP','España')

INSERT INTO Paciente (DNI,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
VALUES ('15987456','Leandro','Paredes','1982-05-20','Piedras 150','ARG',NULL,'leandro@gmail.com','')

INSERT INTO Paciente (DNI,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
VALUES ('798792123','Jose','Perez','1999-04-15','Lavalle 2563','COL',NULL,'jose@gmail.com','Paciente derivado')
, ('658986565','Marcela','Torres','1978-02-15','Belgrano 1563','MEX','1289854552','marcela@gmail.com','')


/*
Debo especificar en donde
Debo especificar cada campo que voy a insertar en parentesis separado por ,
Debo especificar cada valor que voy a insertar en parentesis separado por ,
Las fechas en formato año mes dia
Para no asignar valor puedo guardar NULL
No es necesario especificar los nombres de los campos, pero es buena practica
Si es not null es obligatorio
Si es identity no lo especificamos
--------------------------------------------------------------
Para insertar varios valores en una sola consulta los separo con , despues del values
*/