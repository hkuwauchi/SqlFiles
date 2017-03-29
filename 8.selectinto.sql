/*
description
一時テーブルを使って、idの一覧を作成する
author

client

*/
--sql
set nocount on 
create table #t(i int) 
set nocount off 
insert #t 
select Id from [Test].[dbo].[User]
select * from #t
set nocount on 
drop table #t
