/*
description
�ꎞ�e�[�u���ɍ쐬�������ʂ��擾����
author

client

*/
--param
declare @ids int
set @ids = '1'
--sql
set nocount on 
create table #t(i int) 
set nocount off 
insert #t select Id from [Test].[dbo].[User] where Id in @ids
select u.* from #t t
inner join [Test].[dbo].[User] u
on t.i = u.Id
set nocount on 
drop table #t
