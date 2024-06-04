
SELECT * FROM Paciente WHERE idPais = 'PER' --Busca registro segun determinada condicion

SELECT * FROM Paciente WHERE apellido = 'Perez' --Cuando el registro es texto va entre comillas

SELECT * FROM Paciente WHERE idPaciente = 4  --Cuando el registro es numerico no es necesario entre comillas

SELECT * FROM Paciente WHERE fNacimiento = '20170104' 
SELECT * FROM Paciente WHERE fNacimiento = '2017-01-04' --Fecha entre comillas con cualquiera de los dos formatos