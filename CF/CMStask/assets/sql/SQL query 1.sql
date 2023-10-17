USE [sample2]
GO

/****** Object:  Table [dbo].[table_user]    Script Date: 10/16/2023 11:32:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[table_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[role] [varchar](100) NULL
) ON [PRIMARY]
GO
