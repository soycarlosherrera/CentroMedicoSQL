
DECLARE @ordenamiento CHAR(1) = 'A' --Se crea una variable y se inicia
DECLARE @ordenamiento2 CHAR(1)
--Si no la inicializo es igual a null
DECLARE @valorOrdenamiento CHAR(1)
SET @valorOrdenamiento = @ordenamiento --Asigno
PRINT 'Asi se imprime'
PRINT @valorOrdenamiento --Imprimo la variable
SET @ordenamiento = 'D' --Asi se asigna valor a una variable

SET @valorOrdenamiento = ISNULL(@ordenamiento2,'C') --Evalua si @ordenamiento2 es null, si lo es devuelve C
PRINT @valorOrdenamiento