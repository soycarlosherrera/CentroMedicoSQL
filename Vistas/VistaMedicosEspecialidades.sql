
/*
select * from Medico
select * from MedicoEspecialidad
select * from VistaMedicoEspecialidad
*/

CREATE VIEW VistaMedicoEspecialidad AS 

select M.idMedico,M.Nombre,M.Apellido,ME.idEspecialidad,ME.Descripcion from Medico M
inner join MedicoEspecialidad ME
on ME.idMedico = M.idMedico