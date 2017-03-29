/*
description
指定したレコードを削除する
author
client
*/
--param
declare @id int
set @id = '1'
--sql
BEGIN TRY
    BEGIN TRANSACTION
        DELETE FROM [Test].[dbo].[User]
        WHERE Id = @id
    COMMIT TRANSACTION
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION
    PRINT ERROR_MESSAGE()
    PRINT 'ROLLBACK TRANSACTION'
END CATCH
