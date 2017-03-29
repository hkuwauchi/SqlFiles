/*
description
SQLÇé¿çsÇ∑ÇÈ
author
client
*/
--param
declare @statements varchar(2048)
set @statements = ( 
  ''
+ 'IF OBJECT_ID(''[Test].[dbo].[User]'') IS NOT NULL '
+ '    BEGIN '
+ '        GOTO Skip '
+ '    END '
+ 'ELSE '
+ 'CREATE TABLE [Test].[dbo].[User] ( '
+ '    [Id] [int] NOT NULL, '
+ '    [Name] [varchar](10) NULL, '
+ '    [Note] [text] NULL, '
+ '    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED '
+ '( '
+ '    [Id] ASC '
+ ')WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] '
+ ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY] '
+ 'Skip: '
)
--sql
exec(@statements)
