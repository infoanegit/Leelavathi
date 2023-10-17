USE [sample2]
GO

/****** Object:  Table [dbo].[login_table]    Script Date: 10/16/2023 11:59:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[login_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL
) ON [PRIMARY]
GO


