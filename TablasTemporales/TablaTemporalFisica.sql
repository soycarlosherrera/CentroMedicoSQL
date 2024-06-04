

--Permanece en memoria hasta que reiniciemos el servicio de BD
--Mientras el motor sql server este corriendo, esta tabla estara disponible

CREATE TABLE #mitabla (id int IDENTITY(1,1),nombre varchar(50),apellido varchar(50))

INSERT INTO #mitabla VALUES ('Alejandro','Lopez')
INSERT INTO #mitabla VALUES ('Rafael','Castillo')
INSERT INTO #mitabla VALUES ('Fernando','Gonzales')


SELECT * FROM #mitabla

DROP TABLE #mitabla