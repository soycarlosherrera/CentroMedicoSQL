
declare @var1 varchar(20)
set @var1 = 'RAMIRO'
declare @var2 varchar(20)
set @var2 = 'gonzales'

print LOWER(@var1)
print UPPER(@var2)

print UPPER(LEFT(@var1,1))+LOWER(RIGHT(@var1,LEN(@var1)-1))+' '+UPPER(LEFT(@var2,1))+LOWER(RIGHT(@var2,LEN(@var2)-1))

