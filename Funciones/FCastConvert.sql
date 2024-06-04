

declare @numero money
set @numero = 500.40

--Funcion generica para datos de la misma naturaleza
--CAST

print @numero
SELECT CAST(@numero as INT) AS numero

SELECT CAST(idPaciente as Money) FROM Paciente


--Implementacion de cast con parametros que ayudan en la conversion
--CONVERT

SELECT CONVERT(INT,@numero) --Tipo, dato

print CONVERT(INT,@numero)

declare @fecha datetime
set @fecha = getdate()
print @fecha

print CONVERT(char(8),@fecha)
print CONVERT(char(20),@fecha)

print CONVERT(char(20),@fecha,112) --112 formato de fecha sql

print CONVERT(char(20),@fecha,104) --Otro formato

print CONVERT(char(20),@fecha,111)