

--Una subconsulta es una sentencia select adentro de otra

SELECT apellido,nombre,idPais,observacion,
	(SELECT Pais FROM Pais ps WHERE ps.idPais = pa.idPais) descPais
FROM Paciente pa

--Uso un alias descPais, pa y ps para poder especificar de que tabla

