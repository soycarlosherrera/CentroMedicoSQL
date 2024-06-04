

SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente

--Siempre conectamos por la PK
--A la izquierda FK a la derecha PK en el ON para mejorar tiempo de respuesta
--Siempre usar alias de tablas