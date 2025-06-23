USE [PracticeDB-InterSQL.]
GO
/****** Object: Index [PK_ORDERITEM] Script Date: 7/20/20XX 11:37:24 AM ******/
ALTER TABLE [dbo].[OrderItem] DROP CONSTRAINT [PK_ORDERITEM] WITH ( ONLINE = OFF )
GO
/****** Object: Index [PK_ORDERITEM] Script Date: 7/20/20XX 11:37:24 AM ******/
ALTER TABLE [dbo].[OrderItem] ADD CONSTRAINT [PK_ORDERITEM] PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)ON [PRIMARY]
GO