USE [PracticeDB-InterSQL.]
GO

/****** Object:  Table [dbo].[SalesRep]    Script Date: 5/2/2025 12:54:31 PM ******/
SET ANSI_NULLS ON
GO




CREATE TABLE [dbo].[SalesRep](
	[SalesRepId] [int]  NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[City] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[CellPhone] [nvarchar](20) NULL,
	[Position] [nvarchar] (40) NULL
 CONSTRAINT [PK_SalesRep] PRIMARY KEY (SalesRepId)
 )
GO


