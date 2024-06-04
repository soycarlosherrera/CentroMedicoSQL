
--Nos permite filtrar por un rango

SELECT * FROM Turno

--Con fechas
SELECT * FROM Turno WHERE fechaTurno BETWEEN '20190102' AND '20190123 10:00:00'

--Con numeros
SELECT * FROM Turno WHERE estado BETWEEN 3 AND 7

--Con caracteres, se basa en el alfabeto
SELECT * FROM Turno WHERE estado BETWEEN 3 AND 7







