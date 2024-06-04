
declare @var1 varchar(20)
set @var1 = 'RAMIR"O'
declare @var2 varchar(20)
set @var2 = 'gonz@ales'

select REPLACE(@var1,'"','')
select REPLACE(@var2,'@','')

