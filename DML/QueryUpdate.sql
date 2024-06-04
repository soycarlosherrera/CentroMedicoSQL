
SELECT * FROM Paciente

UPDATE Paciente SET observacion = 'Sin observacion' --Actualiza todos los registros
--Set nos sirve para actualizar alguno campos de la tabla, entre comillas por ser varchar


UPDATE Paciente SET email = 'correo@mail.com' WHERE idPaciente = 4 --Actualiza solo el que cumple la condicion


UPDATE Paciente SET DNI = '458256965', domicilio='Calle 23' WHERE idPaciente = 4 --Actualiza varios campos de un solo registro




