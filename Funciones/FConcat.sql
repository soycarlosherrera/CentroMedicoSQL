

declare @var1 varchar(20)
set @var1 = '    Ramiro   '
declare @var2 varchar(20)
set @var2 = 'Gonzales   '

select CONCAT(LTRIM(RTRIM(@var1)),LTRIM(RTRIM(@var2)))

select CONCAT(LTRIM(RTRIM(@var1)),LTRIM(RTRIM(@var2)),'A','B','C')

