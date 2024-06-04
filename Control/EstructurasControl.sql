
--IF

declare @idPaciente int --declaro variable
declare @idTurno int

set @idPaciente = 7 --asigno variable

IF @idPaciente = 7
BEGIN --Inicio bloque del if
	set @idTurno = 20
	SELECT * FROM Paciente WHERE idPaciente =@idPaciente
	print @idTurno
	IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2) --If anidado
	print 'Existe'
END --Fin bloque del if

--Debo usar un bloque ya que si no, solo ejecuta la instruccion siguiente del if, 
--todo lo demas lo toma como instrucciones a parte

ELSE --Si no se cumple la condicion
BEGIN
	print 'No se cumplio la condicion'
END

--EXISTS

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2)
	print 'Existe'


--WHILE

declare @contador int = 0

WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador + 1
END


--CASE

declare @valor int 
declare @resultado char(10) = ''
set @valor = 20

set @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
						WHEN @valor = 20 THEN 'VERDE'
						WHEN @valor = 30 THEN 'AZUL'
				END)

print @resultado

SELECT *,(CASE WHEN estado = 0 THEN 'VERDE'
				WHEN estado = 1 THEN 'ROJO'
				WHEN estado = 2 THEN 'AZUL' END ) AS colorTurno FROM Turno



SELECT *,(CASE WHEN estado = 1 THEN 'VERDE'
				WHEN estado = 2 THEN 'ROJO'
				WHEN estado = 3 THEN 'AZUL' 
			ELSE 'GRIS'  --En caso de que no se cumpla ninguno
		END ) AS colorTurno FROM Turno


--RETURN

declare @contador int = 0

WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador + 1
	IF @contador = 3
		RETURN --Corta la ejecucion
	print 'Hola'  --No se ejecuta despues del return
END

--BREAK

declare @contador int = 0

WHILE @contador <= 10
BEGIN
	print @contador
	SET @contador = @contador + 1
	IF @contador = 3
		BREAK --Corta la ejecucion	
END
print 'Sigue ejecutando'  --Si se ejecuta despues del break


--TRY CATCH

declare @contador int = 0

BEGIN TRY
	SET @contador = 'texto'
END TRY

BEGIN CATCH
	print 'No es posible asignar un texto a la variable contador'
END CATCH
































































