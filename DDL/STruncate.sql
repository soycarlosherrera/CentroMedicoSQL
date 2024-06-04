

--Se usa para borrar los registros de una tabla
--Ademas reinicia los campos identity

CREATE TABLE ejemplo (campo0 int IDENTITY (1,1),campo1 int, campo2 int)
INSERT INTO ejemplo values (2,3)
INSERT INTO ejemplo values (7,5)
INSERT INTO ejemplo values (6,3)
SELECT * FROM ejemplo

TRUNCATE TABLE ejemplo --Borra todos los registros de la tabla
