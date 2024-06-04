

-- Suma +

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30
declare @result decimal(9,2)

set @result = @num1 + @num2
print @result

-- Resta -

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30
declare @result decimal(9,2)

set @result = @num1 - @num2
print @result

-- Division /

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30
declare @result decimal(9,2)

set @result = @num1 / @num2
print @result

-- Multiplicacion *

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30
declare @result decimal(9,2)

set @result = @num1 * @num2
print @result

-- Modulo %

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30
declare @result decimal(9,2)

set @result = @num1 % @num2
print @result

-- Otras concatenar varchar

declare @num1 varchar(20)='Hola me llamo'
declare @num2 varchar(10)='Mariano'
declare @result varchar(30)

set @result = @num1 +' '+ @num2
print @result

-- mayor >

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 > @num1
	print 'Si'

-- menor <

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 < @num1
	print 'Si'

-- menor o igual <=

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 <= @num1
	print 'Si'

-- mayor o igual >=

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 >= @num1
	print 'Si'

-- igual =

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 = @num1
	print 'Si'

-- distinto <>

declare @num1 decimal(9,2)=20
declare @num2 decimal(9,2)=30

if @num2 <> @num1
	print 'Si'


--Con varchar

declare @num1 varchar(30)='Hola me llamo o'
declare @num2 varchar(30)='Hola me llamo p'

if @num2 > @num1
	print 'Si'

















