--param
declare @id int
set @id = '1'
--sql
SELECT * FROM [Test].[dbo].[User]
WHERE Id = @id
