
SELECT * FROM Turno
SELECT * FROM TurnoEstado

--Todas las fechas de ayer hacia atras
SELECT * FROM Turno WHERE convert(char(8),fechaTurno,112) < convert(char(8),getdate())

SELECT * FROM Turno WHERE convert(char(8),fechaTurno,112) < convert(char(8),getdate())
and estado = 0

--actualizo turnos en cero fechas pasadas
USE CentroMedico
GO
UPDATE Turno SET estado = 2
WHERE convert(char(8),fechaTurno,112) < convert(char(8),getdate())
and estado = 0






