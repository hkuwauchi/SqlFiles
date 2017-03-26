--param
declare @a int
set @a = '1'
declare @b int
set @b = '2'
--sql
set nocount on 
create table #t(i int) 
set nocount off 
insert #t 
select @a a union all select @b 
select * from #t
set nocount on 
drop table #t
