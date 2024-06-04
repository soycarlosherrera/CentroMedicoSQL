
declare @var1 varchar(20)
set @var1 = 'Ramiro'
declare @var2 varchar(20)
set @var2 = 'Gonzales'

print LEN(@var1)
print LEN(@var2)

print LEFT(@var1,LEN(@var1)-1)

/*
Obtener un listado de la cantidad de caracteres
que tiene el campo Domicilio de la tabla Paciente.
*/

SELECT LEN(domicilio) FROM Paciente
