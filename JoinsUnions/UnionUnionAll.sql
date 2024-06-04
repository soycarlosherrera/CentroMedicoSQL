

SELECT * FROM Turno
UNION
SELECT * FROM Turno

SELECT * FROM Turno WHERE estado = 3
UNION
SELECT * FROM Turno WHERE estado = 1

SELECT idTurno FROM Turno WHERE estado = 0
UNION
SELECT idPaciente FROM Paciente

--Error, debe ser los mismos campos
SELECT * FROM Turno WHERE estado = 3
UNION
SELECT * FROM Paciente

---------------------------------------------------------

--En este caso no elimina las repeticiones
SELECT * FROM Turno WHERE estado = 3
UNION ALL
SELECT * FROM Turno WHERE estado = 1

SELECT * FROM Turno 
UNION ALL
SELECT * FROM Turno 

