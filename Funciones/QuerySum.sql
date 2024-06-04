

SELECT * FROM Pago

--Solo para campos de tipo numerico

SELECT SUM(monto) FROM Pago --suma los valores del campo monto en la tabla pago

SELECT SUM(monto) AS MontoTotal FROM Pago --Renombrar el nombre del campo resultado

SELECT SUM(monto + 20) AS MontoTotal FROM Pago -- Le suma 20 a cada monto, de cada registro

SELECT SUM(monto)+ 20 AS MontoTotal FROM Pago --Le suma al total, no a cada uno, 


