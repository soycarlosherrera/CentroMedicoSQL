

declare @var1 varchar(20)
set @var1 = '    Ramiro   '
declare @var2 varchar(20)
set @var2 = 'Gonzales   '

select @var1 + @var2 +'*'

select LTRIM(RTRIM(@var1)) + LTRIM(RTRIM(@var2)) +'*'

