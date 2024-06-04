
CREATE TABLE Paciente(				--Paciente es el nombre de la tabla
	idPaciente int NOT NULL,		--no nulo para ser una pk
	nombre varchar(50) NOT NULL,
	apellido varchar(50)NULL,		--Puede ser nulo
	fnacimiento date NULL,
	domicilio varchar(50) NULL,
	idPais char(3) NULL,
	telefono varchar(20) NULL,
	email varchar(30) NULL,
	observacion varchar(1000) NULL,
	fechaAlta datetime NOT NULL
	CONSTRAINT PK_idPaciente PRIMARY KEY(idPaciente)--PK_idPaciente es el nombre de la clave, se sugiere iniciar en PK_ y a continuacion el nombre del campo, y entre parantesis va el campo al que se le aplica la clave

)
