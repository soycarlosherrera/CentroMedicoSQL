
--Nos permite negar el operador usado antes

SELECT * FROM Paciente

--todos los nombres que NO contienen carlos
SELECT * FROM Paciente WHERE nombre NOT LIKE 'Carlos'

--todos los nombres que NO contienen Jo y algo mas con el comodin %
SELECT * FROM Paciente WHERE nombre NOT LIKE 'Jo%'

--todos los nombres que NO contienen o y algo mas con el principio con comodin %
SELECT * FROM Paciente WHERE nombre NOT LIKE '%o'

--Tambien se puede usar con el in
SELECT * FROM Paciente WHERE apellido NOT IN ('Perez','Ramirez','Gonzales')





