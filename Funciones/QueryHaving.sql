
SELECT * FROM Turno

--La diferencia con el where es:
--El where actua sobre cada registro,
--El having lo hace sobre un conjunto de registros por eso se usa con group by

--El campo por el cual estoy agrupando debe estar en el select sino da error
SELECT estado FROM Turno GROUP BY estado HAVING estado = 0
--Aqui no hce mucho, agrupa por estados, filtra el estado igual a 0 y me muestra ese estado

--El verdadero potencial estaria al poder usar otras funciones
SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) = 2
--Aqui muestra el estado, que su cantidad se igual a 2 en la tabla
--Entonces agrupa, cuenta cada grupo y muestra los que cumplen la condicion

SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) >1 --Cantidad de registros mayor a 1
