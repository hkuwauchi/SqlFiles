--param
declare @table varchar(50)
set @table = '[Test].[dbo].[User]'
declare @statements varchar(2048)
set @statements = ( 
  ''
+ 'IF OBJECT_ID(''' + @table + ''') IS NOT NULL '
+ '    BEGIN '
+ '        GOTO Skip '
+ '    END '
+ 'ELSE '
+ 'CREATE TABLE '+ @table + '( '
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
