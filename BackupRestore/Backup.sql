

BACKUP DATABASE CentroMedico
TO DISK = 'C:\SQLDATA\CentroMedico\BackupBD\CentroMedico20240423.bak'--Nombre archivo
WITH NO_COMPRESSION, NAME='CentroMedico1' --Sin comprimir BD

--Para que se guarde segun la fecha en la que se ejecute el script

declare @fecha char(12)
declare @path varchar(100)
declare @name varchar(20)

set @fecha = convert(char(8),getdate(),112)+replace(convert(char(5),getdate(),108),':','')
set @path = 'C:\SQLDATA\CentroMedico\BackupBD\CentroMedico'+@fecha+'.bak'
set @name = 'CentroMedico'+@fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name
