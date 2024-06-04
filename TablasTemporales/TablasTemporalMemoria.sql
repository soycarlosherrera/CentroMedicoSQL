

--Permanece en memoria solo durante la ejecucion del script
--Una vez termina la ejecucion, la tabla se destruye

DECLARE @mitabla TABLE (id int IDENTITY(1,1),pais varchar(50))

INSERT INTO @mitabla VALUES ('Mexico')
INSERT INTO @mitabla VALUES ('Peru')
INSERT INTO @mitabla VALUES ('Argentina')
INSERT INTO @mitabla VALUES ('Colombia')
INSERT INTO @mitabla VALUES ('Ecuador')

SELECT * FROM @mitabla