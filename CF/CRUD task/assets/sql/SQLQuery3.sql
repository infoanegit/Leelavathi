USE [sample2]
GO

/****** Object:  Table [dbo].[Emp_details]    Script Date: 10/16/2023 11:50:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Emp_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](100) NULL,
	[lastname] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[gender] [varchar](100) NULL,
	[age] [int] NULL,
	[location] [varchar](100) NULL,
 CONSTRAINT [PK_Emp_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


