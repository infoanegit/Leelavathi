USE [sample2]
GO

/****** Object:  Table [dbo].[table_page]    Script Date: 10/16/2023 11:37:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[table_page](
	[pageid] [int] IDENTITY(1,1) NOT NULL,
	[pagename] [varchar](100) NULL,
	[pagedesc] [varchar](100) NULL
) ON [PRIMARY]
GO


