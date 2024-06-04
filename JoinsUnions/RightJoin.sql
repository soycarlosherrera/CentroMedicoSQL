
SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente T
ON P.idPaciente = T.idPaciente