USE [xomorod.com_xomorod]
GO
/****** Object:  Table [dbo].[Sitemap]    Script Date: 25/10/2016 04:13:49 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sitemap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sitemap](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](4000) NULL,
	[Frequency] [varchar](10) NULL,
	[LastModified] [datetime] NOT NULL,
	[Priority] [numeric](18, 2) NULL,
	[Url] [varchar](4000) NULL,
	[LangId] [int] NOT NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_Sitemap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sitemap] ON 

GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (1, N'Home', N'Weekly', CAST(N'2016-10-23T08:57:06.830' AS DateTime), CAST(1.00 AS Numeric(18, 2)), N'http://xomorod.com', 1, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (2, N'خانه', N'Weekly', CAST(N'2016-10-23T08:58:05.660' AS DateTime), CAST(1.00 AS Numeric(18, 2)), N'http://xomorod.com/fa', 2, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (3, N'User Account Register', N'Monthly', CAST(N'2016-10-23T09:00:26.977' AS DateTime), CAST(0.80 AS Numeric(18, 2)), N'http://xomorod.com/en/Account/Register', 1, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (4, N'ثبت نام کاربر', N'Monthly', CAST(N'2016-10-23T09:01:44.807' AS DateTime), CAST(0.80 AS Numeric(18, 2)), N'http://xomorod.com/fa/Account/Register', 2, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (5, N'User Login', N'Monthly', CAST(N'2016-10-23T09:02:38.800' AS DateTime), CAST(0.80 AS Numeric(18, 2)), N'http://xomorod.com/en/Account/Login', 1, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (6, N'ورود کاربر', N'Monthly', CAST(N'2016-10-23T09:03:05.797' AS DateTime), CAST(0.80 AS Numeric(18, 2)), N'http://xomorod.com/fa/Account/Login', 2, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (7, N'API', N'Monthly', CAST(N'2016-10-23T09:04:18.443' AS DateTime), CAST(0.10 AS Numeric(18, 2)), N'http://api.xomorod.com', 1, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (8, N'News', N'Always', CAST(N'2016-10-23T09:05:15.047' AS DateTime), CAST(1.00 AS Numeric(18, 2)), N'http://news.xomorod.com', 1, NULL)
GO
INSERT [dbo].[Sitemap] ([Id], [Title], [Frequency], [LastModified], [Priority], [Url], [LangId], [ParentId]) VALUES (9, N'اخبار', N'Always', CAST(N'2016-10-23T09:05:41.583' AS DateTime), CAST(1.00 AS Numeric(18, 2)), N'http://news.xomorod.com/fa', 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sitemap] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Sitemap_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Sitemap] ADD  CONSTRAINT [DF_Sitemap_LastModified]  DEFAULT (getutcdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Sitemap_LangId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Sitemap] ADD  CONSTRAINT [DF_Sitemap_LangId]  DEFAULT ((1)) FOR [LangId]
END

GO
