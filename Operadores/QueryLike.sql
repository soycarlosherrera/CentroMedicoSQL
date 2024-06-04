
--Nos permite trabajar sobre campos de tipo cadena de caracteres

SELECT * FROM Paciente

--todos los nombres que contienen carlos
SELECT * FROM Paciente WHERE nombre LIKE 'Carlos'

--todos los nombres que contienen Jo y algo mas con el comodin %
SELECT * FROM Paciente WHERE nombre LIKE 'Jo%'

--todos los nombres que contienen o y algo mas con el principio con comodin %
SELECT * FROM Paciente WHERE nombre LIKE '%o'


