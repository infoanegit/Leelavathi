USE [sample2]
GO

/****** Object:  Table [dbo].[Images]    Script Date: 10/17/2023 1:12:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Images](
	[imageid] [int] IDENTITY(1,1) NOT NULL,
	[imagename] [varchar](255) NULL,
	[imagedesc] [varchar](255) NULL,
	[imagefile] [varchar](255) NULL
) ON [PRIMARY]
GO


