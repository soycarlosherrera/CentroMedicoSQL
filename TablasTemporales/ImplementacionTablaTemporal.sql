

--Script

declare @turnos table (id int IDENTITY(1,1),idTurno turno, idPaciente paciente)

insert into @turnos (idTurno,idPaciente)
select TP.idTurno,P.idPaciente from Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente


--Script 2

declare @turnos table (id int IDENTITY(1,1),idTurno turno, idPaciente paciente)
declare @idpaciente paciente
set @idpaciente = 7

insert into @turnos (idTurno,idPaciente)
select TP.idTurno,P.idPaciente from Paciente P
	inner join TurnoPaciente TP
	on TP.idPaciente = P.idPaciente

declare @i int,@total int
set @i = 1
set @total = (select count(*) from @turnos)
WHILE @i <= (@total)
BEGIN
	IF (select idPaciente from @turnos where id = @i)<>@idpaciente
		delete from @turnos where id = @i
	set @i = @i + 1
END

select * from Paciente P
inner join @turnos T
on T.idPaciente = P.idPaciente