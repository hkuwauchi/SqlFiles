--param
declare @id int
set @id = '1'
declare @name varchar(50)
set @name = 'Name' + CONVERT(varchar, @id)
--sql
INSERT [Test].[dbo].[User]
        ([Id],[Name])
    VALUES
        (@id,@name)
