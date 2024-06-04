
SELECT * FROM Paciente

ALTER TABLE Paciente ADD estado smallint --Agrego un nuevo campo en la tabla

ALTER TABLE Paciente ALTER COLUMN estado bit --Cambio tipo de dato de un campo

ALTER TABLE Paciente DROP COLUMN estado --Elimino campo 

ALTER TABLE Especialidad ALTER COLUMN idEspecialidad especialidad
ALTER TABLE MedicoEspecialidad ALTER COLUMN idEspecialidad especialidad