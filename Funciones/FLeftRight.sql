
declare @var1 varchar(20)
set @var1 = 'Ramiro'
declare @var2 varchar(20)
set @var2 = 'Gonzales'

print LEFT(@var1,2) --Dos primeros caracteres a la izquierda

print RIGHT(@var1,2) --Dos primeros caracteres a la derecha

print LEFT(@var1,1)+LEFT(@var2,1)

/*
Obtener un listado de las iniciales de los pacientes, 
leyendo los campos nombre y apellido, 
utilizando la función LEFT y el operador + para concatenar 
las iniciales y obtener el resultado.
*/

SELECT LEFT(nombre,1)+LEFT(apellido,1) AS Iniciales FROM Paciente


