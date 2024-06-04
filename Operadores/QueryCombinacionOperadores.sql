

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE apellido = 'Ramirez' AND nombre = 'Carlos' OR idPaciente = 6 

SELECT * FROM Paciente WHERE apellido = 'Ramirez' AND nombre = 'Carlos' OR idPaciente = 6 OR idPais = 'ARG'

--Con parentesis puedo establecer priorida para evitar errores
SELECT * FROM Paciente WHERE apellido = 'Ramirez' AND (nombre = 'Carlos' OR idPaciente = 6 OR idPais = 'ARG')

SELECT * FROM Paciente WHERE apellido = 'Ramirez' AND (nombre = 'Carlos' OR idPaciente = 6 OR idPais = 'ARG')
AND idPaciente NOT IN (3,5)







