USE [xomorod.com_xomorod]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_AccessFailedCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_AccessFailedCount]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_LockoutEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_LockoutEnable]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_TwoFactorEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_TwoFactorEnable]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_PhoneNumberConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_PhoneNumberConfirmed]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_EmailConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_EmailConfirmed]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Users__ModifyDat__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifyDat__1A14E395]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_UniqueId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_Score]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsResources_Language]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_NewsResources_Language]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_Score]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_PublishDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_PublishDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsCategory_Order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_NewsCategory_Order]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_LangID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_Price]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Rank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_Rank]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Portfolio__Modif__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF__Portfolio__Modif__15502E78]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_UniqueId]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_LangID]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Login__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__Login__117F9D94]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Succe__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__Succe__108B795B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__RunDa__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] DROP CONSTRAINT [DF__LogHistor__RunDa__0F975522]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Languages_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_MACAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_MACAddress]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IPv4Address]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_IPv4Address]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_AppName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_AppName]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_Type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_Type]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IsHandled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_IsHandled]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrorHost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_ErrorHost]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_ErrTime]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CategoriesChilds_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CategoriesChilds] DROP CONSTRAINT [DF_CategoriesChilds_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_IsActive]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_Background]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_Background]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_LangID]
END

GO
/****** Object:  Index [IX_RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND name = N'IX_RssResources')
DROP INDEX [IX_RssResources] ON [dbo].[RssResources]
GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'TX_RssFeeds')
DROP INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Rs_RssFeeds')
DROP INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Au_RssFeeds')
DROP INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [IX_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'IX_RssFeeds')
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [IX_RssFeeds]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udfv_PortfoliosView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udfv_PortfoliosView]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssResources]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssCategories]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Portfolios]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Portfolios]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckUserPass]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_CheckUserPass]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_CheckUserPass]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetCategoryChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetCategoryChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_CategoriesChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_CategoriesChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Categories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Categories]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserInRoles]
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources_ContentProviders]
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources]
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
DROP TABLE [dbo].[RssFeeds]
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssContentProviders]
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
DROP TABLE [dbo].[RssCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
DROP TABLE [dbo].[PortfoliosComment]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyType]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyType]
GO
/****** Object:  Table [dbo].[PolicyQueries]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyQueries]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyQueries]
GO
/****** Object:  Table [dbo].[PolicyDetails]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyDetails]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyDetails]
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
DROP TABLE [dbo].[LogHistory]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[ErrorLog]
GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriesChilds]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriesChilds]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AppSetting]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSetting]') AND type in (N'U'))
DROP TABLE [dbo].[AppSetting]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStringHashing]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSettingByKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSettingByKey]
GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetResourceLinkByElementID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetResourceLinkByElementID]
GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetExtraLinkByName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetExtraLinkByName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Users_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_RssItem]
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Increase_RssScore]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPolicyCategory]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetPolicyCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetPolicyCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 2/19/2016 10:01:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_CatchError]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_CatchError]
	@UserId UNIQUEIDENTIFIER,
	@RaisError BIT,
	@ExtraData NVARCHAR(MAX) = NULL,
	@ErrorId BIGINT OUTPUT
AS
BEGIN
	DECLARE @DatabaseName NVARCHAR(MAX) = ISNULL(Original_DB_NAME(), DB_NAME()),
	        @ERROR_NUMBER INT = ERROR_NUMBER(),	-- @@ERROR
	        @ERROR_STATE INT = ERROR_STATE(),
	        @ERROR_SEVERITY INT = ERROR_SEVERITY(),
	        @ERROR_LINE INT = ERROR_LINE(),
	        @ERROR_Column INT = 0,
	        @ERROR_PROCEDURE SYSNAME = ISNULL(ERROR_PROCEDURE(), ''New Query''),
	        @ERROR_MESSAGE NVARCHAR(MAX) = ERROR_MESSAGE(),
	        @Source NVARCHAR(1024) = @@SERVERNAME,
	        @IP_Address SYSNAME = (
	            SELECT client_net_address
	            FROM   SYS.DM_EXEC_CONNECTIONS
	            WHERE  SESSION_ID = @@SPID
	        ),
	        @MAC_Address SYSNAME = (
	            SELECT net_address
	            FROM   sys.sysprocesses
	            WHERE  spid = @@SPID
	        ),
	        @Culture SYSNAME = @@LANGUAGE,
	        @OS NVARCHAR(MAX) = @@Version,
	        @ClrVersion SYSNAME = (
	            SELECT CONVERT(SYSNAME, SERVERPROPERTY(''BuildClrVersion''))
	        ),
	        @ErrorDate DATETIME = GETDATE(),
	        @IsHandled BIT = 1,
	        @ErrorType SYSNAME = ''SqlException'',
	        @MemberType SYSNAME = ''Stored Procedure'';
	
	IF @ERROR_NUMBER <> 50000
	    -- Check the error exist or not? if exist then only update that 
	    IF (
	           SELECT 1
	           FROM   [ErrorLog]
	           WHERE  HResult        = @ERROR_NUMBER
	                  AND Line       = @ERROR_LINE
	                  AND Method     = @ERROR_PROCEDURE
	                  AND UserId     = @UserId
	       ) > 0
	        -- Update error object from ErrorLog table 
	        UPDATE dbo.ErrorLog
	        SET    DuplicateNo += 1,
	               @ErrorId = ErrorId
	        WHERE  HResult = @ERROR_NUMBER
	               AND Line = @ERROR_LINE
	               AND Method = @ERROR_PROCEDURE
	               AND UserId = @UserId; 
	ELSE 
	BEGIN
		INSERT INTO [ErrorLog]
		  (
		    [OS],
		    [UserId],
		    [CLRVersion],
		    [ErrorDateTime],
		    [IsHandled],
		    [Type],
		    [Line],
		    [Column],
		    [Message],
		    [HResult],
		    [Source],
		    [Method],
		    [ModuleName],
		    [IPv4Address],
		    [MACAddress],
		    [MemberType],
		    [CurrentCulture],
		    [DuplicateNo],
		    [Data]
		  )
		VALUES
		  (
		    @OS,
		    @UserId,
		    @ClrVersion,
		    @ErrorDate,
		    @IsHandled,
		    @ErrorType,
		    @ERROR_LINE,
		    @ERROR_Column,
		    @ERROR_MESSAGE,
		    @ERROR_NUMBER,
		    @Source,
		    @ERROR_PROCEDURE,
		    @DatabaseName,
		    @IP_Address,
		    @MAC_Address,
		    @MemberType,
		    @Culture,
		    0,
		    (
		        SELECT @ExtraData [ExtraData],
		               @ERROR_SEVERITY [SEVERITY],
		               @ERROR_STATE [STATE]
		               FOR 
		               XML PATH(''''),
		               ROOT(''Error'')
		    )
		  )
		-- Set AutoId of ErrorLog table to @ErrorLogID for use in Snapshots table         
		SELECT @ErrorId = SCOPE_IDENTITY()
	END
	
	IF @RaisError = 1
	    RAISERROR(@ERROR_MESSAGE, 18, 255) 
	
	RETURN
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPolicyCategory]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetPolicyCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_GetPolicyCategory]
	@LangId int,
 	@PolicyName NVARCHAR(MAX)  
AS
BEGIN
	 
	DECLARE @query NVARCHAR(MAX); 

	SELECT TOP 1 @query=  pq.PolicyQuery
    FROM   PolicyQueries  AS pq,
           PolicyType   AS pt
    WHERE  pq.PolicyTypeId = pt.PolicyTypeId
    AND pt.LangID=pq.LangID 
           AND pt.LangId = @LangId
           AND pt.IsAcvite =1
           AND LOWER(pt.PolicyName) = LOWER(@PolicyName)
    
    EXECUTE(@query)
      
	RETURN
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016/01/18
-- Description:	Increase Rss Feed Score +1
-- =============================================
CREATE PROCEDURE [dbo].[sp_Increase_RssScore] 
-- Add the parameters for the stored procedure here
	@Url NVARCHAR(MAX)
AS
BEGIN
	UPDATE [xomorod.com_xomorod].dbo.RssFeeds
	SET    Score += 1
	WHERE  [Url] = @Url
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar	
-- Create date: 2016/01/18
-- Description:	Insert one rss feed item''s to RssFeeds table
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_RssItem]
    @Url NVARCHAR(MAX) ,
    @Tilte NVARCHAR(MAX) ,
    @Description NVARCHAR(MAX) ,
    @ImageUrl NVARCHAR(MAX) ,
    @PublishDate DATETIME ,
    @Author NVARCHAR(MAX) ,
    @ResourceId INT
AS 
    BEGIN
        DECLARE @DashTrimTitle NVARCHAR(MAX) = REPLACE(@Tilte, '' '', ''-'');
        DECLARE @HashedTitle CHAR(32) = dbo.fn_GetStringHashing(@DashTrimTitle);
	
        IF ( SELECT COUNT(1)
             FROM   RssFeeds rss
             WHERE  @HashedTitle = rss.TitleHash
                    AND @Tilte = rss.Title
                    AND ( ( @Url = rss.[Url] )
                          OR ( ABS(DATEDIFF(DAY, rss.PublishDate,
                                            rss.PublishDate)) > 7 )
                        )
           ) = 0 
            BEGIN
	    -- Insert statements for procedure here
                INSERT  INTO [xomorod.com_xomorod].dbo.RssFeeds
                        ( -- ID -- this column value is auto-generated
                          [Url] ,
                          Title ,
                          TitleHash ,
                          [Description] ,
                          ThumbnailUrl ,
                          PublishDate ,
                          Author ,
                          ResourceID
	                    )
                VALUES  ( @Url ,
                          @Tilte ,
                          @hashedTitle ,
                          @Description ,
                          @ImageUrl ,
                          @PublishDate ,
                          @Author ,
                          @ResourceId
	                    )
            END
    END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_InsertErrorLog]
	@ServerDateTime DATETIME,
	@Host SYSNAME,
	@User UNIQUEIDENTIFIER,
	@IsHandled BIT,
	@Type VARCHAR(200),
	@AppName VARCHAR(200),
	@CurrentCulture SYSNAME = NULL,
	@CLRVersion SYSNAME = NULL,
	@Message NVARCHAR(MAX) = NULL,
	@Source NVARCHAR(MAX) = NULL,
	@StackTrace NVARCHAR(MAX) = NULL,
	@ModuleName VARCHAR(200) = NULL,
	@MemberType SYSNAME = NULL,
	@Method VARCHAR(500) = NULL,
	@Processes VARCHAR(MAX) = NULL,
	@ErrorDateTime DATETIME,
	@OS VARCHAR(1000) = NULL,
	@IPv4Address SYSNAME = NULL,
	@MACAddress SYSNAME = NULL,
	@HResult INT,
	@Line INT,
	@Column INT,
	@Duplicate INT,
	@Data XML = NULL
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
		-- Check the error exist or not? if exist then only update that 
		IF (
		       SELECT COUNT(ErrorId)
		       FROM   [ErrorLog]
		       WHERE  HResult          = @HResult
		              AND Line         = @Line
		              AND Method       = @Method
		              AND [UserId]     = @User
		   ) > 0
		    -- Update error object from ErrorLog table 
		    UPDATE dbo.ErrorLog
		    SET    DuplicateNo += 1
		    WHERE  HResult = @HResult
		           AND Line = @Line
		           AND Method = @Method
		           AND [UserId] = @User
		ELSE
		BEGIN
		    -- Insert error object into ErrorLog table 
		    INSERT INTO [ErrorLog]
		      (
		        [ServerDateTime],
		        [Host],
		        [UserId],
		        [IsHandled],
		        [Type],
		        [AppName],
		        [CurrentCulture],
		        [CLRVersion],
		        [Message],
		        [Source],
		        [StackTrace],
		        [ModuleName],
		        [MemberType],
		        [Method],
		        [Processes],
		        [ErrorDateTime],
		        [OS],
		        [IPv4Address],
		        [MACAddress],
		        [HResult],
		        [Line],
		        [Column],
		        [DuplicateNo],
		        [Data]
		      )
		    VALUES
		      (
		        @ServerDateTime,
		        @Host,
		        @User,
		        @IsHandled,
		        @Type,
		        @AppName,
		        @CurrentCulture,
		        @CLRVersion,
		        @Message,
		        @Source,
		        @StackTrace,
		        @ModuleName,
		        @MemberType,
		        @Method,
		        @Processes,
		        @ErrorDateTime,
		        @OS,
		        @IPv4Address,
		        @MACAddress,
		        @HResult,
		        @Line,
		        @Column,
		        @Duplicate,
		        @Data
		      ) 
		    -- Set AutoId of ErrorLog table to @ErrorLogID for use in Snapshots table         
		    SELECT SCOPE_IDENTITY()
		END 
		COMMIT TRANSACTION
	END TRY 
	BEGIN CATCH
		-- IF @@TRANCOUNT > 0
		IF XACT_STATE() <> 0
		    ROLLBACK TRANSACTION
		
		EXEC sp_CatchError
		     @User,
		     @RaisError = 0,	-- Do not Raiserror again to client
		     @ExtraData = NULL,
		     @ErrorId = NULL
	END CATCH
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Users_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_Users_Insert]
	@Id UNIQUEIDENTIFIER = NULL,
	@FirstName NVARCHAR(100) = Null,
	@LastName NVARCHAR(100) = Null,
	@Username NVARCHAR(100),
	@Pass VARCHAR(256),
	@Email VARCHAR(100) = NULL
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
		
		SET @Id = ISNULL(@Id, NEWID())
		
		INSERT INTO [xomorod.com_xomorod].dbo.Users
		  (
		    Id,
		    FirstName,
		    LastName,
		    Username,
		    [Password],
		    Email
		  )
		VALUES
		  (
		    @Id,
		    @FirstName,
		    @LastName,
		    @Username,
		    CAST(@Pass AS BINARY),
		    @Email
		  )
		
		SELECT *
		FROM   [xomorod.com_xomorod].dbo.Users u
		WHERE  u.Id = @Id
		
		COMMIT TRANSACTION
	END TRY 
	BEGIN CATCH
		-- IF @@TRANCOUNT > 0
		IF XACT_STATE() <> 0
		    ROLLBACK TRANSACTION
		
		EXEC sp_CatchError
		     @Id,
		     @RaisError = 0,	-- Do not Raiserror again to client
		     @ExtraData = NULL,
		     @ErrorId = NULL
	END CATCH
END' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetExtraLinkByName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[GetExtraLinkByName]
(
	@PortfolioID     INT,
	@LinkName        NVARCHAR(255)
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @result NVARCHAR(MAX)
	
	SELECT TOP(1) @result = Link
	FROM   [xomorod.com_xomorod].dbo.[ExtraLinks]
	WHERE  LOWER(NAME) = lower(@LinkName)
	       AND PortfolioId = @PortfolioID
	
	RETURN @result;
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetResourceLinkByElementID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[GetResourceLinkByElementID]
(
	@ElementUniqueID UNIQUEIDENTIFIER
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @result NVARCHAR(MAX)
	
	-- Add the T-SQL statements to compute the return value here
	SELECT TOP(1) @result = r.ResourceLink
	FROM   [xomorod.com_xomorod].dbo.Resources r
	WHERE  r.ElementUniqueId = @ElementUniqueID
	
	-- Return the result of the function
	RETURN @result;
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSettingByKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[GetSettingByKey]
(
	@Key NVARCHAR(256)
)
RETURNS NVARCHAR(MAX)
AS


BEGIN
	DECLARE @result NVARCHAR(MAX) = ''''; 
	
	SELECT @result = as1.[Value]
	FROM   [xomorod.com_xomorod].dbo.AppSetting as1
	WHERE  LOWER(as1.[Key]) = LOWER(@Key)
	
	RETURN @result;
END
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetStringHashing]
(
	@Content NVARCHAR(MAX)
)
RETURNS CHAR(32)
AS
BEGIN
	DECLARE @hash CHAR(32);
	
	SELECT @hash = SUBSTRING(sys.fn_sqlvarbasetostr(HASHBYTES(''MD5'', @Content)), 3, 32)
	
	RETURN @hash;
END
' 
END

GO
/****** Object:  Table [dbo].[AppSetting]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppSetting](
	[Key] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Background] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriesChilds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategoriesChilds](
	[CategoryID] [int] NOT NULL,
	[ChildCategoryID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CategoriesChilds] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[ChildCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ErrorLog](
	[ErrorId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServerDateTime] [datetime] NULL,
	[Host] [nvarchar](200) NULL,
	[IsHandled] [bit] NULL,
	[Type] [varchar](200) NULL,
	[AppName] [nvarchar](200) NULL,
	[Data] [xml] NULL,
	[CurrentCulture] [nvarchar](200) NULL,
	[CLRVersion] [varchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
	[StackTrace] [nvarchar](max) NULL,
	[ModuleName] [varchar](200) NULL,
	[MemberType] [varchar](200) NULL,
	[Method] [varchar](500) NULL,
	[Processes] [nvarchar](max) NULL,
	[ErrorDateTime] [datetime] NULL,
	[OS] [varchar](1000) NULL,
	[IPv4Address] [varchar](50) NULL,
	[MACAddress] [varchar](50) NULL,
	[HResult] [int] NULL,
	[Line] [int] NULL,
	[Column] [int] NULL,
	[DuplicateNo] [int] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExtraLinks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioID] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ExtraLinks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[PortfolioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Languages](
	[LangID] [int] IDENTITY(1,1) NOT NULL,
	[LangFullName] [varchar](50) NOT NULL,
	[Culture] [varchar](5) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogHistory](
	[RunDate] [datetime] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Success] [bit] NOT NULL,
	[TryUsername] [nvarchar](max) NULL,
	[TryPassword] [nvarchar](max) NULL,
	[LoginOrLogout] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PolicyDetails]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PolicyDetails](
	[PolicyDetailsID] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[PolicyDetailsQuery] [nvarchar](max) NULL,
 CONSTRAINT [PK__PolicyDe__460F379A5D247087] PRIMARY KEY CLUSTERED 
(
	[PolicyDetailsID] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PolicyQueries]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyQueries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PolicyQueries](
	[PolicyID] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[PolicyQuery] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[PolicyTypeID] [int] NULL,
 CONSTRAINT [PK__PolicyQu__2E1339A4FCE2889D] PRIMARY KEY CLUSTERED 
(
	[PolicyID] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PolicyType](
	[PolicyTypeId] [int] NOT NULL,
	[PolicyName] [nvarchar](255) NULL,
	[IsAcvite] [bit] NULL,
	[LangId] [int] NOT NULL,
 CONSTRAINT [PK__PolicyTy__90DE2D7EE8AA662D] PRIMARY KEY CLUSTERED 
(
	[PolicyTypeId] ASC,
	[LangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortfolioCategories](
	[PortfolioID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_PortfolioCategories] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Portfolios](
	[PortfolioID] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[Summary] [nvarchar](max) NULL,
	[MarkdownDescription] [nvarchar](max) NULL,
	[ModifyDate] [date] NOT NULL,
	[ProjectUrl] [nvarchar](max) NULL,
	[IconId] [int] NULL,
	[Rank] [float] NULL,
	[Price] [numeric](18, 0) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Portfolios] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PortfoliosComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[PortfoliosID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_PortfoliosComment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ElementUniqueId] [uniqueidentifier] NOT NULL,
	[ResourceName] [nvarchar](100) NOT NULL,
	[ResourceLink] [nvarchar](max) NULL,
 CONSTRAINT [PK_Resources_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](100) NOT NULL,
	[RoleType] [nvarchar](50) NOT NULL,
	[ParentRoleId] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssCategories](
	[CategoryID] [int] NOT NULL,
	[LangID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Order] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_NewsCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssContentProviders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CSS] [nvarchar](max) NULL,
	[JS] [nvarchar](max) NULL,
	[StartMarkup] [nvarchar](max) NULL,
	[EndMarkup] [nvarchar](max) NULL,
 CONSTRAINT [PK_RssResourcesContentProvides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssFeeds](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[TitleHash] [char](32) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ThumbnailUrl] [nvarchar](max) NULL,
	[PublishDate] [datetime] NULL,
	[Author] [nvarchar](300) NULL,
	[ResourceID] [int] NOT NULL,
	[Score] [bigint] NOT NULL,
 CONSTRAINT [PK_RssFeeds] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssResources](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[Language] [nchar](10) NULL,
	[RssCategoryID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[Favicon] [nvarchar](max) NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_RssResources] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RssResources_ContentProviders](
	[ResourceID] [int] NOT NULL,
	[ContentProvideID] [int] NOT NULL,
 CONSTRAINT [PK_RssResourcesRelatedByContentProviders] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC,
	[ContentProvideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInRoles](
	[RoleId] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_UserInRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Id] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ModifyDate] [date] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Password] [varbinary](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnable] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnable] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Categories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[udft_Categories]
(
	@langID INT
)
RETURNS TABLE
AS



	RETURN 
(
    SELECT ROW_NUMBER() OVER(ORDER BY c.CategoryId) AS Row,
           c.CategoryId,
           c.Name,
           c.Background
    FROM   [xomorod.com_xomorod].dbo.Categories c
    WHERE  c.LangID = @langID
           AND c.IsActive = 1
)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_CategoriesChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[udft_CategoriesChilds]
()
RETURNS TABLE
AS
	RETURN 
	(
	    SELECT cc.CategoryID,
	           cc.ChildCategoryID
	    FROM   [xomorod.com_xomorod].dbo.CategoriesChilds cc
	    WHERE  cc.IsActive = 1
	)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetCategoryChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[fn_GetCategoryChilds]
(
	@langID     INT,
	@CateID     INT
)
RETURNS TABLE
AS
	RETURN 
	(
	    SELECT c.*
	    FROM   dbo.udft_Categories(@langID) c,
	           dbo.udft_CategoriesChilds() ucc
	    WHERE  c.CategoryId = ucc.CategoryID
	           AND ucc.CategoryId = @CateID
	)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckUserPass]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_CheckUserPass]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 1/3/2016
-- Description:	Check user password
-- =============================================
CREATE FUNCTION [dbo].[fn_CheckUserPass]
(
	@Username     NVARCHAR(100),
	@Pass         VARCHAR(MAX)
)
RETURNS TABLE
AS




	RETURN 
(
    SELECT u.UserID,
           u.Username,
           u.FirstName,
           u.LastName,
           u.ModifyDate,
           u.Email,
           u.PhoneNumber,
           u.TwoFactorEnable,
           r.[Role],
           r.RoleType
    FROM   [xomorod.com_xomorod].dbo.Users u
           INNER JOIN UserInRoles ur
                ON  ur.UserID = u.UserID
           INNER JOIN Roles r
                ON  r.RoleID = ur.RoleId
    WHERE  u.Username = @Username
           AND u.[Password] = CAST(@Pass AS VARBINARY(MAX))
)
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Portfolios]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[udft_Portfolios]
(
	@langID INT
)
RETURNS TABLE
AS
	RETURN 
	(
	    SELECT p.PortfolioID,
	           p.ProjectName,
	           p.Summary,
	           p.MarkdownDescription,
	           p.ModifyDate,
	           p.ProjectUrl,
	           p.IconId,
	           p.Price,
	           p.[Rank]
	    FROM   [xomorod.com_xomorod].dbo.Portfolios p
	    WHERE  p.LangID = @langID
	           AND p.IsActive = 1
	)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016/02/08
-- Description:	
-- =============================================
CREATE FUNCTION [dbo].[udft_RssCategories]
(
	@langID INT
)
RETURNS TABLE
AS

RETURN 
(
    SELECT rc.CategoryID,
           rc.Name,
           rc.[Description],
           rc.[Order]
    FROM   [xomorod.com_xomorod].dbo.RssCategories rc
    WHERE  rc.LangID = @langID
           AND rc.IsActive = 1
)' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[udft_RssResources]
(
)
RETURNS TABLE
AS
	RETURN 
	(
	    SELECT rr.ID,
	           rr.Name,
	           rr.[Url],
	           rr.[Language],
	           rr.RssCategoryID,
	           rr.Favicon,
	           rr.Score
	    FROM   [xomorod.com_xomorod].dbo.RssResources rr
	    WHERE  rr.IsActive = 1
	)
' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 2/19/2016 10:01:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udfv_PortfoliosView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[udfv_PortfoliosView]
(
	@langID INT
)
RETURNS TABLE
AS


RETURN 
(
    SELECT p.PortfolioID,
           p.Id,
           p.ProjectName,
           p.Summary,
           p.MarkdownDescription,
           p.ModifyDate,
           p.ProjectUrl,
           p.IconId,
           p.[Rank],
           p.Price,
           Categories = STUFF(
               (
                   SELECT '',   '' + cc.Name
                   FROM   dbo.PortfolioCategories pc
                          INNER JOIN dbo.Categories cc
                               ON  cc.CategoryID = pc.CategoryID
                   WHERE  pc.PortfolioID = p.PortfolioID
                          AND cc.IsActive = 1
                          AND cc.LangID = @langID
                              FOR XML PATH(''''), TYPE
               ).value(''.'', ''NVARCHAR(MAX)''),
               1,
               1,
               ''''
           )
    FROM   [xomorod.com_xomorod].dbo.Portfolios p
           INNER JOIN [xomorod.com_xomorod].dbo.PortfolioCategories pc
                ON  pc.PortfolioID = p.PortfolioID
           INNER JOIN [xomorod.com_xomorod].dbo.Categories c
                ON  c.CategoryID = pc.CategoryID
    WHERE  p.IsActive = 1
           AND c.IsActive = 1
           AND p.LangID = @langID
           AND c.LangID = @langID
    GROUP BY
           p.PortfolioID,
           p.Id,
           p.ProjectName,
           p.Summary,
           p.MarkdownDescription,
           p.ModifyDate,
           p.ProjectUrl,
           p.IconId,
           p.[Rank],
           p.Price
)' 
END

GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleProjectID', N'xomorod-1186')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleProjectNumber', N'351044961981')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'ApiAddress', N'http://api.xomorod.com')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'UnobtrusiveJavaScriptEnabled', N'true')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'ClientValidationEnabled', N'true')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApiServiceAccountID', N'xomorod-963')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_type', N'service_account')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_project_id', N'xomorod-1186')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_private_key_id', N'106e40788d017b48cb81aa2b38e53d931e75e851')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_private_key', N'-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCnv/UdNA5ISdkS\nHytAzfne1QIpYhaiZwxeU8nFdMPN5Wvk1Y99rNn0Foe8VBQP6RfpIpQysDGaAQGI\n0EalDyBPEWXx13GinGlhG2KErG+fQ/X25ad4xZfFKl+tN4XHncgN4Mj+pLXYb+Uy\n/+2BDlTduZNrKsJn0F0p7V2juyuJV0bsAUdEGCPc4okdQO8JYj4zMJ4cmCZgJXdc\nz6f5Ivf1JegBFTR7nuWKoGicfsqx8F6hw7RygYL9H/w3a1yVt+ve95v8y1oqUQQP\nten5flfLTK9xZ05Lu30Uozbcjwtb80TDiF9Vu0ywFWLUKHTBj0oWi2WAjfiQu88D\nqIB/R8ObAgMBAAECggEAV2IEMkk6o2dsnycDZgemAPDe5mXFOqYJaF2nPqebk/bN\npG+nBqVzB9ZwsKbvqHYY0YYEwv7LZ9jcTsOH+VWO1AFRJJDBDh8COeaFBG2627EQ\nQKPTAHOVosx2+Ilys9A6NRiCOzvbyjpHn7B3rQGlLbcM1wd4K5H75epTHAZVIH4u\n77M9WZteOekRg9Vp1cvooxqkidjkeiDivLPZRVJMEkDArR4P3i+gPXZF6ayAX4r5\nObcpPpizSm1iFzvf3oxJ3mjIDm4ZjjzDBc2vuuL6igdT1vVkU59n1XMRSALHDYS1\nuKxSfka1op1uDbidBPKiBl0K1IuDtdHTAGZY3vTnGQKBgQDxjzB/z6k1vOjxNgl7\nD5aXrEqPEXkpBoym54vrtUlRKfV0rtyYhIRVdufevu2LwJoBoOdtnZkHl2ItI4wa\nNIokJqPCdTWqGxq08NgwA3jPUzQ5oJavu4qjedDDlmwS2RCm+/QVY9si1OavByf4\npnaYPiKgFbgUhy/t8/vvPsksBwKBgQCxxzEKTq/LsEOJEFr2TXQbVb/uJnVSBK2l\nlzyv0No/nTz7Pp0lKR3jmPZe1om1kpxIjnyOLTisr4/HFE6q4vdSMb4Uwr3A8a/q\nF9WfrluytaV11gZac7KTNw1HsMxnlo5lYOvEoKHybjHt5mcVrwMTdOhkGgD79LA4\nLhn29nfuzQKBgQDYJx1rAVOU9porXgNVzzkeN9nv897LS0UJBSE7plkY+8bcxqw2\n/j28jE4oEAlYiNxGoMj2WZPaKyh649g2itUiTEE1fNSshtx7FRkevbyZKQcOmhi8\n38DLT/HzUuMaaopwIfzkNxqcLI7QCENISQzOZqttPIIgPGgzMaQ7DZ/OeQKBgQCK\nEr7P1pVKibeqOH2tVjKbGFpcyJnN/bwwI+oKUxdu2NyH9fVu6yQ/pImU1uNVlmyz\nHZc3hX/C/weYAvmmV2jm+aM71JQzyoJqOeC8iFrHzbSYdIWysrE7DULPL01SFui5\nbDExIeElvNgigRQHD0pATkg/lsK07TIAMC4SVRKI8QKBgFg0iUtTGxl5StAr6Us1\n8BbGuALRbL9vHm5+D3JOsWFWQP0o6/0rAEElCJ7FWgfKBHMCPw8K3BpURlMEkohD\nanneHhJX+TD/Et0MkqqAZJ5UWf2TQ7nelF9S0kvQ6Wkh5/biGo8AHxya73nUQq6T\nYTx8Dp59zhZtg+EhyQdZSLLg\n-----END PRIVATE KEY-----\n')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_client_email', N'xomorod-963@xomorod-1186.iam.gserviceaccount.com')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_client_id', N'105786038631082741140')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_auth_uri', N'https://accounts.google.com/o/oauth2/auth')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_token_uri', N'https://accounts.google.com/o/oauth2/token')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_auth_provider_x509_cert_url', N'https://www.googleapis.com/oauth2/v1/certs')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApi_client_x509_cert_url', N'https://www.googleapis.com/robot/v1/metadata/x509/xomorod-963%40xomorod-1186.iam.gserviceaccount.com')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'BugTrackerAddress', N'xomorod.co@gmail.com')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'BugTrackerServicePassword', N'H\,g,d@13')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'BugTrackerServiceAddress', N'xomorod.bugs@gmail.com')
GO
INSERT [dbo].[AppSetting] ([Key], [Value]) VALUES (N'GoogleDriveApiAccountKeysJson', N'{
  "type": "service_account",
  "project_id": "xomorod-1186",
  "private_key_id": "106e40788d017b48cb81aa2b38e53d931e75e851",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCnv/UdNA5ISdkS\nHytAzfne1QIpYhaiZwxeU8nFdMPN5Wvk1Y99rNn0Foe8VBQP6RfpIpQysDGaAQGI\n0EalDyBPEWXx13GinGlhG2KErG+fQ/X25ad4xZfFKl+tN4XHncgN4Mj+pLXYb+Uy\n/+2BDlTduZNrKsJn0F0p7V2juyuJV0bsAUdEGCPc4okdQO8JYj4zMJ4cmCZgJXdc\nz6f5Ivf1JegBFTR7nuWKoGicfsqx8F6hw7RygYL9H/w3a1yVt+ve95v8y1oqUQQP\nten5flfLTK9xZ05Lu30Uozbcjwtb80TDiF9Vu0ywFWLUKHTBj0oWi2WAjfiQu88D\nqIB/R8ObAgMBAAECggEAV2IEMkk6o2dsnycDZgemAPDe5mXFOqYJaF2nPqebk/bN\npG+nBqVzB9ZwsKbvqHYY0YYEwv7LZ9jcTsOH+VWO1AFRJJDBDh8COeaFBG2627EQ\nQKPTAHOVosx2+Ilys9A6NRiCOzvbyjpHn7B3rQGlLbcM1wd4K5H75epTHAZVIH4u\n77M9WZteOekRg9Vp1cvooxqkidjkeiDivLPZRVJMEkDArR4P3i+gPXZF6ayAX4r5\nObcpPpizSm1iFzvf3oxJ3mjIDm4ZjjzDBc2vuuL6igdT1vVkU59n1XMRSALHDYS1\nuKxSfka1op1uDbidBPKiBl0K1IuDtdHTAGZY3vTnGQKBgQDxjzB/z6k1vOjxNgl7\nD5aXrEqPEXkpBoym54vrtUlRKfV0rtyYhIRVdufevu2LwJoBoOdtnZkHl2ItI4wa\nNIokJqPCdTWqGxq08NgwA3jPUzQ5oJavu4qjedDDlmwS2RCm+/QVY9si1OavByf4\npnaYPiKgFbgUhy/t8/vvPsksBwKBgQCxxzEKTq/LsEOJEFr2TXQbVb/uJnVSBK2l\nlzyv0No/nTz7Pp0lKR3jmPZe1om1kpxIjnyOLTisr4/HFE6q4vdSMb4Uwr3A8a/q\nF9WfrluytaV11gZac7KTNw1HsMxnlo5lYOvEoKHybjHt5mcVrwMTdOhkGgD79LA4\nLhn29nfuzQKBgQDYJx1rAVOU9porXgNVzzkeN9nv897LS0UJBSE7plkY+8bcxqw2\n/j28jE4oEAlYiNxGoMj2WZPaKyh649g2itUiTEE1fNSshtx7FRkevbyZKQcOmhi8\n38DLT/HzUuMaaopwIfzkNxqcLI7QCENISQzOZqttPIIgPGgzMaQ7DZ/OeQKBgQCK\nEr7P1pVKibeqOH2tVjKbGFpcyJnN/bwwI+oKUxdu2NyH9fVu6yQ/pImU1uNVlmyz\nHZc3hX/C/weYAvmmV2jm+aM71JQzyoJqOeC8iFrHzbSYdIWysrE7DULPL01SFui5\nbDExIeElvNgigRQHD0pATkg/lsK07TIAMC4SVRKI8QKBgFg0iUtTGxl5StAr6Us1\n8BbGuALRbL9vHm5+D3JOsWFWQP0o6/0rAEElCJ7FWgfKBHMCPw8K3BpURlMEkohD\nanneHhJX+TD/Et0MkqqAZJ5UWf2TQ7nelF9S0kvQ6Wkh5/biGo8AHxya73nUQq6T\nYTx8Dp59zhZtg+EhyQdZSLLg\n-----END PRIVATE KEY-----\n",
  "client_email": "xomorod-963@xomorod-1186.iam.gserviceaccount.com",
  "client_id": "105786038631082741140",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://accounts.google.com/o/oauth2/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/xomorod-963%40xomorod-1186.iam.gserviceaccount.com"
}
')
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (1, 1, N'Software', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (1, 2, N'نرم افزار', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (2, 1, N'Win32 Library', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (2, 2, N'کتابخوانه ویندوز', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (3, 1, N'WPF', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (3, 2, N'WPF', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (4, 1, N'WinForm', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (4, 2, N'ویندوز فرم', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (5, 1, N'WCF', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (5, 2, N'WCF', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (6, 1, N'ASP', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (6, 2, N'وب', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (7, 1, N'ASP.NET', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (7, 2, N'ASP.NET', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (8, 1, N'Node.js', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (8, 2, N'Node.js', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (9, 1, N'JavaScript', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (9, 2, N'جاوااسکریپت', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (10, 1, N'CSS', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (10, 2, N'سی اس اس', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (12, 1, N'HTML', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (12, 2, N'اچ تی ام ال', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (13, 1, N'Socket Programming', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (13, 2, N'برنامه نویسی سوکت', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (14, 1, N'Console Application', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (14, 2, N'برنامه کنسول ویندوز', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (15, 1, N'Web Application', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (15, 2, N'برنامه تحت وب', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (16, 1, N'Web Site', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (16, 2, N'وب سایت', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (17, 1, N'C#', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (17, 2, N'سی شارپ', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (18, 1, N'C/C++', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (18, 2, N'سی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (19, 1, N'Python', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (19, 2, N'پایتون', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (20, 1, N'Assembly', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (20, 2, N'اسمبلی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (21, 1, N'DirectX', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (21, 2, N'دایرکت ایکس', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (22, 1, N'XNA', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (22, 2, N'ایکس ان ای', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (23, 1, N'OpenGL', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (23, 2, N'اپن جی ال', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (24, 1, N'WebGL', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (24, 2, N'وب جی ال', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (25, 1, N'Game Engine', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (25, 2, N'موتور گیم ساز', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (26, 1, N'Graphic', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (26, 2, N'گرافیک', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (27, 1, N'Android', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (27, 2, N'اندروید', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (28, 1, N'Mobile Application', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (28, 2, N'برنامه موبایل', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (29, 1, N'iOS', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (29, 2, N'اپل', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (30, 1, N'iPhone', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (30, 2, N'آیفون', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (31, 1, N'Windows Application', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (31, 2, N'برنامه تحت ویندوز', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (32, 1, N'Windows Phone', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (32, 2, N'ویندوز فون', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (35, 1, N'Graphic Engine', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (35, 2, N'موتور گرافیک', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (37, 1, N'TDD', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (37, 2, N'تست', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (38, 1, N'Web Socket', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (38, 2, N'وب سوکت', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (40, 1, N'Win32', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (40, 2, N'تحت ویندوز', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (42, 1, N'Unit Test', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (42, 2, N'تست', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (43, 1, N'Unity', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (43, 2, N'یونیتی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (45, 1, N'Genetic Algorithm', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (45, 2, N'الگوریتم ژنتیک', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (46, 1, N'AI', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (46, 2, N'هوش مصنوعی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (47, 1, N'Fuzzy Logic', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (47, 2, N'منطق فازی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (48, 1, N'Win Service', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (48, 2, N'ویندوز سرویس', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (49, 1, N'GIS', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (49, 2, N'جغرافیایی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (50, 1, N'Game', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (50, 2, N'بازی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (51, 1, N'Educational Software', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (51, 2, N'نرم افزار آموزشی', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (52, 1, N'Utility', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (52, 2, N'سودمند', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (53, 1, N'News', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (53, 2, N'اخبار', N'#fff', 1)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (54, 1, N'Web API', N'#fff', 0)
GO
INSERT [dbo].[Categories] ([CategoryId], [LangID], [Name], [Background], [IsActive]) VALUES (54, 2, N'واسط وب', N'#fff', 0)
GO
INSERT [dbo].[CategoriesChilds] ([CategoryID], [ChildCategoryID], [IsActive]) VALUES (27, 52, 1)
GO
INSERT [dbo].[CategoriesChilds] ([CategoryID], [ChildCategoryID], [IsActive]) VALUES (27, 53, 1)
GO
SET IDENTITY_INSERT [dbo].[ExtraLinks] ON 

GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (1, 1, N'GitHub', N'https://github.com/Behzadkhosravifar/ErrorControlSystem')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (2, 1, N'NugetPackageUrl', N'https://www.nuget.org/packages/errorcontrolsystem/')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (3, 1, N'NugetVersion', N'http://img.shields.io/nuget/v/errorcontrolsystem.svg')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (4, 1, N'NugetDownloadCount', N'http://img.shields.io/nuget/dt/errorcontrolsystem.svg')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (5, 12, N'GitHub', N'https://github.com/Behzadkhosravifar/MakeClassSchedule')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (6, 13, N'GitHub', N'https://github.com/Behzadkhosravifar/TSP')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (7, 15, N'GitHub', N'https://github.com/Behzadkhosravifar/SignalR')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (8, 8, N'GitHub', N'https://github.com/Behzadkhosravifar/WHOis')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (9, 5, N'GitHub', N'https://github.com/Behzadkhosravifar/FoxRabbit')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (10, 14, N'GitHub', N'https://github.com/Behzadkhosravifar/greatmaps')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (11, 10, N'GitHub', N'https://github.com/Behzadkhosravifar/SnippingMultipleScreen')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (12, 9, N'GitHub', N'https://github.com/Behzadkhosravifar/BlurMessageBox')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (14, 11, N'GitHub', N'https://github.com/Behzadkhosravifar/TicTacToe')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (15, 6, N'GitHub', N'https://github.com/Behzadkhosravifar/Sudoku#sudoku-99')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (17, 3, N'GitHub', N'https://github.com/Behzadkhosravifar/Room-3D')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (18, 7, N'GitHub', N'https://github.com/Behzadkhosravifar/PingServer')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (19, 2, N'GitHub', N'https://github.com/Behzadkhosravifar/NFA2DFA')
GO
INSERT [dbo].[ExtraLinks] ([ID], [PortfolioID], [Name], [Link]) VALUES (20, 4, N'GitHub', N'https://github.com/Behzadkhosravifar/8Queen')
GO
SET IDENTITY_INSERT [dbo].[ExtraLinks] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (1, N'English', N'en', 1)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (2, N'Persian', N'fa', 1)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (3, N'France', N'fr', 0)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (5, N'German', N'de', 0)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (6, N'Spanish ', N'es', 0)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (7, N'Turkish ', N'tr', 0)
GO
INSERT [dbo].[Languages] ([LangID], [LangFullName], [Culture], [IsActive]) VALUES (8, N'Azerbaijan', N'az', 0)
GO
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
INSERT [dbo].[PolicyDetails] ([PolicyDetailsID], [LangID], [PolicyDetailsQuery]) VALUES (1, 1, N' 
SELECT TOP 100 up.*
FROM   udft_Portfolios(1)      up,
       PortfolioCategories     p ,
       udft_CategoriesChilds()   uc
WHERE  p.PortfolioID = up.PortfolioID and
       uc.ChildCategoryID=p.CategoryID and
	   uc.CategoryID=27
ORDER BY
       up.ModifyDate')
GO
INSERT [dbo].[PolicyDetails] ([PolicyDetailsID], [LangID], [PolicyDetailsQuery]) VALUES (1, 2, N' 
SELECT TOP 100 up.*
FROM   udft_Portfolios(2)      up,
       PortfolioCategories     p ,
       udft_CategoriesChilds()   uc
WHERE  p.PortfolioID = up.PortfolioID and
       uc.ChildCategoryID=p.CategoryID and
	   uc.CategoryID=27
ORDER BY
       up.ModifyDate')
GO
INSERT [dbo].[PolicyQueries] ([PolicyID], [LangID], [PolicyQuery], [IsActive], [PolicyTypeID]) VALUES (1, 1, N' DECLARE @Categories TABLE (  CategoryId int PRIMARY KEY NOT NULL, 
  CategoryName NVARCHAR(255) 
)
  insert into @Categories
  Select 1,N''More Applications''

  insert into @Categories
  Select 2,N''New'' 

  insert into @Categories
  Select 3,N''Books''
  
  SELECT * FROM @Categories ', 1, 1)
GO
INSERT [dbo].[PolicyQueries] ([PolicyID], [LangID], [PolicyQuery], [IsActive], [PolicyTypeID]) VALUES (1, 2, N' DECLARE @Categories TABLE (  CategoryId int PRIMARY KEY NOT NULL, 
  CategoryName NVARCHAR(255) 
)
  insert into @Categories
  Select 1,N''سایر برنامه ها''

  insert into @Categories
  Select 2,N''تازه ها'' 

  insert into @Categories
  Select 3,N''کتاب ها''
  
  SELECT * FROM @Categories ', 1, 1)
GO
INSERT [dbo].[PolicyType] ([PolicyTypeId], [PolicyName], [IsAcvite], [LangId]) VALUES (1, N'Android', 1, 1)
GO
INSERT [dbo].[PolicyType] ([PolicyTypeId], [PolicyName], [IsAcvite], [LangId]) VALUES (1, N'آندروید', 1, 2)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (1, 2)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (1, 3)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (2, 51)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (3, 21)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (3, 40)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (4, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (4, 50)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (5, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (5, 47)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (6, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (6, 50)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (7, 3)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (8, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (8, 39)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (9, 3)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (9, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (10, 3)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (11, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (11, 50)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (12, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (12, 45)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (13, 4)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (13, 45)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (14, 2)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (14, 49)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (15, 2)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (15, 48)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (16, 52)
GO
INSERT [dbo].[PortfolioCategories] ([PortfolioID], [CategoryID]) VALUES (17, 53)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (1, 1, N'9f5bcfdc-fe12-4532-bb15-31b8f64e6816', N'Error Control System', N'ErrorControlSystem is a .NET library created to automate handling .NET Windows-Base application exceptions and raise that to a sql server. This exception handler have some features as screen capturing, fetch server date time in exception occurrence time and etc.', N'
<div align="center">

[![Error Control System.png](http://resources.xomorod.com/web-applications/products/images/ErrorControlSystem/ErrorControlSystem.jpg)](https://www.nuget.org/packages/ErrorControlSystem)

[![Build status](https://ci.appveyor.com/api/projects/status/lnjusej10c0451xw?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/errorcontrolsystem)
[![Nuget count](http://img.shields.io/nuget/v/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)
[![Nuget downloads](http://img.shields.io/nuget/dt/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)
[![Source Browser](https://img.shields.io/badge/Browse-Source-green.svg)](http://sourcebrowser.io/Browse/Behzadkhosravifar/ErrorControlSystem)

</div>
---------------------
---------------------
### What Is This?

This is a C#.Net project''s for manage __Exceptions__ of your .Net applications by handling and 
logging that. This is a .dll modules to provide error handling worker on your app background''s.
The modules strive to be simple, well documented and
modification friendly, in order to help developers quickly learn their inner
workings.

NOTE: 
>     This program is only for exception handling of 
>     Windows-based applications (WinForms, WPF, Console)
>     that are written by .NET languages such as C#, VB.NET, Visual F#

---------------------
### Settings

In the initialize code snippet you''ve seen that, for the `ExceptionHandler.Engine` method should be an option. 
This option is used to specify the error data, which includes the following values:

*  None 
*  DisplayUnhandledExceptions 
*  ReportHandledExceptions 
*  Snapshot 
*  FetchServerDateTime 
*  ResizeSnapshots 
*  EnableNetworkSending 
*  FilterExceptions 
*  ExitApplicationImmediately 
*  HandleProcessCorruptedStateExceptions 
*  DisplayDeveloperUI 
*  LogOnTheFly 
*  All 
*  Default = All - (ExitApplicationImmediately, HandleProcessCorruptedStateExceptions) 

For example in above codes, this code means is:


```C#
ExceptionHandler.Engine.Start("localhost", "UsersManagements",
                ErrorHandlingOptions.Default & ~ErrorHandlingOptions.ResizeSnapshots);
```
Select all options by excepted `ResizeSnapshots`

By adding the our module starter code to the beginning of your program code, you can raise all exceptions history, including __Handled__ or __UnHandled__ exceptions on the your database.

Note:
>     In the new version 2.1.1.0 and later, the option set in from database at runtime, 
>     and not necessary to set that from initial  Start  method


--------------------------
### How To Install The Modules



1. Install examples for developers (unpacking it to your disk, and go to
\ErrorControlSystem\out\ErrorControlSystem\... directory if you''re installing by hand, for example).

 Note:
>      If there is not any file in the out folders, 
>      run the buildx86.bat (or buildx64 on 64bit Operation System) file 
>      to compile project and create executable files.
>      Or 
>      please open project .sln file on Visual Studio 2013 
>      and debug/release that to compile native files.


2. In your project reference add this module dll file:  
   References > Add Reference... > Browse to above path > Select ErrorControlSystem.dll

3. Rebuild access permissions if you are prompted to.

Now you can read the code and its comments and see the result, experiment with
it, and hopefully quickly grasp how things work.

If you find a problem, incorrect comment, obsolete or improper code or such,
please search for an issue about it at [ECS Issue](https://github.com/Behzadkhosravifar/ErrorControlSystem/issues)
If there isn''t already an issue for it, please create a new one.



--------------------------
### Creating SQL Server Database Manually


The `ErrorControlSystem` project used from __UsersManagements __ database. So that is necessary for run this application.
For Creating __UsersManagements__ database on your server or pc do below steps:

Note:
>     In the new version database and tables automatically created by ErrorControlSystem


First open `SQL Server Management Studio` then connect to your Server instance.
Next step''s, Create New Database by name __UsersManagements__ or any name of your choice.

Only be carefully, in order to launch the program, enter the database name. For example: 

```C#
ExceptionHandler.Engine.Start(new Connection("Server", "Database", "User", "Pass"));

// or simpler mode:
ExceptionHandler.Engine.Start("Server", "Database", "User", "Pass");

```

Now, we need to create two table by names __ErrorLog__ and __Snapshots__ to save exceptions by screen captures.


__ErrorLog Table:__

| Column Name      | Data Type           | Description                                                   | Example																			|
|:---------------- |:------------------- |:--------------------------------------------------------------|:---------------------------------------------------------------------------------|
| ErrorId          |  `bigint`           | The unique identity number for exceptions by that location.	 | 51																				|
| ServerDateTime   |  `datetime`         | Server system''s date and time when the error occurred.		 | 2015-04-11 17:23:08.170															|
| Host             |  `varchar(200)`     | The client PC name.											 | KHOSRAVIFAR-B																	|
| User             |  `varchar(200)`     | User Domain Name \ User name in operation system				 | DBI\khosravifar.b																|
| IsHandled		   |  `bit`              | Determine this error whether handled or not ?				 | True																				|
| Type             |  `varchar(200)`     | Type of specify exceptions.									 | NullReferenceException															|
| AppName		   |  `varchar(200)`     | The application name, who that run this module on self.	 	 | Examples.WinForms v1.0.0															|
| Data             |  `xml`              | Provide additional user-defined information.					 | `<ExtraProperties><Status>RequestCanceled</Status><Response/></ExtraProperties>` |
| CurrentCulture   |  `nvarchar(200)`    | Current keyboard language, may change over the app lifetime.  | English (United States) (en-US)													|
| CLRVersion	   |  `varchar(100)`     | Version of Common Language Runtime.							 | 4.0.30319.34014																	|
| Message          |  `nvarchar(MAX)`    | Message of Exceptions.										 | Object reference not set to an instance of an object.							|
| Source           |  `nvarchar(MAX)`    | Name of the application or the object that causes throw error.| mscorlib																			|
| StackTrace       |  `nvarchar(MAX)`    | Representation of the immediate frames on the call stack.	 | N{namespace}.C{class}.M{method(parameters)} -> ...								|
| ModuleName	   |  `varchar(200)`     | Name of the module that causes to throw exception.			 | Examples.WinForms.exe															|
| MemberType	   |  `varchar(200)`     | Type of the member, include: Method, constructor, and so on.	 | Method																			|
| Method           |  `nvarchar(500)`    | Name of the method that throws the exception.				 | Examples.WinForms.namespace.class.Void method(params)							|
| Processes        |  `varchar(MAX)`     | List of all running process when exception occurred.			 | vmware-hostd, Idle, ...															|
| ErrorDateTime	   |  `datetime`         | Client system''s date and time when the error occurred.		 | 2015-04-11 17:23:07.800															|
| OS               |  `varchar(1000)`    | Information of the client operation system in `JSON` formats	 | Windows 8.1 64Bit v6.3.9600.0 - 64Bit Processor Architect - 32Bit Application	|
| IPv4Address	   |  `varchar(50)`      | Network Internal IP Address									 | 192.168.30.40																	|
| MACAddress	   |  `varchar(50)`      | Network Physical Address (MAC)								 | 74D435F250A0																		|
| HResult          |  `int`              | Error Code - Use GetType().Name for define exception model.   | -2147467261																		|
| Line			   |  `int`              | Line of exception occurrence code in file.					 | 125																				|
| Column		   |  `int`              | Column of exception occurrence code in file.					 | 17																				|
| DuplicateNo	   |  `int`              | Number of duplication for one exception''s.					 | 5																				|																			

<br/>

__Snapshots Table:__

| Column Name      | Data Type            |
|:---------------- |:---------------------|
| ErrorLogId       |   `int`              |
| ScreenCapture    |   `image`            |

<br/>

For easy way please go ahead and try [Wiki](https://github.com/Behzadkhosravifar/ErrorControlSystem/wiki) to use SQL Queries.
There are __SQL Scripts__ to create tables and queries.


--------------------------
### Get it on NuGet       [![Nuget count](http://img.shields.io/nuget/v/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)

You may use ErrorControlSystem as a library that you install with [Nuget](https://www.nuget.org/packages/ErrorControlSystem/) into your project or as a Visual Studio extension. 
The way you want to use it depends on the scenario you are working on. You most likely want the [Nuget](https://www.nuget.org/packages/ErrorControlSystem/) package.

To install Error Control System from [Nuget](https://www.nuget.org/packages/ErrorControlSystem/), 
Run the following command in the [Package Manager Console](http://docs.nuget.org/consume/package-manager-console) :

```powershell
PM> Install-Package ErrorControlSystem
```


--------------------------
### Contributing


Questions, comments, bug reports, and pull requests are all welcome.
Bug reports that include steps-to-reproduce (including code) are
preferred. Even better, make them in the form of pull requests.
Before you start to work on an existing issue, check if it is not assigned
to anyone yet, and if it is, talk to that person.
Also check the project [board](http://huboard.com/BehzadKhosravifar/ErrorControlSystem/board)
and verify it is not being worked on (it will be tagged with the `Working` tag).
If it is not being worked on, before you start check if the item is `Ready`.
If the issue has the `Working` tag (working swimlane on Huboard) and has no Assignee
then it is not being worked on by somebody on the core team. Check the issue''s
description to find out who it is (if it is not there it has to be on the comments).


--------------------------
### Issues and task board
 

* The task board is at [Huboard](http://huboard.com/BehzadKhosravifar/ErrorControlSystem/).
* You can also check the [Github backlog](https://github.com/BehzadKhosravifar/ErrorControlSystem/issues) directly.', CAST(0x20390B00 AS Date), N'https://github.com/Behzadkhosravifar/ErrorControlSystem', 1, 10, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (1, 2, N'9f5bcfdc-fe12-4532-bb15-31b8f64e6816', N'سیستم مدیریت خطا', N'ErrorControlSystem is a .NET library created to automate handling .NET Windows-Base application exceptions and raise that to a sql server. This exception handler have some features as screen capturing, fetch server date time in exception occurrence time and etc.', N'
<div align="center">

[![Error Control System.png](http://resources.xomorod.com/web-applications/products/images/ErrorControlSystem/ErrorControlSystem.jpg)](https://www.nuget.org/packages/ErrorControlSystem)

[![Build status](https://ci.appveyor.com/api/projects/status/lnjusej10c0451xw?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/errorcontrolsystem)
[![Nuget count](http://img.shields.io/nuget/v/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)
[![Nuget downloads](http://img.shields.io/nuget/dt/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)
[![Source Browser](https://img.shields.io/badge/Browse-Source-green.svg)](http://sourcebrowser.io/Browse/Behzadkhosravifar/ErrorControlSystem)

</div>
---------------------
---------------------
### What Is This?

This is a C#.Net project''s for manage __Exceptions__ of your .Net applications by handling and 
logging that. This is a .dll modules to provide error handling worker on your app background''s.
The modules strive to be simple, well documented and
modification friendly, in order to help developers quickly learn their inner
workings.

NOTE: 
>     This program is only for exception handling of 
>     Windows-based applications (WinForms, WPF, Console)
>     that are written by .NET languages such as C#, VB.NET, Visual F#

---------------------
### Settings

In the initialize code snippet you''ve seen that, for the `ExceptionHandler.Engine` method should be an option. 
This option is used to specify the error data, which includes the following values:

*  None 
*  DisplayUnhandledExceptions 
*  ReportHandledExceptions 
*  Snapshot 
*  FetchServerDateTime 
*  ResizeSnapshots 
*  EnableNetworkSending 
*  FilterExceptions 
*  ExitApplicationImmediately 
*  HandleProcessCorruptedStateExceptions 
*  DisplayDeveloperUI 
*  LogOnTheFly 
*  All 
*  Default = All - (ExitApplicationImmediately, HandleProcessCorruptedStateExceptions) 

For example in above codes, this code means is:


```C#
ExceptionHandler.Engine.Start("localhost", "UsersManagements",
                ErrorHandlingOptions.Default & ~ErrorHandlingOptions.ResizeSnapshots);
```
Select all options by excepted `ResizeSnapshots`

By adding the our module starter code to the beginning of your program code, you can raise all exceptions history, including __Handled__ or __UnHandled__ exceptions on the your database.

Note:
>     In the new version 2.1.1.0 and later, the option set in from database at runtime, 
>     and not necessary to set that from initial  Start  method


--------------------------
### How To Install The Modules



1. Install examples for developers (unpacking it to your disk, and go to
\ErrorControlSystem\out\ErrorControlSystem\... directory if you''re installing by hand, for example).

 Note:
>      If there is not any file in the out folders, 
>      run the buildx86.bat (or buildx64 on 64bit Operation System) file 
>      to compile project and create executable files.
>      Or 
>      please open project .sln file on Visual Studio 2013 
>      and debug/release that to compile native files.


2. In your project reference add this module dll file:  
   References > Add Reference... > Browse to above path > Select ErrorControlSystem.dll

3. Rebuild access permissions if you are prompted to.

Now you can read the code and its comments and see the result, experiment with
it, and hopefully quickly grasp how things work.

If you find a problem, incorrect comment, obsolete or improper code or such,
please search for an issue about it at [ECS Issue](https://github.com/Behzadkhosravifar/ErrorControlSystem/issues)
If there isn''t already an issue for it, please create a new one.



--------------------------
### Creating SQL Server Database Manually


The `ErrorControlSystem` project used from __UsersManagements __ database. So that is necessary for run this application.
For Creating __UsersManagements__ database on your server or pc do below steps:

Note:
>     In the new version database and tables automatically created by ErrorControlSystem


First open `SQL Server Management Studio` then connect to your Server instance.
Next step''s, Create New Database by name __UsersManagements__ or any name of your choice.

Only be carefully, in order to launch the program, enter the database name. For example: 

```C#
ExceptionHandler.Engine.Start(new Connection("Server", "Database", "User", "Pass"));

// or simpler mode:
ExceptionHandler.Engine.Start("Server", "Database", "User", "Pass");

```

Now, we need to create two table by names __ErrorLog__ and __Snapshots__ to save exceptions by screen captures.


__ErrorLog Table:__

| Column Name      | Data Type           | Description                                                   | Example																			|
|:---------------- |:------------------- |:--------------------------------------------------------------|:---------------------------------------------------------------------------------|
| ErrorId          |  `bigint`           | The unique identity number for exceptions by that location.	 | 51																				|
| ServerDateTime   |  `datetime`         | Server system''s date and time when the error occurred.		 | 2015-04-11 17:23:08.170															|
| Host             |  `varchar(200)`     | The client PC name.											 | KHOSRAVIFAR-B																	|
| User             |  `varchar(200)`     | User Domain Name \ User name in operation system				 | DBI\khosravifar.b																|
| IsHandled		   |  `bit`              | Determine this error whether handled or not ?				 | True																				|
| Type             |  `varchar(200)`     | Type of specify exceptions.									 | NullReferenceException															|
| AppName		   |  `varchar(200)`     | The application name, who that run this module on self.	 	 | Examples.WinForms v1.0.0															|
| Data             |  `xml`              | Provide additional user-defined information.					 | `<ExtraProperties><Status>RequestCanceled</Status><Response/></ExtraProperties>` |
| CurrentCulture   |  `nvarchar(200)`    | Current keyboard language, may change over the app lifetime.  | English (United States) (en-US)													|
| CLRVersion	   |  `varchar(100)`     | Version of Common Language Runtime.							 | 4.0.30319.34014																	|
| Message          |  `nvarchar(MAX)`    | Message of Exceptions.										 | Object reference not set to an instance of an object.							|
| Source           |  `nvarchar(MAX)`    | Name of the application or the object that causes throw error.| mscorlib																			|
| StackTrace       |  `nvarchar(MAX)`    | Representation of the immediate frames on the call stack.	 | N{namespace}.C{class}.M{method(parameters)} -> ...								|
| ModuleName	   |  `varchar(200)`     | Name of the module that causes to throw exception.			 | Examples.WinForms.exe															|
| MemberType	   |  `varchar(200)`     | Type of the member, include: Method, constructor, and so on.	 | Method																			|
| Method           |  `nvarchar(500)`    | Name of the method that throws the exception.				 | Examples.WinForms.namespace.class.Void method(params)							|
| Processes        |  `varchar(MAX)`     | List of all running process when exception occurred.			 | vmware-hostd, Idle, ...															|
| ErrorDateTime	   |  `datetime`         | Client system''s date and time when the error occurred.		 | 2015-04-11 17:23:07.800															|
| OS               |  `varchar(1000)`    | Information of the client operation system in `JSON` formats	 | Windows 8.1 64Bit v6.3.9600.0 - 64Bit Processor Architect - 32Bit Application	|
| IPv4Address	   |  `varchar(50)`      | Network Internal IP Address									 | 192.168.30.40																	|
| MACAddress	   |  `varchar(50)`      | Network Physical Address (MAC)								 | 74D435F250A0																		|
| HResult          |  `int`              | Error Code - Use GetType().Name for define exception model.   | -2147467261																		|
| Line			   |  `int`              | Line of exception occurrence code in file.					 | 125																				|
| Column		   |  `int`              | Column of exception occurrence code in file.					 | 17																				|
| DuplicateNo	   |  `int`              | Number of duplication for one exception''s.					 | 5																				|																			

<br/>

__Snapshots Table:__

| Column Name      | Data Type            |
|:---------------- |:---------------------|
| ErrorLogId       |   `int`              |
| ScreenCapture    |   `image`            |

<br/>

For easy way please go ahead and try [Wiki](https://github.com/Behzadkhosravifar/ErrorControlSystem/wiki) to use SQL Queries.
There are __SQL Scripts__ to create tables and queries.


--------------------------
### Get it on NuGet       [![Nuget count](http://img.shields.io/nuget/v/errorcontrolsystem.svg)](https://www.nuget.org/packages/errorcontrolsystem/)

You may use ErrorControlSystem as a library that you install with [Nuget](https://www.nuget.org/packages/ErrorControlSystem/) into your project or as a Visual Studio extension. 
The way you want to use it depends on the scenario you are working on. You most likely want the [Nuget](https://www.nuget.org/packages/ErrorControlSystem/) package.

To install Error Control System from [Nuget](https://www.nuget.org/packages/ErrorControlSystem/), 
Run the following command in the [Package Manager Console](http://docs.nuget.org/consume/package-manager-console) :

```powershell
PM> Install-Package ErrorControlSystem
```


--------------------------
### Contributing


Questions, comments, bug reports, and pull requests are all welcome.
Bug reports that include steps-to-reproduce (including code) are
preferred. Even better, make them in the form of pull requests.
Before you start to work on an existing issue, check if it is not assigned
to anyone yet, and if it is, talk to that person.
Also check the project [board](http://huboard.com/BehzadKhosravifar/ErrorControlSystem/board)
and verify it is not being worked on (it will be tagged with the `Working` tag).
If it is not being worked on, before you start check if the item is `Ready`.
If the issue has the `Working` tag (working swimlane on Huboard) and has no Assignee
then it is not being worked on by somebody on the core team. Check the issue''s
description to find out who it is (if it is not there it has to be on the comments).


--------------------------
### Issues and task board
 

* The task board is at [Huboard](http://huboard.com/BehzadKhosravifar/ErrorControlSystem/).
* You can also check the [Github backlog](https://github.com/BehzadKhosravifar/ErrorControlSystem/issues) directly.', CAST(0x20390B00 AS Date), N'https://github.com/Behzadkhosravifar/ErrorControlSystem', 1, 10, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (2, 1, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'NFA to DFA', N'NFA2DFA is a win32 application for convert a nondeterministic finite state automaton (NFA) to a deterministic finite state automaton (DFA).', N'<div align="center">

![NFA2DFA][19]

</div>

--------------------

[NFA][1] to [DFA][2] to convert a nondeterministic finite state automaton (**[NFA][1]**) to a deterministic finite state automaton (**[DFA][2]**).

<div align="center">

![screen][0]

</div>

<br/>

--------------------

In the [theory of computation][3] and [automata theory][4], the **powerset construction** or **subset construction** is a standard method for [converting][5] a [nondeterministic finite automaton][1] (NFA) into a [deterministic finite automaton][2] (DFA) which recognizes the same [formal language][6]. It is important in theory because it establishes that NFAs, despite their additional flexibility, are unable to recognize any language that cannot be recognized by some DFA. It is also important in practice for converting easier-to-construct NFAs into more efficiently executable DFAs. However, if the NFA has n states, the resulting DFA may have up to 2n states, an exponentially larger number, which sometimes makes the construction impractical for large NFAs.

The construction, sometimes called the Rabin–Scott powerset construction (or subset construction) to distinguish it from similar constructions for other types of automata, was first published by [Michael O. Rabin][7] and [Dana Scott][8] in 1959.[`[1]`][9]

-------------------------
## Intuition

To simulate the operation of a DFA on a given input string, one needs to keep track of a single state at any time: the state that the automaton will reach after seeing a [prefix][10] of the input. In contrast, to simulate an NFA, one needs to keep track of a set of states: all of the states that the automaton could reach after seeing the same prefix of the input, according to the nondeterministic choices made by the automaton. If, after a certain prefix of the input, a set S of states can be reached, then after the next input symbol x the set of reachable states is a deterministic function of S and x. Therefore, the sets of reachable NFA states play the same role in the NFA simulation as single DFA states play in the DFA simulation, and in fact the sets of NFA states appearing in this simulation may be re-interpreted as being states of a DFA.[`[2]`][11]


-------------------------
## Construction

The powerset construction applies most directly to an NFA that does not allow state transformations without consuming input symbols (aka: "ε-moves"). Such an automaton may be defined as a [5-tuple][12] `(Q, Σ, T, q0, F)`, in which Q is the set of states, Σ is the set of input symbols, T is the transition function (mapping a state and an input symbol to a set of states), q0 is the initial state, and F is the set of accepting states. The corresponding DFA has states corresponding to subsets of Q. The initial state of the DFA is `{q0}`, the (one-element) set of initial states. The transition function of the DFA maps a state S (representing a subset of Q) and an input symbol x to the set `T(S,x) = ∪{T(q,x) | q ∈ S}`, the set of all states that can be reached by an x-transition from a state in S. A state S of the DFA is an accepting state if and only if at least one member of S is an accepting state of the NFA.[`[2]`][11][`[3]`][13]

In the simplest version of the powerset construction, the set of all states of the DFA is the [powerset][14] of Q, the set of all possible subsets of Q. However, many states of the resulting DFA may be useless as they may be unreachable from the initial state. An alternative version of the construction creates only the states that are actually reachable.[`[4]`][15]

### NFA with ε-moves

For an NFA with ε-moves (also called an ε-NFA), the construction must be modified to deal with these by computing the ε-[closure][16] of states: the set of all states reachable from some given state using only ε-moves. Van Noord recognizes three possible ways of incorporating this closure computation in the powerset construction:[`[5]`][17]

1. Compute the ε-closure of the entire automaton as a preprocessing step, producing an equivalent NFA without ε-moves, then apply the regular powerset construction. This version, also discussed by Hopcroft and Ullman,[`[6]`][18] is straightforward to implement, but impractical for automata with large numbers of ε-moves, as commonly arise in [natural language processing][22] application.[`[5]`][17]

2. During the powerset computation, compute the ε-closure ![f1][20] of each state q that is considered by the algorithm (and cache the result).

3. During the powerset computation, compute the ε-closure ![f2][21] of each subset of states Q'' that is considered by the algorithm, and add its elements to Q''.


### Multiple initial states

If NFAs are defined to allow for multiply initial states,[`[7]`][23] the initial state of the corresponding DFA is the set of all initial states of the NFA, or (if the NFA also has ε-moves) the set of all states reachable from initial states by ε-moves.


-------------------------
## Example

The NFA below has four states; state 1 is initial, and states 3 and 4 are accepting. Its alphabet consists of the two symbols 0 and 1, and it has ε-moves.

<div align="center">
![NFA-powerset-construction-example][24]
</div>

The initial state of the DFA constructed from this NFA is the set of all NFA states that are reachable from state 1 by ε-moves; that is, it is the set `{1,2,3}`. A transition from `{1,2,3}` by input symbol 0 must follow either the arrow from state 1 to state 2, or the arrow from state 3 to state 4. Additionally, neither state 2 nor state 4 have outgoing ε-moves. Therefore, `T({1,2,3},0) = {2,4}`, and by the same reasoning the full DFA constructed from the NFA is as shown below.

<div align="center">
![DFA-powerset-construction-example][25]
</div>

As can be seen in this example, there are five states reachable from the start state of the DFA; the remaining 11 sets in the powerset of the set of NFA states are not reachable.


-------------------------
## Complexity

Because the DFA states consist of sets of NFA states, an `n-state` NFA may be converted to a DFA with at most `2^n` states.[`[2]`][11] For every `n`, there exist `n-state` NFAs such that every subset of states is reachable from the initial subset, so that the converted DFA has exactly `2^n` states, giving `Θ(2n)` [worst-case][27] time complexity.[`[8]`][26] A simple example requiring nearly this many states is the language of strings over the alphabet `{0,1}` in which there are at least n characters, the nth from last of which is 1. It can be represented by an `(n + 1)-state` NFA, but it requires `2^n` DFA states, one for each `n-character` suffix of the input; cf. picture for `n=4`.[`[4]`][15]

-------------------------
## Application

This is a sample NFA file:
	
	a b
	3  
	q1
	q0 q1
	q0 a q1
	q1 b  q0 q1 q2
	q1 a q2
	q2 b q3
	q7 b q9
	
Import this file and then you must see this result:

	∑ = {a, b}
	Vertex Name = {q0, q1, q2, q3, q4}
	Final Vertex Name = {q1 , q2}
	All Vector : 
						q0  Arrow(a)  q1
						q0  Arrow(b)  q2
						q1  Arrow(a)  q3
						q1  Arrow(b)  q2
						q2  Arrow(a)  q1
						q2  Arrow(b)  q2
						q3  Arrow(a)  q4
						q3  Arrow(b)  q4
						q4  Arrow(a)  q4
						q4  Arrow(b)  q4
						
And if you click on Draw DFA Graph, then this form viewed:

<div align="center">
![dfa][28]
</div>

-------------------------
[0]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/screen.png
[1]: https://en.wikipedia.org/wiki/Nondeterministic_finite_automaton	
[2]: https://en.wikipedia.org/wiki/Deterministic_finite_automaton
[3]: https://en.wikipedia.org/wiki/Theory_of_computation
[4]: https://en.wikipedia.org/wiki/Automata_theory
[5]: https://en.wikipedia.org/wiki/Automata_construction
[6]: https://en.wikipedia.org/wiki/Formal_language
[7]: https://en.wikipedia.org/wiki/Michael_O._Rabin
[8]: https://en.wikipedia.org/wiki/Dana_Scott
[9]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-1
[10]: https://en.wikipedia.org/wiki/Substring#Prefix
[11]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-sipser-2
[12]: https://en.wikipedia.org/wiki/Tuple
[13]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-hu-3
[14]: https://en.wikipedia.org/wiki/Power_set
[15]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-schneider-4
[16]: https://en.wikipedia.org/wiki/Reflexive_transitive_closure
[17]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-vannoord-5 
[18]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-6
[19]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/LogoNFA-DFA.png
[20]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f1.png
[21]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f2.png
[22]: https://en.wikipedia.org/wiki/Natural_language_processing
[23]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-7
[24]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/NFA-powerset-construction-example.svg.png
[25]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/DFA-powerset-construction-example.svg.png
[26]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-8
[27]: https://en.wikipedia.org/wiki/Worst-case_complexity
[28]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/dfa.png', CAST(0xF62F0B00 AS Date), N'https://github.com/Behzadkhosravifar/NFA2DFA', 39, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (2, 2, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'تبدیل کننده ماشین غیر قطعی به قطعی', N'NFA2DFA is a win32 application for convert a nondeterministic finite state automaton (NFA) to a deterministic finite state automaton (DFA).', N'<div align="center">

![NFA2DFA][19]

</div>

--------------------

[NFA][1] to [DFA][2] to convert a nondeterministic finite state automaton (**[NFA][1]**) to a deterministic finite state automaton (**[DFA][2]**).

<div align="center">

![screen][0]

</div>

<br/>

--------------------

In the [theory of computation][3] and [automata theory][4], the **powerset construction** or **subset construction** is a standard method for [converting][5] a [nondeterministic finite automaton][1] (NFA) into a [deterministic finite automaton][2] (DFA) which recognizes the same [formal language][6]. It is important in theory because it establishes that NFAs, despite their additional flexibility, are unable to recognize any language that cannot be recognized by some DFA. It is also important in practice for converting easier-to-construct NFAs into more efficiently executable DFAs. However, if the NFA has n states, the resulting DFA may have up to 2n states, an exponentially larger number, which sometimes makes the construction impractical for large NFAs.

The construction, sometimes called the Rabin–Scott powerset construction (or subset construction) to distinguish it from similar constructions for other types of automata, was first published by [Michael O. Rabin][7] and [Dana Scott][8] in 1959.[`[1]`][9]

-------------------------
## Intuition

To simulate the operation of a DFA on a given input string, one needs to keep track of a single state at any time: the state that the automaton will reach after seeing a [prefix][10] of the input. In contrast, to simulate an NFA, one needs to keep track of a set of states: all of the states that the automaton could reach after seeing the same prefix of the input, according to the nondeterministic choices made by the automaton. If, after a certain prefix of the input, a set S of states can be reached, then after the next input symbol x the set of reachable states is a deterministic function of S and x. Therefore, the sets of reachable NFA states play the same role in the NFA simulation as single DFA states play in the DFA simulation, and in fact the sets of NFA states appearing in this simulation may be re-interpreted as being states of a DFA.[`[2]`][11]


-------------------------
## Construction

The powerset construction applies most directly to an NFA that does not allow state transformations without consuming input symbols (aka: "ε-moves"). Such an automaton may be defined as a [5-tuple][12] `(Q, Σ, T, q0, F)`, in which Q is the set of states, Σ is the set of input symbols, T is the transition function (mapping a state and an input symbol to a set of states), q0 is the initial state, and F is the set of accepting states. The corresponding DFA has states corresponding to subsets of Q. The initial state of the DFA is `{q0}`, the (one-element) set of initial states. The transition function of the DFA maps a state S (representing a subset of Q) and an input symbol x to the set `T(S,x) = ∪{T(q,x) | q ∈ S}`, the set of all states that can be reached by an x-transition from a state in S. A state S of the DFA is an accepting state if and only if at least one member of S is an accepting state of the NFA.[`[2]`][11][`[3]`][13]

In the simplest version of the powerset construction, the set of all states of the DFA is the [powerset][14] of Q, the set of all possible subsets of Q. However, many states of the resulting DFA may be useless as they may be unreachable from the initial state. An alternative version of the construction creates only the states that are actually reachable.[`[4]`][15]

### NFA with ε-moves

For an NFA with ε-moves (also called an ε-NFA), the construction must be modified to deal with these by computing the ε-[closure][16] of states: the set of all states reachable from some given state using only ε-moves. Van Noord recognizes three possible ways of incorporating this closure computation in the powerset construction:[`[5]`][17]

1. Compute the ε-closure of the entire automaton as a preprocessing step, producing an equivalent NFA without ε-moves, then apply the regular powerset construction. This version, also discussed by Hopcroft and Ullman,[`[6]`][18] is straightforward to implement, but impractical for automata with large numbers of ε-moves, as commonly arise in [natural language processing][22] application.[`[5]`][17]

2. During the powerset computation, compute the ε-closure ![f1][20] of each state q that is considered by the algorithm (and cache the result).

3. During the powerset computation, compute the ε-closure ![f2][21] of each subset of states Q'' that is considered by the algorithm, and add its elements to Q''.


### Multiple initial states

If NFAs are defined to allow for multiply initial states,[`[7]`][23] the initial state of the corresponding DFA is the set of all initial states of the NFA, or (if the NFA also has ε-moves) the set of all states reachable from initial states by ε-moves.


-------------------------
## Example

The NFA below has four states; state 1 is initial, and states 3 and 4 are accepting. Its alphabet consists of the two symbols 0 and 1, and it has ε-moves.

<div align="center">
![NFA-powerset-construction-example][24]
</div>

The initial state of the DFA constructed from this NFA is the set of all NFA states that are reachable from state 1 by ε-moves; that is, it is the set `{1,2,3}`. A transition from `{1,2,3}` by input symbol 0 must follow either the arrow from state 1 to state 2, or the arrow from state 3 to state 4. Additionally, neither state 2 nor state 4 have outgoing ε-moves. Therefore, `T({1,2,3},0) = {2,4}`, and by the same reasoning the full DFA constructed from the NFA is as shown below.

<div align="center">
![DFA-powerset-construction-example][25]
</div>

As can be seen in this example, there are five states reachable from the start state of the DFA; the remaining 11 sets in the powerset of the set of NFA states are not reachable.


-------------------------
## Complexity

Because the DFA states consist of sets of NFA states, an `n-state` NFA may be converted to a DFA with at most `2^n` states.[`[2]`][11] For every `n`, there exist `n-state` NFAs such that every subset of states is reachable from the initial subset, so that the converted DFA has exactly `2^n` states, giving `Θ(2n)` [worst-case][27] time complexity.[`[8]`][26] A simple example requiring nearly this many states is the language of strings over the alphabet `{0,1}` in which there are at least n characters, the nth from last of which is 1. It can be represented by an `(n + 1)-state` NFA, but it requires `2^n` DFA states, one for each `n-character` suffix of the input; cf. picture for `n=4`.[`[4]`][15]

-------------------------
## Application

This is a sample NFA file:
	
	a b
	3  
	q1
	q0 q1
	q0 a q1
	q1 b  q0 q1 q2
	q1 a q2
	q2 b q3
	q7 b q9
	
Import this file and then you must see this result:

	∑ = {a, b}
	Vertex Name = {q0, q1, q2, q3, q4}
	Final Vertex Name = {q1 , q2}
	All Vector : 
						q0  Arrow(a)  q1
						q0  Arrow(b)  q2
						q1  Arrow(a)  q3
						q1  Arrow(b)  q2
						q2  Arrow(a)  q1
						q2  Arrow(b)  q2
						q3  Arrow(a)  q4
						q3  Arrow(b)  q4
						q4  Arrow(a)  q4
						q4  Arrow(b)  q4
						
And if you click on Draw DFA Graph, then this form viewed:

<div align="center">
![dfa][28]
</div>

-------------------------
[0]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/screen.png
[1]: https://en.wikipedia.org/wiki/Nondeterministic_finite_automaton	
[2]: https://en.wikipedia.org/wiki/Deterministic_finite_automaton
[3]: https://en.wikipedia.org/wiki/Theory_of_computation
[4]: https://en.wikipedia.org/wiki/Automata_theory
[5]: https://en.wikipedia.org/wiki/Automata_construction
[6]: https://en.wikipedia.org/wiki/Formal_language
[7]: https://en.wikipedia.org/wiki/Michael_O._Rabin
[8]: https://en.wikipedia.org/wiki/Dana_Scott
[9]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-1
[10]: https://en.wikipedia.org/wiki/Substring#Prefix
[11]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-sipser-2
[12]: https://en.wikipedia.org/wiki/Tuple
[13]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-hu-3
[14]: https://en.wikipedia.org/wiki/Power_set
[15]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-schneider-4
[16]: https://en.wikipedia.org/wiki/Reflexive_transitive_closure
[17]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-vannoord-5 
[18]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-6
[19]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/LogoNFA-DFA.png
[20]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f1.png
[21]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f2.png
[22]: https://en.wikipedia.org/wiki/Natural_language_processing
[23]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-7
[24]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/NFA-powerset-construction-example.svg.png
[25]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/DFA-powerset-construction-example.svg.png
[26]: https://en.wikipedia.org/w/index.php?title=Powerset_construction&redirect=no#cite_note-8
[27]: https://en.wikipedia.org/wiki/Worst-case_complexity
[28]: http://resources.xomorod.com/web-applications/products/images/NFA2DFA/dfa.png', CAST(0xF62F0B00 AS Date), N'https://github.com/Behzadkhosravifar/NFA2DFA', 39, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (3, 1, N'62dd0c2c-9094-482b-afa2-56a56cdcd736', N'Room-3D', N'The 3D Room designed in DirectX by full effective subjects.', N'The 3D Room designed in DirectX by full effective subjects.

<div align="center">

![sample](https://raw.githubusercontent.com/Behzadkhosravifar/Room-3D/master/img/sample.jpg)

</div>', CAST(0xE9300B00 AS Date), N'https://github.com/Behzadkhosravifar/Room-3D', 36, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (3, 2, N'62dd0c2c-9094-482b-afa2-56a56cdcd736', N'اتاق سه بعدی', N'The 3D Room designed in DirectX by full effective subjects.', N'The 3D Room designed in DirectX by full effective subjects.

<div align="center">

![sample](https://raw.githubusercontent.com/Behzadkhosravifar/Room-3D/master/img/sample.jpg)

</div>', CAST(0xE9300B00 AS Date), N'https://github.com/Behzadkhosravifar/Room-3D', 36, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (4, 1, N'8169aab3-3c71-4102-9e42-5884e1d8cc41', N'8 Queen', N'8 Queen Puzzle application', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/pc5fdjxbn6968oyt?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/8queen)
</div>

--------------------------------

8 Queen Puzzle application for WinFrom


<br/>

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/8Queen/appScreen.jpg)
</div>', CAST(0x6E2C0B00 AS Date), N'https://github.com/Behzadkhosravifar/8Queen', 40, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (4, 2, N'8169aab3-3c71-4102-9e42-5884e1d8cc41', N'8 وزیر', N'8 Queen Puzzle application', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/pc5fdjxbn6968oyt?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/8queen)
</div>

--------------------------------

8 Queen Puzzle application for WinFrom


<br/>

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/8Queen/appScreen.jpg)
</div>', CAST(0x6E2C0B00 AS Date), N'https://github.com/Behzadkhosravifar/8Queen', 40, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (5, 1, N'534f0928-d944-414e-b68b-5a0bc2d9e015', N'Fox Robbit', N'Fox Rabbit implemented by Fuzzy Logic algorithm', N'<div align="center">

Fox Rabbit implemented by Fuzzy Logic algorithm

![icon](http://resources.xomorod.com/web-applications/products/images/FoxRabbit/ioan-dzitac-fuzzy-logic.jpg)

<div align="center">', CAST(0x42320B00 AS Date), N'https://github.com/Behzadkhosravifar/FoxRabbit', 24, 6, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (5, 2, N'534f0928-d944-414e-b68b-5a0bc2d9e015', N'منطق فازی در تعقیب روباه و خرگوش', N'Fox Rabbit implemented by Fuzzy Logic algorithm', N'<div align="center">

Fox Rabbit implemented by Fuzzy Logic algorithm

![icon](http://resources.xomorod.com/web-applications/products/images/FoxRabbit/ioan-dzitac-fuzzy-logic.jpg)

<div align="center">', CAST(0x42320B00 AS Date), N'https://github.com/Behzadkhosravifar/FoxRabbit', 24, 6, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (6, 1, N'c1095b18-93d2-4689-89bf-5bc30b14f25e', N'Sudoku 9×9', N'Sudoku 9×9 puzzle application', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/7742cq7k7pfydwat?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/sudoku)
</div>

--------------------

Sudoku 9×9 puzzle application designed in C# winForm.

<div align="center">
![First Capture](http://resources.xomorod.com/web-applications/products/images/Sudoku9/appScreenShut.png)
</div>', CAST(0x162F0B00 AS Date), N'https://github.com/Behzadkhosravifar/Sudoku#sudoku-99', 34, 2, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (6, 2, N'c1095b18-93d2-4689-89bf-5bc30b14f25e', N'سودوکو 9*9', N'Sudoku 9×9 puzzle application', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/7742cq7k7pfydwat?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/sudoku)
</div>

--------------------

Sudoku 9×9 puzzle application designed in C# winForm.

<div align="center">
![First Capture](http://resources.xomorod.com/web-applications/products/images/Sudoku9/appScreenShut.png)
</div>', CAST(0x162F0B00 AS Date), N'https://github.com/Behzadkhosravifar/Sudoku#sudoku-99', 34, 2, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (7, 1, N'addcbfed-6296-42a4-933b-5c9fff21451d', N'Ping Server', N'Ping an address in a periodic time to know your internet is on or off. Or for another ping jobs.', N'# [PingServer](https://github.com/Behzadkhosravifar/PingServer)

--------------------
[![Build status](https://ci.appveyor.com/api/projects/status/9kxoig7qqna1yypq?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/pingserver)

Ping an address in a periodic time to know your internet is on or off. Or for another ping jobs...

--------------------------------
### How To Use The Examples

Before running app, set the host URL like this:

![before](https://raw.githubusercontent.com/Behzadkhosravifar/PingServer/master/img/before.png)


and then click on ping. When the server is not response then app being like this:

![after](https://raw.githubusercontent.com/Behzadkhosravifar/PingServer/master/img/afterOff.png)

* When you minimize the application, the app will going to System try mode and hidden from taskbar.

--------------------------
### LICENSE INFORMATION      [![OSI-Approved-License-100x137.png](http://opensource.org/trademarks/opensource/OSI-Approved-License-100x137.png)](http://opensource.org/licenses/GPL-3.0.html)

This software is open source, licensed under the GNU General Public License, Version 3.0.
See [GPL-3.0](http://opensource.org/licenses/GPL-3.0.html) for details.
This Class Library creates a way of handling structured exception handling,
inheriting from the Exception class gives us access to many method
we wouldn''t otherwise have access to
                  
Copyright (C) 2015-2016 [Behzad Khosravifar](mailto:Behzad.Khosravifar@Gmail.com)

This program published by the Free Software Foundation,
either version 1.0.1 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.', CAST(0x2F370B00 AS Date), N'https://github.com/Behzadkhosravifar/PingServer', 37, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (7, 2, N'addcbfed-6296-42a4-933b-5c9fff21451d', N'پینگ سرور', N'Ping an address in a periodic time to know your internet is on or off. Or for another ping jobs.', N'# [PingServer](https://github.com/Behzadkhosravifar/PingServer)

--------------------
[![Build status](https://ci.appveyor.com/api/projects/status/9kxoig7qqna1yypq?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/pingserver)

Ping an address in a periodic time to know your internet is on or off. Or for another ping jobs...

--------------------------------
### How To Use The Examples

Before running app, set the host URL like this:

![before](https://raw.githubusercontent.com/Behzadkhosravifar/PingServer/master/img/before.png)


and then click on ping. When the server is not response then app being like this:

![after](https://raw.githubusercontent.com/Behzadkhosravifar/PingServer/master/img/afterOff.png)

* When you minimize the application, the app will going to System try mode and hidden from taskbar.

--------------------------
### LICENSE INFORMATION      [![OSI-Approved-License-100x137.png](http://opensource.org/trademarks/opensource/OSI-Approved-License-100x137.png)](http://opensource.org/licenses/GPL-3.0.html)

This software is open source, licensed under the GNU General Public License, Version 3.0.
See [GPL-3.0](http://opensource.org/licenses/GPL-3.0.html) for details.
This Class Library creates a way of handling structured exception handling,
inheriting from the Exception class gives us access to many method
we wouldn''t otherwise have access to
                  
Copyright (C) 2015-2016 [Behzad Khosravifar](mailto:Behzad.Khosravifar@Gmail.com)

This program published by the Free Software Foundation,
either version 1.0.1 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.', CAST(0x2F370B00 AS Date), N'https://github.com/Behzadkhosravifar/PingServer', 37, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (8, 1, N'02d7282c-f0a4-4320-aae0-695113a73f24', N'WHOis', N'Whois Online Domain Database for check several domains are reserved or not', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/t1k1cklv1q6ndymg?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/whois)
</div>

----------------------

Whois **several domains** to know are reserved or not!

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/WHOis/screenshut.png)
</div>

Click on `Save Whois Result` to export whois data like below text file:


|│|  Domain		|│|  .com        |│|  .net         |│|  .ir  |│|                	
|-|:------------|-|:-------------|-|:--------------|-|:------|-|
|│|  Aada		|│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aalia		|│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aaliyah    |│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aanisah    |│|  Reserved    |│|  Free         |│|  Free |│|                  	
|│|  Abalina    |│|  Reserved    |│|  Free         |│|  Free |│|           
|│|  Abbetina   |│|  Free        |│|  Free         |│|  Free |│|           
|│|  Abbie      |│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Abbigail   |│|  Reserved    |│|  Reserved     |│|  Free |│|           
', CAST(0x8C3A0B00 AS Date), N'https://github.com/Behzadkhosravifar/WHOis', 22, 5, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (8, 2, N'02d7282c-f0a4-4320-aae0-695113a73f24', N'چک کردن رزرو دامنه ها', N'Whois Online Domain Database for check several domains are reserved or not', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/t1k1cklv1q6ndymg?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/whois)
</div>

----------------------

Whois **several domains** to know are reserved or not!

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/WHOis/screenshut.png)
</div>

Click on `Save Whois Result` to export whois data like below text file:


|│|  Domain		|│|  .com        |│|  .net         |│|  .ir  |│|                	
|-|:------------|-|:-------------|-|:--------------|-|:------|-|
|│|  Aada		|│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aalia		|│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aaliyah    |│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Aanisah    |│|  Reserved    |│|  Free         |│|  Free |│|                  	
|│|  Abalina    |│|  Reserved    |│|  Free         |│|  Free |│|           
|│|  Abbetina   |│|  Free        |│|  Free         |│|  Free |│|           
|│|  Abbie      |│|  Reserved    |│|  Reserved     |│|  Free |│|           
|│|  Abbigail   |│|  Reserved    |│|  Reserved     |│|  Free |│|           
', CAST(0x8C3A0B00 AS Date), N'https://github.com/Behzadkhosravifar/WHOis', 22, 5, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (9, 1, N'89cd9b41-59df-42b4-b1a1-747102c70afa', N'Blur MessageBox', N'The MessageBox for WPF and WinForms application by ability to blurring that parent form', N'# BlurMessageBox
The MessageBox form for WPF and WinForms application by ability to blurring that parent form

![ScreenShot.png](https://raw.githubusercontent.com/Behzadkhosravifar/BlurMessageBox/master/image/ScreenShot.PNG)', CAST(0x78390B00 AS Date), N'https://github.com/Behzadkhosravifar/BlurMessageBox', 30, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (9, 2, N'89cd9b41-59df-42b4-b1a1-747102c70afa', N'پنجره پیغام', N'The MessageBox for WPF and WinForms application by ability to blurring that parent form', N'# BlurMessageBox
The MessageBox form for WPF and WinForms application by ability to blurring that parent form

![ScreenShot.png](https://raw.githubusercontent.com/Behzadkhosravifar/BlurMessageBox/master/image/ScreenShot.PNG)', CAST(0x78390B00 AS Date), N'https://github.com/Behzadkhosravifar/BlurMessageBox', 30, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (10, 1, N'1464fd98-8cef-4a76-b52a-9f2de053d1f9', N'Snipping Multiple Screen', N'Snipping Multiple Screen is a WPF application to capture many screen shot and merging that''s to a picture and save it for you on Windows.', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/3ysq6ujt1lcmll26?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/snippingmultiplescreen)
</div>

-------------------------

Snipping Multiple Screen is a WPF application to capture many screen shot and merging that''s to a picture and save it for you on Windows.

--------------------------------
### How To Use The Examples

First capture your snapshuts from display screen:

<div align="center">
![First Capture](http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppScreenShot.jpg)
</div>

<br/>

After save your output is like this:

<div align="center">
![After Save](http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppOutput.png)
</div>', CAST(0xDA320B00 AS Date), N'https://github.com/Behzadkhosravifar/SnippingMultipleScreen', 27, 4, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (10, 2, N'1464fd98-8cef-4a76-b52a-9f2de053d1f9', N'برش متعدد از دسکتاپ', N'Snipping Multiple Screen is a WPF application to capture many screen shot and merging that''s to a picture and save it for you on Windows.', N'<div align="center">
[![Build status](https://ci.appveyor.com/api/projects/status/3ysq6ujt1lcmll26?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/snippingmultiplescreen)
</div>

-------------------------

Snipping Multiple Screen is a WPF application to capture many screen shot and merging that''s to a picture and save it for you on Windows.

--------------------------------
### How To Use The Examples

First capture your snapshuts from display screen:

<div align="center">
![First Capture](http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppScreenShot.jpg)
</div>

<br/>

After save your output is like this:

<div align="center">
![After Save](http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppOutput.png)
</div>', CAST(0xDA320B00 AS Date), N'https://github.com/Behzadkhosravifar/SnippingMultipleScreen', 27, 4, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (11, 1, N'036f9439-c8f4-4ae1-b176-a78661fc78f0', N'Tic Tac Toe', N'Tic Tac Toe puzzle application', N'<div align="center">
![ttt](http://resources.xomorod.com/web-applications/products/images/TicTacToe/TicTacToe.png)

<br/>

[![Build status](https://ci.appveyor.com/api/projects/status/x9jsv7f99yarp1tg?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/tictactoe)
</div>

--------------------


Tic Tac Toe puzzle application, designed in C# WinForm

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/TicTacToe/screenshut.jpg)
</div>', CAST(0x34300B00 AS Date), N'https://github.com/Behzadkhosravifar/TicTacToe', 32, 3, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (11, 2, N'036f9439-c8f4-4ae1-b176-a78661fc78f0', N'تیک تاک تو', N'Tic Tac Toe puzzle application', N'<div align="center">
![ttt](http://resources.xomorod.com/web-applications/products/images/TicTacToe/TicTacToe.png)

<br/>

[![Build status](https://ci.appveyor.com/api/projects/status/x9jsv7f99yarp1tg?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/tictactoe)
</div>

--------------------


Tic Tac Toe puzzle application, designed in C# WinForm

<div align="center">
![Capture](http://resources.xomorod.com/web-applications/products/images/TicTacToe/screenshut.jpg)
</div>', CAST(0x34300B00 AS Date), N'https://github.com/Behzadkhosravifar/TicTacToe', 32, 3, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (12, 1, N'c062ff5b-9fc3-4236-890c-c207b89efc0e', N'Make Class Schedule', N'Make university class schedule by Parallel Genetic Algorithm', N'<div align="center">

[![Make Class Schedule][4]][1]

<br/>

[![Build status](https://ci.appveyor.com/api/projects/status/4cjm8ir7bswf6nse?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/makeclassschedule)

</div>

--------------------

### Welcome

Thank you for choosing Make Class Schedule ! <br/>
Make Class Schedule is one of those NP hard problems. The problem can be solved using a heuristic search algorithm to find the optimal solution, but it only works for simple cases. For more complex inputs and requirements, finding a considerably good solution can take a while, or it may be impossible. This is where genetic algorithms come in to the game. <br/>
In this article, I assume that you are familiar with the basic concepts of genetic algorithms, and I won''t describe them in detail because it has been done so many times before.
When you make a class schedule, you must take into consideration many requirements (number of professors, students, classes and classrooms, size of classroom, laboratory equipment in classroom, and many others). These requirements can be divided into several groups by their importance. Hard requirements (if you break one of these, then the schedule is infeasible):

* A class can be placed only in a spare classroom.
* No professor or student group can have more then one class at a time.
* A classroom must have enough seats to accommodate all students.
* To place a class in a classroom, the classroom must have laboratory equipment (computers, in our case) if the class requires it.

Some soft requirements (can be broken, but the schedule is still feasible):

* Preferred time of class by professors.
* Preferred classroom by professors.
* Distribution (in time or space) of classes for student groups or professors.

Hard and soft requirements, of course, depend on the situation.


**Algorithm**

The genetic algorithm is fairly simple. For each generation, it performs two basic operations:

1. Randomly selects N pairs of parents from the current population and produces N new chromosomes by performing a crossover operation on the pair of parents.
2. Randomly selects N chromosomes from the current population and replaces them with new ones. The algorithm doesn''t select chromosomes for replacement if it is among the best chromosomes in the population.

And, these two operations are repeated until the best chromosome reaches a fitness value equal to 1 (meaning that all classes in the schedule meet the requirement). As mentioned before, the genetic algorithm keeps track of the M best chromosomes in the population, and guarantees that they are not going to be replaced while they are among the best chromosomes.

Application main screen:

<div align="center">
[![MakeClassSchedule.jpg][3]](https://github.com/Behzadkhosravifar/MakeClassSchedule/wiki/Welcome-to-the-Make-Class-Schedule)
</div>

--------------------------------
### For More Information

### [Read Make Class Schedule WiKi][2]

[1]: http://behzadkhosravifar.github.io/MakeClassSchedule/
[2]: https://github.com/Behzadkhosravifar/MakeClassSchedule/wiki/Welcome-to-the-Make-Class-Schedule
[3]: http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/MakeClassSchedule.jpg
[4]: http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/HelpHeader.png', CAST(0xEA320B00 AS Date), N'https://github.com/Behzadkhosravifar/MakeClassSchedule', 2, 9.5, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (12, 2, N'c062ff5b-9fc3-4236-890c-c207b89efc0e', N'زمانبندی کلاس های دانشگاه', N'Make university class schedule by Parallel Genetic Algorithm', N'<div align="center">

[![Make Class Schedule][4]][1]

<br/>

[![Build status](https://ci.appveyor.com/api/projects/status/4cjm8ir7bswf6nse?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/makeclassschedule)

</div>

--------------------

### Welcome

Thank you for choosing Make Class Schedule ! <br/>
Make Class Schedule is one of those NP hard problems. The problem can be solved using a heuristic search algorithm to find the optimal solution, but it only works for simple cases. For more complex inputs and requirements, finding a considerably good solution can take a while, or it may be impossible. This is where genetic algorithms come in to the game. <br/>
In this article, I assume that you are familiar with the basic concepts of genetic algorithms, and I won''t describe them in detail because it has been done so many times before.
When you make a class schedule, you must take into consideration many requirements (number of professors, students, classes and classrooms, size of classroom, laboratory equipment in classroom, and many others). These requirements can be divided into several groups by their importance. Hard requirements (if you break one of these, then the schedule is infeasible):

* A class can be placed only in a spare classroom.
* No professor or student group can have more then one class at a time.
* A classroom must have enough seats to accommodate all students.
* To place a class in a classroom, the classroom must have laboratory equipment (computers, in our case) if the class requires it.

Some soft requirements (can be broken, but the schedule is still feasible):

* Preferred time of class by professors.
* Preferred classroom by professors.
* Distribution (in time or space) of classes for student groups or professors.

Hard and soft requirements, of course, depend on the situation.


**Algorithm**

The genetic algorithm is fairly simple. For each generation, it performs two basic operations:

1. Randomly selects N pairs of parents from the current population and produces N new chromosomes by performing a crossover operation on the pair of parents.
2. Randomly selects N chromosomes from the current population and replaces them with new ones. The algorithm doesn''t select chromosomes for replacement if it is among the best chromosomes in the population.

And, these two operations are repeated until the best chromosome reaches a fitness value equal to 1 (meaning that all classes in the schedule meet the requirement). As mentioned before, the genetic algorithm keeps track of the M best chromosomes in the population, and guarantees that they are not going to be replaced while they are among the best chromosomes.

Application main screen:

<div align="center">
[![MakeClassSchedule.jpg][3]](https://github.com/Behzadkhosravifar/MakeClassSchedule/wiki/Welcome-to-the-Make-Class-Schedule)
</div>

--------------------------------
### For More Information

### [Read Make Class Schedule WiKi][2]

[1]: http://behzadkhosravifar.github.io/MakeClassSchedule/
[2]: https://github.com/Behzadkhosravifar/MakeClassSchedule/wiki/Welcome-to-the-Make-Class-Schedule
[3]: http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/MakeClassSchedule.jpg
[4]: http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/HelpHeader.png', CAST(0xEA320B00 AS Date), N'https://github.com/Behzadkhosravifar/MakeClassSchedule', 2, 9.5, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (13, 1, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'TSP', N'Traveling Salesman Problem Using Parallel Genetic Algorithms', N'<div align="center">

[![TSP](https://raw.githubusercontent.com/Behzadkhosravifar/TSP/master/src/TSP/Netclear.ico)][0]


<h2>[Traveling Salesman Problem (TSP)][0]</h2>

[![Build status](https://ci.appveyor.com/api/projects/status/rgk7q0cpuip0cbxy?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/tsp)

</div>

------------------------

Travelling salesman problem (**TSP**) has been already mentioned in one of the previous chapters. To repeat it, there are cities and given distances between them.Travelling salesman has to visit all of them, but he does not to travel very much. Task is to find a sequence of cities to minimize travelled distance. In other words, find a minimal Hamiltonian tour in a complete graph of N nodes.

<div align="center">
[![screen](http://resources.xomorod.com/web-applications/products/images/TSP/screenshut.png)][0]
</div>

**Note**:

I do not have any degree in GA so this article can''t be used as GA book or GA tutorial. There aren''t any mathematics nor logic nor algebra about GA. It''s only a programmer''s view on Genetic Algorithms and only example of GA coding. Use it carefully! Any comments and criticism are highly appreciated.

------------------------
### Project Purpose

**`Optimization Single Population Genetic Algorithm in Parallel Computing on TSP Example`**

------------------------
### Abstract

The article investigates the efficiency of the parallel computation of the single population Genetic Algorithm approach on Travelling Salesman Problem examples and multiprocessing systems. For the parallel algorithm design functional decomposition of the parallel application has been made and the manager/workers paradigm is applied. Performance estimation and parallelism profiling have been made on the basis of multiTasking program implementation.

------------------------
### I.	INTRODUCTION

The foundation of **P**arallel **G**enetic **A**lgorithm (**PGA**) is **G**enetic **A**lgorithm (**GA**), which is a class of global, adaptable, and probabilistic search optimization and revolution algorithm gleaned from the model of organic evolution and also simulates the genetics and evolution of biologic population in nature. GA adopts naturally evolutionary model such as selection, crossover, mutation, deletion and transference. Mathematically, this evolutionary process is a typical algorithm to find out the optimal solution via iteration search among multi-element in a **N**on-deterministic **P**olynomial-time (**NP**) set. **S**imple **G**enetic **A**lgorithm (**SGA**) can be defined as `SGA=(M, C, F, o, Ps, Pc, Pm, T)`, where `C` is a fixed bitstring code, `F` is a fitness evaluation function, `M` is an initial population of biologic colony and `Ps`, `Pc`, `Pm` are probabilities of selection, crossover and mutation respectively. 

In solving NP problems by Series GA, a large sample space will increase the length of chromosomes. And this causes to increase in time complexity of the algorithm. `[1]` <br/>
We''ve changed the serial genetic algorithm to be processed in Parallel. Finally, the time complexity is reduced.

The PGA uses two major modifications compared to the genetic algorithm. Firstly, selection for mating is distributed. Individuals live in a 2-D world. Selection of a mate is done by each individual independently in its neighborhood (presented in Fig.1). Secondly, each individual may improve its fitness during its lifetime by e.g. local hill-climbing.

<br/>
<div align="center">

![Figure 1][1]
<br/>
*Figure 1. 	The random search and inherently parallel of genetic algorithm*

</div>

<br/>
The PGA is totally asynchronous, running with maximal efficiency on MIMD (Multiple Instruction, Multiple Data is a technique employed to achieve parallelism in computing) parallel computers. The search strategy of the PGA is based on a small number of active and intelligent individuals, whereas a GA uses a large population of passive individuals. Abstractly, a PGA is a parallel search with information exchange between the individuals in single population. We will investigate the PGA with deceptive problems and for example, implement it on the traveling salesman problem (TSP).

Parallel Computing are widely used nowadays for solving time-consuming problems. The travelling salesman problem is a well known combinatorial problem. `[2]`

The idea of the TSP is to find the shortest tour of a group of cities without visiting any town twice, but, practically, it implies the construction of a Hamiltonian cycle within a weighted fully connected undirected graph. Therefore, this is a problem of combinatorial graph search. The TSP is maybe one of the most explored problems in computer science. The applications of the TSP problem are numerous – in computer wiring, job scheduling, minimizing fuel consumption in aircraft, vehicle routing problem, robot learning, etc. `[3]`

The purpose of this paper is to provide a method in which the genetic algorithm into a parallel algorithm and to be of such issues (NP) in the optimal time by use of parallel processing to solve.


-----------------------------
### II.	RESEARCH

Generally 4 models for implementation of parallel genetic algorithms have been proposed:
*	Single Population Master / Slave (fitness)
*	Single Population Fine-Grained or Cellular PGA
*	Multiple Population (with migration rate)
*	Hierarchical

In all the above methods of the parallel genetic algorithm, the purpose of design optimization in terms of genetics was considered a better answer, not for the computational speed. 
Multiple population GAs are also widely used parallel methods, but they are more complex than single population methods. A key characteristic of multiple-population PGAs is the migration of individuals among sub populations. Each sub population is managed by an independent SGA except that the processors periodically exchange individuals. The computational burden in this size and span causes to reduce the speed of the system. 

Single-population GAs are generally implemented using a master-slave model. In the master-slave model, a single population resides in the master processor and the master processor does the selection, crossover, and mutation; only evaluation of the fitness function is distributed among slave processors. The global single-population master-slave model that we use is illustrated in [Figure 2][2]. A portion of the population is distributed to each slave processor for evaluation of the fitness value of individuals. The master processor also retains a portion of the population so that it can carry out evaluation in parallel with the slave processors. Genetic operations other than evaluation are performed only by the master processor. The master processor assigns a fraction of the population to each slave processor for each generation. `[4]`

<br/>
<div align="center">

![Figure 2][2]
<br/>
*Figure 2. 	Global single-population master-slave PGA. The master stores the population, executes GA operations, and sends subsets of the population to the slaves. Each slave only evaluates the fitness of the individuals in its subpopulation, and sends the fitness value back to master.*

</div>

<br/>
In simpler problems (e.g.: TSP) the division of work between the processors just for evaluation is waste the CPU time and causes to be slower parallel trend of the series it.

In this article, our methodology is so like method of Master/Slave, but with this difference that workers (slaves) in addition to the processing of chromosome fitness, should do the mutation and crossover. Finally new offspring created from worker tasks and put it with a certain formula in manager population array''s place. But to compute the genetic operands on the workers, we need an environment in which the genetic operands are able to work independently of other parts of the algorithm. Therefore, the chromosomes array should be stored globally in master until all worker tasks can use it concurrently.

The manager (master) after making the randomize initial population, perform array to sort according to fitness, then the number of worse chromosomes (according by selection rate) in the array is deleted until allow to do their new children Replacement. Before the placement operates, the number of chromosomes that is to new production and placement, was determinate by the selected function; then by divide the replacement counts on the number of the system processors,  can know how many offspring each worker must produced and finally this parameter with start index of manager array parameters send to worker tasks.

The most important part of our work was done at this stage, the workers must work independently and without reliance threads. And finally the generation process was done completely independently. So with the mutual exclusivity when parents split between workers and produce offspring, thereby increasing the independence of our processes. And just insertion of the produced children in the Global population array (which is located within the master) is in series state. But it can also be kept array as a sorted at any moment. Finally the array was always sorted and sorting algorithm in the manager is not required.

For the parallel algorithm design functional decomposition of the parallel application has been made and the manager/workers paradigm is applied. Performance estimation and parallelism profiling have been made on the basis of multiTasking program implementation. The experimental parallel computer platform is a computer by multi Processors comprising eight workstations (Processor or Computer) communicating via Parent Task (Manager or Network Switch). <br/>
Computation is presented in [Fig.3][3].

<br/>
<div align="center">

![Figure 3][3]
<br/>
*Figure 3. 	The flat parallel model of computing the TSP by genetic algorithm*

</div>

<br/>
The manager process (rank 0) performs all genetic operations for first population and distributes the computational load among the worker processes. It performs the following activities:

1. Initializes population (randomize)
2. Sort chromosomes by fitness value (the chromosome by lowest value is placed on first home of array)
3. Chromosomes elitism and select worst chromosome for delete
4. Define selection probability according chromosome fitness
5. Construction workers to the number of cores for performs the genetic operators the along produce a new generation
6. Wait for complete jobs of all workers
7. Receives the evaluated offspring from workers and save new chromosomes by formula indexed in array
8. Generates new population by combine any received offspring from workers in  array
9. Check termination conditional for cut the loop
10. Prints the computed shortest path

The operations of a worker process are as follows:

1. Performs roulette wheel selection
2. Performs recombination (select 2 points for  crossover)
3. Performs normal random mutation (two cities are chosen and exchanged)
4. Evaluates the fitness of new chromosome
5. Insert offspring from specified start index related


---------------------------
### III.	PARALLELISM PROFILING AND PERFORMANCE BENCHMARKING

The parallel program (Visual C# + .Net 4 MultiTasking) implementation is run in the programming environment of Visual Studio 2010 Parallelism profiling is made for the case of 500 cities. The results of calculations in parallel and in series of three graphs: time-fitness, time-generation, fitness-generation.

Obviously, that communication is quite intensive among the manager and the workers exchanging data about individuals (chromosomes and fitness). The communication transactions are performed via Task and so, the communication latency is very low. Formerly, the main shortcoming of the parallel genetic approach of computing the TSP with the manager/workers algorithmic paradigm is the sequential computation of the genetic operations – selection, mutation and reproduction – by the manager process. But now this operations run on workers.

In evaluating the proposed parallel algorithm with a series algorithm, according to [Figure 4][4] and [Figure 5][5] can be seen that even the fitness  of elite chromosomes in sequential generations have improved faster. Because independence in reproduction processing (parental dissimilarity) the children is the lack of  convergence. The result is improved to reach the desired fitness quickly. Of course given the evaluation figures on the TSP example should be consider that the Fitness is the distance between cities, so how much lower, more efficient and better value.

<br/>

<div align="center">

![Figure 4][4]
<br/>
*Figure 4. 	Compare best fitness of any generation in both state of series and parallel processing.*

</div>

<br/>

<div align="center">

![Figure 5][5]
<br/>
*Figure 5. 	Compare elite chromosome fitness in every moment for both state of series and parallel processing.*

</div>

<br/>

Next harvest of result evaluations accordance by [Figure 6][6] is that the generation produce rates is much faster than the series state.

<br/>

<div align="center">

![Figure 6][6]
<br/>
*Figure 6. 	Compare the number of generations produced in every moment of the series and parallel processing.*

</div>

<br/>

--------------------------
### IV.	CONCLUSIONS

Based on the evaluation and comparison can be proved  that the mutual exclusivity and independence of the workers, the children will not converging. And therefore the optimal solution will be faster. And also undertake all tasks (genetic operations) of master by workers is a causes to increasing the speed of parallel processing. This paper attempts until have the present algorithm provides more parallelism, and  has not exist any series tasks for master.


--------------------------
### REFERENCES

`[1]`	Zh. Shen and Y. Zhao, “Niche Pseudo-Parallel Genetic Algorithms for Path Optimization of Autonomous Mobile Robot - A Specific Application of TSP” unpublished.

`[2]`	J. Hennesy, D. Patterson, Computer Architecture. A Quantative Approach, 3rd

`[3]`	Borovska P., T. Ivanova, H. Salem. Efficient Parallel Computation of the Traveling Salesman Problem on Multicomputer Platform, Proceedings of the International Scientific Conference ‘Computer Science’2004, Sofia, Bulgaria, December 2004, pp. 74-7

`[4]`	Cantú-Paz, Erick. 1998. A survey of parallel genetic algorithms. Calculateurs Paralleles. Vol. 10, No. 2. Paris: Hermes. http://www-illigal.ge.uiuc.edu/publications.php3 (Accessed 18 May 2000).



[0]: https://github.com/Behzadkhosravifar/TSP
[1]: http://resources.xomorod.com/web-applications/products/images/TSP/f1.jpg
[2]: http://resources.xomorod.com/web-applications/products/images/TSP/f2.png
[3]: http://resources.xomorod.com/web-applications/products/images/TSP/f3.jpg
[4]: http://resources.xomorod.com/web-applications/products/images/TSP/f4.jpg
[5]: http://resources.xomorod.com/web-applications/products/images/TSP/f5.jpg
[6]: http://resources.xomorod.com/web-applications/products/images/TSP/f6.jpg', CAST(0x9A310B00 AS Date), N'https://github.com/Behzadkhosravifar/TSP', 4, 9, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (13, 2, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'مشکل فروشنده دوره گرد', N'Traveling Salesman Problem Using Parallel Genetic Algorithms', N'<div align="center">

[![TSP](https://raw.githubusercontent.com/Behzadkhosravifar/TSP/master/src/TSP/Netclear.ico)][0]


<h2>[Traveling Salesman Problem (TSP)][0]</h2>

[![Build status](https://ci.appveyor.com/api/projects/status/rgk7q0cpuip0cbxy?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/tsp)

</div>

------------------------

Travelling salesman problem (**TSP**) has been already mentioned in one of the previous chapters. To repeat it, there are cities and given distances between them.Travelling salesman has to visit all of them, but he does not to travel very much. Task is to find a sequence of cities to minimize travelled distance. In other words, find a minimal Hamiltonian tour in a complete graph of N nodes.

<div align="center">
[![screen](http://resources.xomorod.com/web-applications/products/images/TSP/screenshut.png)][0]
</div>

**Note**:

I do not have any degree in GA so this article can''t be used as GA book or GA tutorial. There aren''t any mathematics nor logic nor algebra about GA. It''s only a programmer''s view on Genetic Algorithms and only example of GA coding. Use it carefully! Any comments and criticism are highly appreciated.

------------------------
### Project Purpose

**`Optimization Single Population Genetic Algorithm in Parallel Computing on TSP Example`**

------------------------
### Abstract

The article investigates the efficiency of the parallel computation of the single population Genetic Algorithm approach on Travelling Salesman Problem examples and multiprocessing systems. For the parallel algorithm design functional decomposition of the parallel application has been made and the manager/workers paradigm is applied. Performance estimation and parallelism profiling have been made on the basis of multiTasking program implementation.

------------------------
### I.	INTRODUCTION

The foundation of **P**arallel **G**enetic **A**lgorithm (**PGA**) is **G**enetic **A**lgorithm (**GA**), which is a class of global, adaptable, and probabilistic search optimization and revolution algorithm gleaned from the model of organic evolution and also simulates the genetics and evolution of biologic population in nature. GA adopts naturally evolutionary model such as selection, crossover, mutation, deletion and transference. Mathematically, this evolutionary process is a typical algorithm to find out the optimal solution via iteration search among multi-element in a **N**on-deterministic **P**olynomial-time (**NP**) set. **S**imple **G**enetic **A**lgorithm (**SGA**) can be defined as `SGA=(M, C, F, o, Ps, Pc, Pm, T)`, where `C` is a fixed bitstring code, `F` is a fitness evaluation function, `M` is an initial population of biologic colony and `Ps`, `Pc`, `Pm` are probabilities of selection, crossover and mutation respectively. 

In solving NP problems by Series GA, a large sample space will increase the length of chromosomes. And this causes to increase in time complexity of the algorithm. `[1]` <br/>
We''ve changed the serial genetic algorithm to be processed in Parallel. Finally, the time complexity is reduced.

The PGA uses two major modifications compared to the genetic algorithm. Firstly, selection for mating is distributed. Individuals live in a 2-D world. Selection of a mate is done by each individual independently in its neighborhood (presented in Fig.1). Secondly, each individual may improve its fitness during its lifetime by e.g. local hill-climbing.

<br/>
<div align="center">

![Figure 1][1]
<br/>
*Figure 1. 	The random search and inherently parallel of genetic algorithm*

</div>

<br/>
The PGA is totally asynchronous, running with maximal efficiency on MIMD (Multiple Instruction, Multiple Data is a technique employed to achieve parallelism in computing) parallel computers. The search strategy of the PGA is based on a small number of active and intelligent individuals, whereas a GA uses a large population of passive individuals. Abstractly, a PGA is a parallel search with information exchange between the individuals in single population. We will investigate the PGA with deceptive problems and for example, implement it on the traveling salesman problem (TSP).

Parallel Computing are widely used nowadays for solving time-consuming problems. The travelling salesman problem is a well known combinatorial problem. `[2]`

The idea of the TSP is to find the shortest tour of a group of cities without visiting any town twice, but, practically, it implies the construction of a Hamiltonian cycle within a weighted fully connected undirected graph. Therefore, this is a problem of combinatorial graph search. The TSP is maybe one of the most explored problems in computer science. The applications of the TSP problem are numerous – in computer wiring, job scheduling, minimizing fuel consumption in aircraft, vehicle routing problem, robot learning, etc. `[3]`

The purpose of this paper is to provide a method in which the genetic algorithm into a parallel algorithm and to be of such issues (NP) in the optimal time by use of parallel processing to solve.


-----------------------------
### II.	RESEARCH

Generally 4 models for implementation of parallel genetic algorithms have been proposed:
*	Single Population Master / Slave (fitness)
*	Single Population Fine-Grained or Cellular PGA
*	Multiple Population (with migration rate)
*	Hierarchical

In all the above methods of the parallel genetic algorithm, the purpose of design optimization in terms of genetics was considered a better answer, not for the computational speed. 
Multiple population GAs are also widely used parallel methods, but they are more complex than single population methods. A key characteristic of multiple-population PGAs is the migration of individuals among sub populations. Each sub population is managed by an independent SGA except that the processors periodically exchange individuals. The computational burden in this size and span causes to reduce the speed of the system. 

Single-population GAs are generally implemented using a master-slave model. In the master-slave model, a single population resides in the master processor and the master processor does the selection, crossover, and mutation; only evaluation of the fitness function is distributed among slave processors. The global single-population master-slave model that we use is illustrated in [Figure 2][2]. A portion of the population is distributed to each slave processor for evaluation of the fitness value of individuals. The master processor also retains a portion of the population so that it can carry out evaluation in parallel with the slave processors. Genetic operations other than evaluation are performed only by the master processor. The master processor assigns a fraction of the population to each slave processor for each generation. `[4]`

<br/>
<div align="center">

![Figure 2][2]
<br/>
*Figure 2. 	Global single-population master-slave PGA. The master stores the population, executes GA operations, and sends subsets of the population to the slaves. Each slave only evaluates the fitness of the individuals in its subpopulation, and sends the fitness value back to master.*

</div>

<br/>
In simpler problems (e.g.: TSP) the division of work between the processors just for evaluation is waste the CPU time and causes to be slower parallel trend of the series it.

In this article, our methodology is so like method of Master/Slave, but with this difference that workers (slaves) in addition to the processing of chromosome fitness, should do the mutation and crossover. Finally new offspring created from worker tasks and put it with a certain formula in manager population array''s place. But to compute the genetic operands on the workers, we need an environment in which the genetic operands are able to work independently of other parts of the algorithm. Therefore, the chromosomes array should be stored globally in master until all worker tasks can use it concurrently.

The manager (master) after making the randomize initial population, perform array to sort according to fitness, then the number of worse chromosomes (according by selection rate) in the array is deleted until allow to do their new children Replacement. Before the placement operates, the number of chromosomes that is to new production and placement, was determinate by the selected function; then by divide the replacement counts on the number of the system processors,  can know how many offspring each worker must produced and finally this parameter with start index of manager array parameters send to worker tasks.

The most important part of our work was done at this stage, the workers must work independently and without reliance threads. And finally the generation process was done completely independently. So with the mutual exclusivity when parents split between workers and produce offspring, thereby increasing the independence of our processes. And just insertion of the produced children in the Global population array (which is located within the master) is in series state. But it can also be kept array as a sorted at any moment. Finally the array was always sorted and sorting algorithm in the manager is not required.

For the parallel algorithm design functional decomposition of the parallel application has been made and the manager/workers paradigm is applied. Performance estimation and parallelism profiling have been made on the basis of multiTasking program implementation. The experimental parallel computer platform is a computer by multi Processors comprising eight workstations (Processor or Computer) communicating via Parent Task (Manager or Network Switch). <br/>
Computation is presented in [Fig.3][3].

<br/>
<div align="center">

![Figure 3][3]
<br/>
*Figure 3. 	The flat parallel model of computing the TSP by genetic algorithm*

</div>

<br/>
The manager process (rank 0) performs all genetic operations for first population and distributes the computational load among the worker processes. It performs the following activities:

1. Initializes population (randomize)
2. Sort chromosomes by fitness value (the chromosome by lowest value is placed on first home of array)
3. Chromosomes elitism and select worst chromosome for delete
4. Define selection probability according chromosome fitness
5. Construction workers to the number of cores for performs the genetic operators the along produce a new generation
6. Wait for complete jobs of all workers
7. Receives the evaluated offspring from workers and save new chromosomes by formula indexed in array
8. Generates new population by combine any received offspring from workers in  array
9. Check termination conditional for cut the loop
10. Prints the computed shortest path

The operations of a worker process are as follows:

1. Performs roulette wheel selection
2. Performs recombination (select 2 points for  crossover)
3. Performs normal random mutation (two cities are chosen and exchanged)
4. Evaluates the fitness of new chromosome
5. Insert offspring from specified start index related


---------------------------
### III.	PARALLELISM PROFILING AND PERFORMANCE BENCHMARKING

The parallel program (Visual C# + .Net 4 MultiTasking) implementation is run in the programming environment of Visual Studio 2010 Parallelism profiling is made for the case of 500 cities. The results of calculations in parallel and in series of three graphs: time-fitness, time-generation, fitness-generation.

Obviously, that communication is quite intensive among the manager and the workers exchanging data about individuals (chromosomes and fitness). The communication transactions are performed via Task and so, the communication latency is very low. Formerly, the main shortcoming of the parallel genetic approach of computing the TSP with the manager/workers algorithmic paradigm is the sequential computation of the genetic operations – selection, mutation and reproduction – by the manager process. But now this operations run on workers.

In evaluating the proposed parallel algorithm with a series algorithm, according to [Figure 4][4] and [Figure 5][5] can be seen that even the fitness  of elite chromosomes in sequential generations have improved faster. Because independence in reproduction processing (parental dissimilarity) the children is the lack of  convergence. The result is improved to reach the desired fitness quickly. Of course given the evaluation figures on the TSP example should be consider that the Fitness is the distance between cities, so how much lower, more efficient and better value.

<br/>

<div align="center">

![Figure 4][4]
<br/>
*Figure 4. 	Compare best fitness of any generation in both state of series and parallel processing.*

</div>

<br/>

<div align="center">

![Figure 5][5]
<br/>
*Figure 5. 	Compare elite chromosome fitness in every moment for both state of series and parallel processing.*

</div>

<br/>

Next harvest of result evaluations accordance by [Figure 6][6] is that the generation produce rates is much faster than the series state.

<br/>

<div align="center">

![Figure 6][6]
<br/>
*Figure 6. 	Compare the number of generations produced in every moment of the series and parallel processing.*

</div>

<br/>

--------------------------
### IV.	CONCLUSIONS

Based on the evaluation and comparison can be proved  that the mutual exclusivity and independence of the workers, the children will not converging. And therefore the optimal solution will be faster. And also undertake all tasks (genetic operations) of master by workers is a causes to increasing the speed of parallel processing. This paper attempts until have the present algorithm provides more parallelism, and  has not exist any series tasks for master.


--------------------------
### REFERENCES

`[1]`	Zh. Shen and Y. Zhao, “Niche Pseudo-Parallel Genetic Algorithms for Path Optimization of Autonomous Mobile Robot - A Specific Application of TSP” unpublished.

`[2]`	J. Hennesy, D. Patterson, Computer Architecture. A Quantative Approach, 3rd

`[3]`	Borovska P., T. Ivanova, H. Salem. Efficient Parallel Computation of the Traveling Salesman Problem on Multicomputer Platform, Proceedings of the International Scientific Conference ‘Computer Science’2004, Sofia, Bulgaria, December 2004, pp. 74-7

`[4]`	Cantú-Paz, Erick. 1998. A survey of parallel genetic algorithms. Calculateurs Paralleles. Vol. 10, No. 2. Paris: Hermes. http://www-illigal.ge.uiuc.edu/publications.php3 (Accessed 18 May 2000).



[0]: https://github.com/Behzadkhosravifar/TSP
[1]: http://resources.xomorod.com/web-applications/products/images/TSP/f1.jpg
[2]: http://resources.xomorod.com/web-applications/products/images/TSP/f2.png
[3]: http://resources.xomorod.com/web-applications/products/images/TSP/f3.jpg
[4]: http://resources.xomorod.com/web-applications/products/images/TSP/f4.jpg
[5]: http://resources.xomorod.com/web-applications/products/images/TSP/f5.jpg
[6]: http://resources.xomorod.com/web-applications/products/images/TSP/f6.jpg', CAST(0x9A310B00 AS Date), N'https://github.com/Behzadkhosravifar/TSP', 4, 9, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (14, 1, N'b612100f-ecde-4c89-959d-dd650fd27ab6', N'Great Maps', N'GMap.NET - Great Maps for Windows Forms & Presentation', N'# Great Maps

GMap.NET - Great Maps for Windows Forms &amp; Presentation

**Forked from [radioman](https://github.com/radioman/greatmaps)**

### Added Features

* Map Print Preview
* Movable Marker Tooltips
* Calculate route in OpenStreetMap ant map on GoogleMap overlayer
* Support Persian language


### Map Print Preview

![screen](https://raw.githubusercontent.com/Behzadkhosravifar/greatmaps/master/Info/screenshut.png)', CAST(0x523A0B00 AS Date), N'https://github.com/Behzadkhosravifar/greatmaps', 25, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (14, 2, N'b612100f-ecde-4c89-959d-dd650fd27ab6', N'نقشه های ماهواره ای با قابلیت چاپ', N'GMap.NET - Great Maps for Windows Forms & Presentation', N'# Great Maps

GMap.NET - Great Maps for Windows Forms &amp; Presentation

**Forked from [radioman](https://github.com/radioman/greatmaps)**

### Added Features

* Map Print Preview
* Movable Marker Tooltips
* Calculate route in OpenStreetMap ant map on GoogleMap overlayer
* Support Persian language


### Map Print Preview

![screen](https://raw.githubusercontent.com/Behzadkhosravifar/greatmaps/master/Info/screenshut.png)', CAST(0x523A0B00 AS Date), N'https://github.com/Behzadkhosravifar/greatmaps', 25, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (15, 1, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'SignalR', N'A reusable win32 API for connect any client to server or each other clients. Send data or code from one client to other clients included.', N'<div align="center">

[![Build status](https://ci.appveyor.com/api/projects/status/qs8hglln9b55nyk4?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/signalr)
[![GitHub license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/Behzadkhosravifar/SignalR/blob/master/LICENSE)
[![GitHub first friendly](https://img.shields.io/badge/first--timers--only-friendly-blue.svg)](http://www.firsttimersonly.com/)

</div>

---------------------------

### What Is This?

A reusable win32 API  for connect any client to server or each other clients. Send data or code from one client to other clients included.

---------------------------
### SignalR Server
If you want to install or unistall a service for signalR server or just run the server without installing, do following commands:

* Install signalR service: <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /i` <br/>
	or <br/>
	`$ SignalR\Solution Items\InstallSignalRService.bat`


* Uninstall signalR service: <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /u` <br/>
	or <br/>
	`$ SignalR\Solution Items\UninstallSignalRService.bat`


* Delete signalR service: <br/>
	`$ SignalR\Solution Items\DeleteSignalRService.bat`


* Execute signalR server (without install service): <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /d` <br/>
	or <br/>
	`$ SignalR\Solution Items\RunServiceOnWPF.bat`

<div align="center">
	![wpfServer](http://resources.xomorod.com/web-applications/products/images/SignalR/wpfServer.PNG)
</div>

--------------------------
### SignalR Clients
A sample project in win32 for present signalR client

<div align="center">
![clients](http://resources.xomorod.com/web-applications/products/images/SignalR/clients.PNG)
</div>

### SignalR Clients Controller
The clients controller in fact is a signalR client, but this project can be controll all signalR clients in network.

For e.x:

<div align="center">
![clientsController](http://resources.xomorod.com/web-applications/products/images/SignalR/clientsController.png)
</div>

In this application you can fetch any events of server from server windows logs by clicking on `Show Server Event Logs`

<div align="center">
![logViewer](http://resources.xomorod.com/web-applications/products/images/SignalR/logViewer.png)
</div>

And by selecting one client in from list you can to control that by this form:
<div align="center">
![ControlUser](http://resources.xomorod.com/web-applications/products/images/SignalR/selectedUserController.png)
</div>

In `Control User` form you can to send a message to selected users or execute an stored procedure on that clients. <br/>
By click on `Custom Procedure` you should see this form:
<div align="center">
![dynamicCodeExec](http://resources.xomorod.com/web-applications/products/images/SignalR/dynamicCodeExec.PNG)
</div>

In `Runtime Dynamic Compiler` form you can type your c# codes to executed on selected users system.

---------------------
### Note

For create your custom projects you must to know this package locations:

Install Nuget packages for server project:

	PM> Install-Package Microsoft.AspNet.SignalR.SelfHost
	PM> Install-Package Microsoft.Owin.Cors

Install Nuget packages for clients project:

	PM> Install-Package Microsoft.AspNet.SignalR.Client', CAST(0x3C3A0B00 AS Date), N'https://github.com/Behzadkhosravifar/SignalR', 15, 8, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (15, 2, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'سیگنال آر', N'A reusable win32 API for connect any client to server or each other clients. Send data or code from one client to other clients included.', N'<div align="center">

[![Build status](https://ci.appveyor.com/api/projects/status/qs8hglln9b55nyk4?svg=true)](https://ci.appveyor.com/project/Behzadkhosravifar/signalr)
[![GitHub license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/Behzadkhosravifar/SignalR/blob/master/LICENSE)
[![GitHub first friendly](https://img.shields.io/badge/first--timers--only-friendly-blue.svg)](http://www.firsttimersonly.com/)

</div>

---------------------------

### What Is This?

A reusable win32 API  for connect any client to server or each other clients. Send data or code from one client to other clients included.

---------------------------
### SignalR Server
If you want to install or unistall a service for signalR server or just run the server without installing, do following commands:

* Install signalR service: <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /i` <br/>
	or <br/>
	`$ SignalR\Solution Items\InstallSignalRService.bat`


* Uninstall signalR service: <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /u` <br/>
	or <br/>
	`$ SignalR\Solution Items\UninstallSignalRService.bat`


* Delete signalR service: <br/>
	`$ SignalR\Solution Items\DeleteSignalRService.bat`


* Execute signalR server (without install service): <br/>
	`$ SignalR\Out\SignalR\Core.Server\SignalRServer.exe /d` <br/>
	or <br/>
	`$ SignalR\Solution Items\RunServiceOnWPF.bat`

<div align="center">
	![wpfServer](http://resources.xomorod.com/web-applications/products/images/SignalR/wpfServer.PNG)
</div>

--------------------------
### SignalR Clients
A sample project in win32 for present signalR client

<div align="center">
![clients](http://resources.xomorod.com/web-applications/products/images/SignalR/clients.PNG)
</div>

### SignalR Clients Controller
The clients controller in fact is a signalR client, but this project can be controll all signalR clients in network.

For e.x:

<div align="center">
![clientsController](http://resources.xomorod.com/web-applications/products/images/SignalR/clientsController.png)
</div>

In this application you can fetch any events of server from server windows logs by clicking on `Show Server Event Logs`

<div align="center">
![logViewer](http://resources.xomorod.com/web-applications/products/images/SignalR/logViewer.png)
</div>

And by selecting one client in from list you can to control that by this form:
<div align="center">
![ControlUser](http://resources.xomorod.com/web-applications/products/images/SignalR/selectedUserController.png)
</div>

In `Control User` form you can to send a message to selected users or execute an stored procedure on that clients. <br/>
By click on `Custom Procedure` you should see this form:
<div align="center">
![dynamicCodeExec](http://resources.xomorod.com/web-applications/products/images/SignalR/dynamicCodeExec.PNG)
</div>

In `Runtime Dynamic Compiler` form you can type your c# codes to executed on selected users system.

---------------------
### Note

For create your custom projects you must to know this package locations:

Install Nuget packages for server project:

	PM> Install-Package Microsoft.AspNet.SignalR.SelfHost
	PM> Install-Package Microsoft.Owin.Cors

Install Nuget packages for clients project:

	PM> Install-Package Microsoft.AspNet.SignalR.Client', CAST(0x3C3A0B00 AS Date), N'https://github.com/Behzadkhosravifar/SignalR', 15, 8, CAST(0 AS Numeric(18, 0)), 1)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (16, 1, N'75ca31a0-544f-4dd3-94bd-b7b395701a5a', N'Self Camera', N'Self Camera ', NULL, CAST(0x0B3B0B00 AS Date), NULL, 50, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (16, 2, N'75ca31a0-544f-4dd3-94bd-b7b395701a5a', N'دوربین سلفی', N'یک برنامه جذاب برای گرفتن عکس های سلفی', NULL, CAST(0xBBC40700 AS Date), NULL, 50, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (17, 1, N'69bc6192-4c3d-4451-a3d7-d73944cabb85', N'XTech', N'xomorod Tech News', NULL, CAST(0x0B3B0B00 AS Date), NULL, 51, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
INSERT [dbo].[Portfolios] ([PortfolioID], [LangID], [Id], [ProjectName], [Summary], [MarkdownDescription], [ModifyDate], [ProjectUrl], [IconId], [Rank], [Price], [IsActive]) VALUES (17, 2, N'69bc6192-4c3d-4451-a3d7-d73944cabb85', N'اکس تکنولوژی', N'اخبار تکنولوژی زمرود', NULL, CAST(0xBBC40700 AS Date), NULL, 51, 0, CAST(0 AS Numeric(18, 0)), 0)
GO
SET IDENTITY_INSERT [dbo].[Resources] ON 

GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (1, N'9f5bcfdc-fe12-4532-bb15-31b8f64e6816', N'ErrorControlSystem.jpg', N'http://resources.xomorod.com/web-applications/products/images/ErrorControlSystem/ErrorControlSystem.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (2, N'c062ff5b-9fc3-4236-890c-c207b89efc0e', N'MakeClassSchedule.jpg', N'http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/MakeClassSchedule.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (3, N'c062ff5b-9fc3-4236-890c-c207b89efc0e', N'HelpHeader.png', N'http://resources.xomorod.com/web-applications/products/images/MakeClassSchedule/HelpHeader.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (4, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'screenshut.png', N'http://resources.xomorod.com/web-applications/products/images/TSP/screenshut.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (5, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'Netclear.png', N'http://resources.xomorod.com/web-applications/products/images/TSP/Netclear.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (6, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f1.jpg', N'http://resources.xomorod.com/web-applications/products/images/TSP/f1.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (7, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f2.png', N'http://resources.xomorod.com/web-applications/products/images/TSP/f2.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (8, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f3.jpg', N'http://resources.xomorod.com/web-applications/products/images/TSP/f3.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (9, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f4.jpg', N'http://resources.xomorod.com/web-applications/products/images/TSP/f4.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (10, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f5.jpg', N'http://resources.xomorod.com/web-applications/products/images/TSP/f5.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (11, N'9bb37f41-1535-40b5-9bc2-c6a7385a2214', N'f6.jpg', N'http://resources.xomorod.com/web-applications/products/images/TSP/f6.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (15, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'logo.jpg', N'http://resources.xomorod.com/web-applications/products/images/SignalR/logo.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (16, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'wpfServer.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/wpfServer.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (17, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'clients.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/clients.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (18, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'clientsController.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/clientsController.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (19, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'dynamicCodeExec.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/dynamicCodeExec.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (20, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'logViewer.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/logViewer.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (21, N'979a6b7b-a6b3-4ddc-bcca-eb6672f0eee1', N'selectedUserController.png', N'http://resources.xomorod.com/web-applications/products/images/SignalR/selectedUserController.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (22, N'02d7282c-f0a4-4320-aae0-695113a73f24', N'screenshut.png', N'http://resources.xomorod.com/web-applications/products/images/WHOis/screenshut.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (24, N'534f0928-d944-414e-b68b-5a0bc2d9e015', N'ioan-dzitac-fuzzy-logic.jpg', N'http://resources.xomorod.com/web-applications/products/images/FoxRabbit/ioan-dzitac-fuzzy-logic.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (25, N'b612100f-ecde-4c89-959d-dd650fd27ab6', N'screenshut.png', N'http://resources.xomorod.com/web-applications/products/images/GMap/screenshut.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (27, N'1464fd98-8cef-4a76-b52a-9f2de053d1f9', N'AppScreenShot.jpg', N'http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppScreenShot.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (29, N'1464fd98-8cef-4a76-b52a-9f2de053d1f9', N'AppOutput.png', N'http://resources.xomorod.com/web-applications/products/images/SnippingMultipleScreen/AppOutput.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (30, N'89cd9b41-59df-42b4-b1a1-747102c70afa', N'demo.png', N'http://resources.xomorod.com/web-applications/products/images/BlurMessageBox/demo.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (32, N'036f9439-c8f4-4ae1-b176-a78661fc78f0', N'TicTacToe.png', N'http://resources.xomorod.com/web-applications/products/images/TicTacToe/TicTacToe.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (33, N'036f9439-c8f4-4ae1-b176-a78661fc78f0', N'screenshut.jpg', N'http://resources.xomorod.com/web-applications/products/images/TicTacToe/screenshut.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (34, N'c1095b18-93d2-4689-89bf-5bc30b14f25e', N'appScreenShut.png', N'http://resources.xomorod.com/web-applications/products/images/Sudoku9/appScreenShut.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (36, N'62dd0c2c-9094-482b-afa2-56a56cdcd736', N'sample.jpg', N'http://resources.xomorod.com/web-applications/products/images/Room-3D/sample.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (37, N'addcbfed-6296-42a4-933b-5c9fff21451d', N'before.png', N'http://resources.xomorod.com/web-applications/products/images/PingServer/before.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (38, N'addcbfed-6296-42a4-933b-5c9fff21451d', N'afterOff.png', N'http://resources.xomorod.com/web-applications/products/images/PingServer/afterOff.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (39, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'LogoNFA-DFA.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/LogoNFA-DFA.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (40, N'8169aab3-3c71-4102-9e42-5884e1d8cc41', N'appScreen.jpg', N'http://resources.xomorod.com/web-applications/products/images/8Queen/appScreen.jpg')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (41, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'dfa.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/dfa.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (42, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'screen.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/screen.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (43, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'DFA-powerset-construction-example.svg.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/DFA-powerset-construction-example.svg.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (44, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'f1.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f1.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (45, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'f2.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/f2.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (46, N'cb112470-264f-4e72-922d-419a78b1dcf3', N'NFA-powerset-construction-example.svg.png', N'http://resources.xomorod.com/web-applications/products/images/NFA2DFA/NFA-powerset-construction-example.svg.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (50, N'75ca31a0-544f-4dd3-94bd-b7b395701a5a', N'Self-Camera', N'http://resources.xomorod.com/android/images/Products/SelfCamera/main-logo.png')
GO
INSERT [dbo].[Resources] ([Id], [ElementUniqueId], [ResourceName], [ResourceLink]) VALUES (51, N'69bc6192-4c3d-4451-a3d7-d73944cabb85', N'X-Tech', N'http://resources.xomorod.com/android/images/Products/XTech/main-logo.svg')
GO
SET IDENTITY_INSERT [dbo].[Resources] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (3, N'Administrators', N'Unlimited', NULL)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (4, N'Normal', N'Limited', 8)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (5, N'Guest', N'Limited', 4)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (6, N'BlackList', N'Blocked', 4)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (7, N'Lost', N'IsNotActive', 4)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (8, N'FullAccess', N'Limited', 3)
GO
INSERT [dbo].[Roles] ([RoleID], [Role], [RoleType], [ParentRoleId]) VALUES (9, N'GoldUser', N'Limited', 8)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (1, 1, N'Software', 11, N'Software', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (1, 2, N'نرم افزار', 11, N'نرم افزار', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (2, 1, N'Business', 21, N'Business', 25, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (2, 2, N'تجارت', 21, N'تجارت', 25, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (3, 1, N'Android', 11, N'Android', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (3, 2, N'اندروید', 11, N'اندروید', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (4, 1, N'Mobile', 11, N'Mobile', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (4, 2, N'موبایل', 11, N'موبایل', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (5, 1, N'Windows', 11, N'Windows', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (5, 2, N'ویندوز', 11, N'ویندوز', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (6, 1, N'Environments', 21, N'Environments', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (6, 2, N'اجتماعی', 21, N'اجتماعی', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (7, 1, N'PC', 11, N'PC', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (7, 2, N'کامپیوتر', 11, N'کامپیوتر', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (8, 1, N'Hardware', 11, N'Hardware', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (8, 2, N'سخت افزار', 11, N'سخت افزار', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (9, 1, N'Web', 11, N'Web', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (9, 2, N'وب', 11, N'وب', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (10, 1, N'Programming', 11, N'Programming', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (10, 2, N'برنامه نویسی', 11, N'برنامه نویسی', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (11, 1, N'Technology', 21, N'Technology', 10, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (11, 2, N'تکنولوژی', 21, N'تکنولوژی', 10, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (12, 1, N'Knowlege', 32, N'Knowlege', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (12, 2, N'دانستنی ها', 32, N'دانستنی ها', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (13, 1, N'New Future', 11, N'New Future', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (13, 2, N'نوع آوری', 11, N'نوع آوری', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (17, 1, N'Electronics', 11, N'Electronics', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (17, 2, N'الکترونیک', 11, N'الکترونیک', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (18, 1, N'Policy', 21, N'Policy', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (18, 2, N'سیاسی', 21, N'سیاسی', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (19, 1, N'Sport', 21, N'Sport', 15, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (19, 2, N'ورزش', 21, N'ورزش', 15, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (20, 1, N'Economics', 21, N'Economics', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (20, 2, N'افتصاد', 21, N'افتصاد', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (21, 1, N'News', 0, N'News', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (21, 2, N'اخبار', 0, N'اخبار', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (25, 1, N'Game', 11, N'Game', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (25, 2, N'بازی', 11, N'بازی', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (27, 1, N'Smart', 11, N'Smart', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (27, 2, N'باهوش', 11, N'باهوش', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (28, 1, N'Security', 11, N'Security', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (28, 2, N'امنیت', 11, N'امنیت', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (29, 1, N'IT', 11, N'IT', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (29, 2, N'مدیریت اطلاعات', 11, N'مدیریت اطلاعات', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (31, 1, N'Network', 11, N'Network', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (31, 2, N'شبکه', 11, N'شبکه', 1000, 0)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (32, 1, N'Learning', 21, N'Learning', 20, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (32, 2, N'آموزشی', 21, N'آموزشی', 20, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (34, 1, N'World', 21, N'View xomorod world news today for international news from Europe, Asia, Africa, the Middle East and the Americas', 30, 1)
GO
INSERT [dbo].[RssCategories] ([CategoryID], [LangID], [Name], [ParentID], [Description], [Order], [IsActive]) VALUES (34, 2, N'جهان', 21, N'اخبار امروز جهان از اروپا، آسیا، آفریقا، خاورمیانه و آمریکا', 30, 1)
GO
SET IDENTITY_INSERT [dbo].[RssContentProviders] ON 

GO
INSERT [dbo].[RssContentProviders] ([ID], [CSS], [JS], [StartMarkup], [EndMarkup]) VALUES (1, NULL, NULL, N'<div class="col-8"><div id="mpu-plus', N'</div></footer>')
GO
SET IDENTITY_INSERT [dbo].[RssContentProviders] OFF
GO
SET IDENTITY_INSERT [dbo].[RssFeeds] ON 

GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (2, N'http://www.cnet.com/news/microsofts-android-alarm-app-wants-you-to-rise-shine-and-selfie/#ftag=CADe34d7bf', N'Microsoft''s Android alarm app wants you to rise, shine and selfie - CNET', N'b06ffd652ecd9a4ba01e9158b0d809f4', N'Microsoft wants to help reluctant sleepyheads wake up in the mornings with clever app-based games.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389083135/u/0/f/645438/c/34938/s/4d10c890/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4d10c890/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/22/0d3ea576-db0c-4098-86bd-50a69a2c5aa8/thumbnail/300x230/1035fb13d2d36bde1ff1217c28a954dd/screen-shot-2016-01-22-at-18-31-35.png', CAST(0x0000A59500000000 AS DateTime), N'Katie Collins', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (3, N'http://www.cnet.com/how-to/add-a-google-photos-shortcut-to-your-android-camera-app/#ftag=CADe34d7bf', N'Add a Google Photos shortcut to your Android camera app - CNET', N'6876cf80df102f1f930f2f551d1f64a0', N'Google Photos has a quick way to jump from your camera UI to your cloud-synced photos and videos. Read on to find out how to enable it.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247388848201/u/0/f/645438/c/34938/s/4d041117/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4d041117/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/09/29/808a7132-4fe5-44c4-9add-60299a2cec7e/thumbnail/300x230/13f69fe810f5b4aa3315b5e13669aa9a/google-event-09292015-google-photos.jpg', CAST(0x0000A59400000000 AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (4, N'http://www.cnet.com/how-to/add-a-to-do-list-to-your-notification-shade-on-android/#ftag=CADe34d7bf', N'Add a to-do list to your notification shade on Android - CNET', N'5131c7a4d7957a186b859cf48f9d6064', N'Collateral will keep the tasks you need to complete in plain sight, giving you a better chance at getting things done.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/a2.htm"><img src="http://da.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/ach.htm"><img src="http://adchoice.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247388119546/u/0/f/645438/c/34938/s/4cddf133/sc/14/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4cddf133/sc/14/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/14/ccb3ae5e-2a18-43dc-8755-63b606762ece/thumbnail/300x230/9d44ee87213740da17dc8794c87f5504/collateral.png', CAST(0x0000A58D00000000 AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (5, N'http://www.cnet.com/how-to/add-a-free-second-number-to-your-phone-with-sideline/#ftag=CADe34d7bf', N'Add a free second number to your phone with Sideline - CNET', N'72ca5dfb79d5ea10897b5ff953b5a89b', N'This free app is perfect for freelancers, small-business owners and others who want two lines but only one phone.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247387515261/u/0/f/645438/c/34938/s/4cbbb341/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4cbbb341/sc/28/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/08/2603edd9-4f87-485e-9018-96142376c893/thumbnail/300x230/14e92fe72f5943c8c74eb5f731631768/sideline-pick-number.jpg', CAST(0x0000A58B00000000 AS DateTime), N'Rick Broida', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (6, N'http://www.cnet.com/how-to/replace-default-contact-photos-on-android-with-micopi/#ftag=CADe34d7bf', N'Replace default contact photos on Android with Micopi - CNET', N'17ba4bb98a2dd4e305209ca1ea2e7ce5', N'​Micopi can generate brightly colored images to replace boring default contact photos.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247387757080/u/0/f/645438/c/34938/s/4cc8f9a3/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4cc8f9a3/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/09/a5538109-f5a5-4c5c-bafb-e4dad9e72c04/thumbnail/300x230/c2f078e58d0cc12bc980dd02d61d61ed/micopi1.png', CAST(0x0000A58A00000000 AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (7, N'http://www.cnet.com/news/android-6-0-marshmallow-still-on-less-than-1-percent-of-android-devices/#ftag=CADe34d7bf', N'Android''s latest version is still hard to come by - CNET', N'df47a0067f2fa5e050450f835cbb2c25', N'Android Marshmallow, the latest flavor of Google''s mobile operating system, launched in October but is still on less than 1 percent of all Android devices.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/a2.htm"><img src="http://da.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/ach.htm"><img src="http://adchoice.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247387289827/u/0/f/645438/c/34938/s/4caf8ff4/sc/23/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4caf8ff4/sc/23/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/08/21/b31e9754-f690-4c87-818c-fc5e2997b231/thumbnail/300x230/cd6491b1c91fa5d6bd560c77df5d02bb/google-android-marshmallow-5.jpg', CAST(0x0000A58500000000 AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (8, N'http://www.cnet.com/news/android-6-0-marshmallow-still-on-less-than-1-of-android-devices/#ftag=CADe34d7bf', N'Android''s latest version still finding users very hard to come by - CNET', N'7e8e6932a8660d25687b34f84e31b21a', N'Android Marshmallow, the latest flavor of Google''s mobile operating system, launched in October but is still on less than 1 percent of all Android devices.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247387286696/u/0/f/645438/c/34938/s/4caf3da9/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4caf3da9/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/08/21/b31e9754-f690-4c87-818c-fc5e2997b231/thumbnail/300x230/cd6491b1c91fa5d6bd560c77df5d02bb/google-android-marshmallow-5.jpg', CAST(0x0000A58500000000 AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (9, N'http://www.cnet.com/pictures/10-tips-for-organizing-gmail/#ftag=CADe34d7bf', N'13 tips for organizing your Gmail - CNET', N'85c4a1ea0a3488f6cfa8f152eae38b14', N'Your inbox is a mess. Here''s how you can fix that.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/a2.htm"><img src="http://da.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/ach.htm"><img src="http://adchoice.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247386687848/u/0/f/645438/c/34938/s/4c8e84c5/sc/36/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c8e84c5/sc/36/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2014/12/28/2b8712bc-d5c4-48b5-8e03-7cd2e18e74b7/thumbnail/300x230/0e39ffba9868c1f2b65e23c93ce20440/dsc0217edited.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Sarah Jacobsson Purewal', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (10, N'http://www.cnet.com/news/hands-on-with-the-homido-mini-clip-on-vr-glasses/#ftag=CADe34d7bf', N'Hands-on with the Homido Mini clip-on VR glasses - CNET', N'77e91ae085163a1db66610bc10a5cae6', N'Designed for quick-fix VR, this is so much easier to use than Google Cardboard -- but do you get the same virtual-reality experience?<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247386589106/u/0/f/645438/c/34938/s/4c895ca1/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c895ca1/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/12/28/4ae9c312-e4fd-44d7-9877-0c00ebcf0dca/thumbnail/300x230/92f64f578bcb105d2ae3535fb0b9936c/homido-mini.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Rick Broida', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (11, N'http://www.cnet.com/how-to/getting-started-with-your-new-android/#ftag=CADe34d7bf', N'Getting started with your new Android phone - CNET', N'3fa6da2f16e7896a43310c32bad58999', N'Here''s your guide to the right way to set up your new shiny Android phone or tablet.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/a2.htm"><img src="http://da.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/ach.htm"><img src="http://adchoice.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247386264156/u/0/f/645438/c/34938/s/4c770f2d/sc/23/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c770f2d/sc/23/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2014/12/22/46330971-16c0-4fa8-81d3-57432933da5d/thumbnail/300x230/870a118f35eb78dc52d46c2d4baf0c75/android-phones-8278.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Sarah Mitroff', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (12, N'http://www.cnet.com/news/microsoft-ditches-hey-cortana-voice-feature-for-android-app/#ftag=CADe34d7bf', N'Microsoft drops ''Hey Cortana'' voice launch in Android app - CNET', N'8571b0455bb8e0f9181cbdfb6f77332d', N'The tweak, which Microsoft says is temporary, means that you need to open the voice assistant via a finger tap and that Microsoft loses a competitive edge against Google Now.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247386021748/u/0/f/645438/c/34938/s/4c69703b/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c69703b/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/08/24/d92d5c92-973b-488b-a2c9-c2c17afdaf49/thumbnail/300x230/fe68721c50becdf5d6b660de28a52cc4/cortana-on-android.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (13, N'http://www.cnet.com/news/samsung-unveils-128-gigabyte-version-of-galaxy-note-5/#ftag=CADe34d7bf', N'Samsung bumps up Galaxy Note 5 to 128 gigabytes - CNET', N'061143294a354e5f75a1b33b61f559fe', N'The special edition of the phone is available only in South Korea, though, at least for now.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385669938/u/0/f/645438/c/34938/s/4c562261/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c562261/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/12/18/eef2e6ff-40e7-4106-b9a0-d41b89040016/thumbnail/300x230/128b9d06a04e8235237838129cb49345/galaxy-note5-128gb.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (14, N'http://www.cnet.com/news/google-holiday-sale-cuts-price-on-nexus-6p-phone-by-50/#ftag=CADe34d7bf', N'Google holiday sale cuts Nexus 6P price by $50 - CNET', N'c90e20035c9984cca0adb086e4c899db', N'The deal also throws in free overnight shipping. Plus, Nexus phones aren''t the only items on sale through Google this season.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385537774/u/0/f/645438/c/34938/s/4c4f2388/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c4f2388/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/10/22/75a08bf7-6145-4071-8764-90351aef984f/thumbnail/300x230/b4b1f5bbeaef1c25d518e74f30e87ee9/google-nexus-6p-2069-001.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (15, N'http://www.cnet.com/how-to/how-to-take-screenshots-with-google-now-on-tap/#ftag=CADe34d7bf', N'How to take screenshots with Google Now on Tap - CNET', N'7fa67752aed1600110f9519e3035182e', N'Skip the simultaneous button pressing for screenshots and let Google Now on Tap do the work for you.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385514742/u/0/f/645438/c/34938/s/4c4dea7a/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c4dea7a/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/12/17/fa214ce9-192f-4725-8ab5-f2202a25399f/thumbnail/300x230/90590c1d03579acc9dbc512c04a36ac3/googlenowontap.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (16, N'http://www.cnet.com/how-to/get-the-new-night-light-mode-in-google-play-books/#ftag=CADe34d7bf', N'Get the new Night Light mode in Google Play Books - CNET', N'2004b34d3f8c75bdf54db7077abf79e5', N'Google is introducing a new reading mode to reduce eyestrain during the darker hours of the day.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385317560/u/0/f/645438/c/34938/s/4c4347da/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c4347da/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/12/16/ebe6a729-f119-4afc-8314-3edaadf4d364/thumbnail/300x230/f658c9ae502ce70b87c4ac98be454a90/gbooks-nightlight.png', CAST(0x0000A5990166ADFF AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (17, N'http://www.cnet.com/how-to/how-to-toggle-google-now-on-tap-off-and-on/#ftag=CADe34d7bf', N'How to toggle Google Now on Tap off and on - CNET', N'cdbf80600baa59245852d29f3d027b84', N'Whether you accidentally opted out of the feature and want to enable it, or you want to revert to the old method for taking screenshots, here''s how to toggle the Google Now on Tap setting.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385286534/u/0/f/645438/c/34938/s/4c419bee/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c419bee/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/12/15/86ef2dae-7783-4d24-86e1-851e84b34d2a/thumbnail/300x230/d1cd68c51d061fbe5fdfb15479073c20/googlenowontap.png', CAST(0x0000A5990166ADFF AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (18, N'http://www.cnet.com/how-to/how-to-customize-the-quick-settings-on-android-6-0-marshmallow/#ftag=CADe34d7bf', N'How to customize the quick settings on Android 6.0 Marshmallow - CNET', N'ca38570b5dff2f3cea9f69ba9bd41bf5', N'Learn how to rearrange your quick setting tiles, or even remove the ones you''re not using.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/243660087345/u/0/f/645438/c/34938/s/4b2dce0c/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4b2dce0c/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/09/30/3b372c1e-a7a5-4f5a-8cf1-47f4940fed2d/thumbnail/300x230/69d57f718b2e7357fe1dabb79d7f22d2/android-6-0-marshmallow-easter-egg.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Nicole Cozma', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (19, N'http://www.cnet.com/news/samsung-galaxy-s7-might-sport-pressure-sensitive-display/#ftag=CADe34d7bf', N'Galaxy S7 may sport retina scanner with pressure sensitive display - CNET', N'dcfde82be41a396cb826374b26625172', N'Next year''s version of Samsung''s marquee smartphone could also come with a fast charging port and maybe even a retina scanner, says the Wall Street Journal.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247385149703/u/0/f/645438/c/34938/s/4c3a00a0/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c3a00a0/sc/15/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/09/10/be5477d2-502e-4c47-914b-9fa40ccb5d29/thumbnail/300x230/5e373c384e402df6b05e798474260bcf/samsung-galaxy-s6-galaxy-s6-edge.jpg', CAST(0x0000A5990166ADFF AS DateTime), N'Lance Whitney', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (20, N'http://www.cnet.com/how-to/how-to-listen-and-reply-to-text-messages-hands-free/#ftag=CADe34d7bf', N'How to listen and reply to text messages hands-free - CNET', N'ca2f08f65e4a48ddb4b95fad025d11a8', N'Android has joined iOS in allowing you to hear and answer messages without touching your phone. Here''s how to do it on both platforms.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247384911677/u/0/f/645438/c/34938/s/4c2cd610/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645438/s/4c2cd610/sc/28/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2014/07/25/bac26135-ae18-42b0-bdb6-60d701a3b4d9/thumbnail/300x230/7d202c8110215dd83df7da4a3d6e8105/siri-read-my-messages.png', CAST(0x0000A5990166ADFF AS DateTime), N'Rick Broida', 1, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (21, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a9a3/sc/28/l/0L0Scnet0N0Cnews0Cthe0Ex0Efiles0Ecravecast0Edecades0Ein0Ethe0Emaking0Efinally0Earrives0C0Tftag0FCAD590Aa51e/story01.htm', N'The ''X-Files'' CraveCast decades in the making finally arrives - CNET', N'26a8fe08c2a5b8003161a877403ed6cd', N'It''s been a long, tortuous wait for the new "X-Files" mini-season, which debuted this week. The CraveCast crew digs in to the latest dose of truth, rebooted for 2016, starting at noon PT Tuesday.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389422360/u/173/f/645093/c/34938/s/4d25a9a3/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a9a3/sc/28/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/5e703456-0b37-40fa-b0d5-109cdd8cc6ee/thumbnail/300x230/241fac946af02c7b2e26ca132a5b7e3b/x-lookinyoung.jpg', CAST(0x0000A59900000000 AS DateTime), N'Eric Mack', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (22, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c654/sc/27/l/0L0Scnet0N0Cnews0Cbayonetta0Edevs0Eteenage0Emutant0Eninja0Eturtles0Egame0Eofficially0Erevealed0Ewith0Efirst0Etrailer0C0Tftag0FCAD590Aa51e/story01.htm', N'Bayonetta dev''s Teenage Mutant Ninja Turtles game officially revealed with first trailer - CNET', N'81baf1c972f17bc6250d246e288f052b', N'Watch the Mutants kick butt in Manhattan courtesy of Platinum Games.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/a2.htm"><img src="http://da.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389467233/u/173/f/645093/c/34938/s/4d25c654/sc/27/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c654/sc/27/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/3f01167e-705e-48bd-8793-d611daa113a6/thumbnail/300x230/01e4a2eca02334d162e7e35db2187e5f/2996249-download.png', CAST(0x0000A59900000000 AS DateTime), N'GameSpot Staff', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (23, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c655/sc/27/l/0L0Scnet0N0Cnews0Chomefront0Ethe0Erevolutions0Eco0Eop0Ecampaign0Epromises0Edark0Esouls0Elevels0Eof0Edifficulty0C0Tftag0FCAD590Aa51e/story01.htm', N'Homefront: The Revolution''s co-op campaign promises Dark Souls-levels of difficulty - CNET', N'7e4bb4c52903eb8a5946656ae93b55eb', N'Form a four-man freedom fighter cell and reclaim America with customizable weapons, open-ended tactics, and a free year of DLC.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/a2.htm"><img src="http://da.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389467232/u/173/f/645093/c/34938/s/4d25c655/sc/27/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c655/sc/27/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/aff33405-6ae1-473b-a3cf-97735e7a6558/thumbnail/300x230/7b95f8a3c7ee8bbe2673edfd403ad046/2996243-hftr-co-op-all-media-03.jpg', CAST(0x0000A59900000000 AS DateTime), N'GameSpot Staff', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (24, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c653/sc/27/l/0L0Scnet0N0Cnews0Cdeath0Estar0Eexpansion0Econfirmed0Efor0Estar0Ewars0Ebattlefront0C0Tftag0FCAD590Aa51e/story01.htm', N'Death Star expansion confirmed for Star Wars Battlefront - CNET', N'f2efe5d9705f80abaf8a08f956745d71', N'EA reveals season pass release schedule for all four expansions; publisher also outlines free content updates between January and March.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/a2.htm"><img src="http://da.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389467231/u/173/f/645093/c/34938/s/4d25c653/sc/27/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c653/sc/27/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/f34b76c9-d0a9-4a72-b5c7-822ad90138bd/thumbnail/300x230/bf79463627ac2dbb4041c1c5677ddba3/2996344-1307405454-deaths.jpg', CAST(0x0000A59900000000 AS DateTime), N'GameSpot Staff', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (25, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c651/sc/27/l/0L0Scnet0N0Cnews0Cpsa0Ehalo0E50Efree0Eupdate0Earrives0Ewith0Enew0Emaps0Eweapons0Eand0Emore0C0Tftag0FCAD590Aa51e/story01.htm', N'PSA: Halo 5 free update arrives with new maps, weapons, and more - CNET', N'2cbfe316f6208ebd9bc5fe6e86d2b1a0', N'New maps for Arena and Warzone, as well as Halo 2-era Battle Rifle and Achilles armor set, now available.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/a2.htm"><img src="http://da.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389467230/u/173/f/645093/c/34938/s/4d25c651/sc/27/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c651/sc/27/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/5abe767c-3d58-456e-8311-6fa5f5ae675a/thumbnail/300x230/38d9813d9f6f2053be597563edfc9199/2996367-halo-5-guardians-arena-riptide-serious-business.jpg', CAST(0x0000A59900000000 AS DateTime), N'GameSpot Staff', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (26, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c657/sc/28/l/0L0Scnet0N0Cnews0Cis0Efar0Ecry0Eprimal0Edifferent0Eenough0Efrom0Eits0Epredecessors0C0Tftag0FCAD590Aa51e/story01.htm', N'Is Far Cry Primal different enough from its predecessors? - CNET', N'808709637e6908e3a1492c2a5a178e94', N'With Far Cry Primal, Ubisoft hopes to push the series into the brutal realities of the Stone Age.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389467229/u/173/f/645093/c/34938/s/4d25c657/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25c657/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/decc0875-3de2-4ba1-b5eb-6db15be49d08/thumbnail/300x230/26d5e05c82a39d69c8d8b65a5fd21dbe/2947628-farcryprimalannouncescreen001embargooct69ampst.jpg', CAST(0x0000A59900000000 AS DateTime), N'GameSpot Staff', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (27, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a157/sc/15/l/0L0Scnet0N0Cnews0Cwild0Euber0Eride0Efirm0Ecan0Etrack0Eyour0Edrivers0Ephone0Eto0Everify0Eyour0Ecomplaint0C0Tftag0FCAD590Aa51e/story01.htm', N'Wild Uber ride? Firm can track your driver''s phone to verify your complaint - CNET', N'12a473095409d1eb3c21ffccb5e88ab0', N'Uber is testing a program that lets it check out GPS and accelerometer data from your driver''s smartphone to see just how crazy that ride might''ve been.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/a2.htm"><img src="http://da.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389456879/u/173/f/645093/c/34938/s/4d25a157/sc/15/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a157/sc/15/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/5941c26a-4b7b-4fdd-88be-33626f8de984/thumbnail/300x230/90e378b6d2ed7a6e369b091783949a4a/uberblog700x300safety.jpg', CAST(0x0000A59900000000 AS DateTime), N'Lance Whitney', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (28, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d246704/sc/28/l/0L0Scnet0N0Cnews0Cgopro0Epartners0Ewith0Eperiscope0Eto0Etake0Ethe0Elive0Estream0Eextreme0C0Tftag0FCAD590Aa51e/story01.htm', N'GoPro to turn Twitter into an extreme live-stream video fest - CNET', N'1abf8b467b79b33e64c3bce90be60090', N'Terrifying GoPro footage will soon be coming your way live via Periscope from, say, an icy crevasse in Switzerland.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389401614/u/173/f/645093/c/34938/s/4d246704/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d246704/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/ddfd0058-ace0-4600-9351-44d4dd5f9a36/thumbnail/300x230/5c976afeee52f0058a207881e5d90be8/goprodevice.jpg', CAST(0x0000A59900000000 AS DateTime), N'Katie Collins', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (29, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d254413/sc/13/l/0L0Scnet0N0Cnews0Ctwitter0Eappoints0Emarketing0Echief0C0Tftag0FCAD590Aa51e/story01.htm', N'Twitter names its first-ever marketing chief - CNET', N'126eeda69382293d9982f7f961d30365', N'Leslie Berland, who had been at American Express, arrives amid upheaval in Twitter''s executive offices.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/a2.htm"><img src="http://da.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389449667/u/173/f/645093/c/34938/s/4d254413/sc/13/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d254413/sc/13/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/23022c6a-472c-4265-bfd5-bed557612282/thumbnail/300x230/a8c923820c2cdade6e0f6a33988f791a/leslie-berlandtwitter-cmo.jpg', CAST(0x0000A59900000000 AS DateTime), N'Lance Whitney', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (30, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413ba/sc/28/l/0L0Scnet0N0Cnews0Ccan0Eat0Et0Eout0Enetflix0Enetflix0Ewith0Eits0Eown0Evideo0Eservice0C0Tftag0FCAD590Aa51e/story01.htm', N'Can AT&T out-Netflix Netflix with its own video service? - CNET', N'e15e95db8656233423f0f76d171cbdc7', N'The telco giant wants to wed the "TV everywhere" concept with its own mobile service. It could unveil something in the coming days.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389427902/u/173/f/645093/c/34938/s/4d2413ba/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413ba/sc/28/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2014/12/03/5cacf414-7035-422b-b645-309b2b28404e/thumbnail/300x230/1c3cb19deb33c731fe2841c3e85c66e6/img3151.jpg', CAST(0x0000A59900000000 AS DateTime), N'Roger Cheng', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (31, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a9b8/sc/32/l/0L0Scnet0N0Cnews0Cdaredevil0Ephysicist0Ebraves0Eunderwater0Ebullet0Efor0Escience0C0Tftag0FCAD590Aa51e/story01.htm', N'Daredevil physicist braves underwater bullet for science - CNET', N'd13c198af2f51b47ee5e6719e4e2d12c', N'Live vicariously through a bold scientist who uses physics as a shield and stands in front of a live gun in a pool.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/a2.htm"><img src="http://da.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389422358/u/173/f/645093/c/34938/s/4d25a9b8/sc/32/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25a9b8/sc/32/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/66f007e1-7b86-4f55-8361-8621d3b6af40/thumbnail/300x230/84875e2b250ad7bdd58b7f1b402917ef/gun1.jpg', CAST(0x0000A59900000000 AS DateTime), N'Amanda Kooser', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (32, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25440d/sc/28/l/0L0Scnet0N0Croadshow0Cnews0Cwaze0Elyft0Epartnership0C0Tftag0FCAD590Aa51e/story01.htm', N'Waze gets Lyfted, becomes the ride-sharing company''s default navigation app - Roadshow', N'bdce4bc3fe3e17f1b3c4a4ee27493224', N'Between this and the partnership with GM, Lyft appears ready to bring the battle to Uber.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389449669/u/173/f/645093/c/34938/s/4d25440d/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d25440d/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/48f69c41-3fc0-48df-9d9c-70d2676ab4eb/thumbnail/300x230/09ded84d74c1cc393c42ae8a36c62c4d/download.png', CAST(0x0000A59900000000 AS DateTime), N'Andrew Krok', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (33, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d254411/sc/28/l/0L0Scnet0N0Croadshow0Cnews0Cbosch0Eactive0Egas0Epedal0C0Tftag0FCAD590Aa51e/story01.htm', N'Bosch is developing a connected gas pedal with haptic feedback - Roadshow', N'08ef48ad042488eece060e166bc6753f', N'This pedal promises to use haptic feedback toward helping you save fuel while driving.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389449668/u/173/f/645093/c/34938/s/4d254411/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d254411/sc/28/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/043edef7-e66f-4044-be0c-d1263a40747a/thumbnail/300x230/965864f689a69519cc094747e4bbdc0a/boschconnectedmobilityactivegaspedaltechnicaldetailsen-3.jpg', CAST(0x0000A59900000000 AS DateTime), N'Andrew Krok', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (34, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d237e8f/sc/23/l/0L0Scnet0N0Cnews0Camazon0Epayments0Eexec0Erebuffs0Eidea0Eof0Epartnering0Ewith0Epaypal0C0Tftag0FCAD590Aa51e/story01.htm', N'Amazon rebuffs idea of partnering with PayPal - CNET', N'281998cb173184103bda5e7f3e0fb050', N'The e-commerce titan has instead focused on its own online payment method, and says more than 23 million customers have used its Pay With Amazon service.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/a2.htm"><img src="http://da.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389426224/u/173/f/645093/c/34938/s/4d237e8f/sc/23/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d237e8f/sc/23/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2016/01/26/aefe7df0-e9a3-4100-8b2c-d8cdf8ab8d7e/thumbnail/300x230/6432f1f9005ee697ef119985a9247aef/corbis-image.png', CAST(0x0000A59900000000 AS DateTime), N'Ben Fox Rubin', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (35, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413a9/sc/24/l/0L0Scnet0N0Cnews0Cus0Etech0Epros0Egot0Ea0Ehefty0Eraise0Elast0Eyear0C0Tftag0FCAD590Aa51e/story01.htm', N'US tech pros got a hefty raise last year - CNET', N'ef6f009c15c85e36634271d75b568d54', N'The average annual tech salary rose more than 7 percent last year to nearly six figures, according to a new survey.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/a2.htm"><img src="http://da.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389427904/u/173/f/645093/c/34938/s/4d2413a9/sc/24/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413a9/sc/24/mf.gif'' border=''0''/>', N'http://cnet3.cbsistatic.com/hub/i/r/2015/04/19/84395166-9a4a-4258-aad4-592d34b54a81/thumbnail/300x230/7f5a24ae182a9cd4699fa50fe7002d2c/money.jpg', CAST(0x0000A59900000000 AS DateTime), N'Steven Musil', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (36, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d1ff090/sc/28/l/0L0Scnet0N0Cnews0Ctv0Eresolution0Econfusion0E10A80Ap0E2k0Euhd0E4k0Eand0Ewhat0Ethey0Eall0Emean0C0Tftag0FCAD590Aa51e/story01.htm', N'Resolution confusion: What do 2K, 4K, 1080p, UHD all mean? - CNET', N'71759c7b96e80a7e716c89ce96481f98', N'Confused by all the different resolution numbers like 2K, 4K, 1080p, and so on? Here''s what they all mean.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389352607/u/173/f/645093/c/34938/s/4d1ff090/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d1ff090/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/22/d0479d65-f096-471e-8ee1-fe6b37af0b91/thumbnail/300x230/ec2c05f0c8a05acb0a6c59dd6f4fd9a1/resolutions.jpg', CAST(0x0000A59900000000 AS DateTime), N'Geoffrey Morrison', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (37, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413b3/sc/28/l/0L0Scnet0N0Cnews0C70Etwitter0Eaccounts0Eyou0Eshould0Efollow0Efor0Ethe0Esuper0Ebowl0C0Tftag0FCAD590Aa51e/story01.htm', N'7 Twitter accounts you should follow for the Super Bowl - CNET', N'6d5d03d5c35785de809bf551ac70dfdb', N'Sure, you could just talk to the person sitting next to you at the party. But why limit yourself? From Bill Simmons to Shannon Sharpe, these folks will keep you entertained, even if the game doesn''t.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389427903/u/173/f/645093/c/34938/s/4d2413b3/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d2413b3/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/26/1909c424-d84d-4007-8f7c-475088c8842e/thumbnail/300x230/eea2338de9e96c43d1a2f6c6303be885/corbis-42-80799162.jpg', CAST(0x0000A59900000000 AS DateTime), N'Richard Nieva', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (38, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d23af04/sc/28/l/0L0Scnet0N0Cnews0Csprints0Ehalf0Eoff0Epromo0Epays0Eoff0E4910A0A0A0Enew0Ecustomers0C0Tftag0FCAD590Aa51e/story01.htm', N'Sprint''s half-off promo pays off with 491,000 new customers - CNET', N'c6514895f2f0abf4722f433a9f4d8112', N'The nation''s fourth-largest wireless carrier turns heads and gets back on the path to growth thanks to aggressive discounts.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389428550/u/173/f/645093/c/34938/s/4d23af04/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d23af04/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2015/07/20/8add1d3d-3ab8-4f89-929c-57302282b1c0/thumbnail/300x230/c33231fcdaa2c29da6be0aa6bd18a5a9/mejores-celulares-sprint.jpg', CAST(0x0000A59900000000 AS DateTime), N'Roger Cheng', 2, 0)
GO
INSERT [dbo].[RssFeeds] ([ID], [Url], [Title], [TitleHash], [Description], [ThumbnailUrl], [PublishDate], [Author], [ResourceID], [Score]) VALUES (39, N'http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d1fc4d5/sc/28/l/0L0Scnet0N0Cnews0Cspotify0Eyour0Enew0Eplace0Efor0Evideo0C0Tftag0FCAD590Aa51e/story01.htm', N'Spotify: Your new place for video? (CNET Update show notes) - CNET', N'3e683d4b9268025dbe122680ed850b8d', N'The streaming-music app is set to evolve beyond audio this week. Also, Snapchat may be getting new video calling features, and Cortana nags about email promises.<br clear=''all''/><br/><br/><a href="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/1/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/1/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/2/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/2/rc.img" border="0"/></a><br/><br/><a href="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/3/rc.htm" rel="nofollow"><img src="http://rc.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/rc/3/rc.img" border="0"/></a><br/><br/><a href="http://da.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/a2.htm"><img src="http://da.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/a2.img" border="0"/></a><br/><a href="http://adchoice.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/ach.htm"><img src="http://adchoice.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/ach.img" border="0"/></a><img width="1" height="1" src="http://pi.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/a2t.img" border="0"/><img width="1" height="1" src="http://pi2.feedsportal.com/r/247389346940/u/173/f/645093/c/34938/s/4d1fc4d5/sc/28/a2t2.img" border="0"/><img width=''1'' height=''1'' src=''http://cnet.com.feedsportal.com/c/34938/f/645093/s/4d1fc4d5/sc/28/mf.gif'' border=''0''/>', N'http://cnet4.cbsistatic.com/hub/i/r/2016/01/25/f361baf8-4e47-4bfd-af0a-23c388b28daa/thumbnail/300x230/2f3b5196a6e109235eee699a8839a03e/ud012516.jpg', CAST(0x0000A59900000000 AS DateTime), N'Bridget Carey', 2, 0)
GO
SET IDENTITY_INSERT [dbo].[RssFeeds] OFF
GO
SET IDENTITY_INSERT [dbo].[RssResources] ON 

GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (1, N'C|Net', N'http://www.cnet.com/rss/android-update/', N'en        ', 3, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (2, N'C|Net', N'http://www.cnet.com/rss/news/', N'en        ', 21, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (3, N'C|Net', N'http://www.cnet.com/rss/deals/', N'en        ', 23, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (4, N'C|Net', N'http://www.cnet.com/rss/iphone-update/', N'en        ', 15, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (5, N'C|Net', N'http://www.cnet.com/rss/crave/', N'en        ', 24, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (6, N'C|Net', N'http://www.cnet.com/rss/gaming/', N'en        ', 25, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (7, N'C|Net', N'http://www.cnet.com/rss/cheapskate/', N'en        ', 26, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (8, N'C|Net', N'http://www.cnet.com/rss/most-popular-products/', N'en        ', 22, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (9, N'C|Net', N'http://www.cnet.com/rss/smart-home/', N'en        ', 26, 1, N'http://i.i.cbsi.com/cnwk.1d/i/ne/gr/prtnr/CNET_Logo_150.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (10, N'Zoomit', N'http://www.zoomit.ir/home?format=feed', N'fa        ', 11, 1, N'http://www.zoomit.ir/templates/ja_argo/images/logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (11, N'Itna', N'http://itna.ir/rssci.uy2-s2tuu-5b1,ydk.8al2as.2.xml', N'fa        ', 11, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (12, N'Itna', N'http://itna.ir/rsshi.c120z29cc0y3xu1go.dtf2t-.2.xml', N'fa        ', 9, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (13, N'Itna', N'http://itna.ir/rssgx.dja5qa6dd51kwvjoe.4rparn.a.xml', N'fa        ', 28, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (14, N'Itna', N'http://itna.ir/rssew.skj1zjyss1rhx2k4m.ib9jbx.j.xml', N'fa        ', 8, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (15, N'Itna', N'http://itna.ir/rssf0.47wrywq44r,6mp73f.aigwij.w.xml', N'fa        ', 1, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (16, N'Itna', N'http://itna.ir/rssir.,ltizt4,,ik1pxlne.2cbtcy.t.xml', N'fa        ', 29, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (17, N'Itna', N'http://itna.ir/rssj8.12u9vuk119bqtw25g.ufu.vshzf.xml', N'fa        ', 21, 1, N'http://itna.ir/images/site_logo.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (18, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Latest-IT-news.xml', N'en        ', 29, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (19, N'ComputerWeekly', N'http://www.computerweekly.com/rss/IT-hardware.xml', N'en        ', 8, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (20, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Enterprise-software.xml', N'en        ', 1, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (21, N'ComputerWeekly', N'http://www.computerweekly.com/rss/IT-services-and-outsourcing.xml', N'en        ', 30, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (22, N'ComputerWeekly', N'http://www.computerweekly.com/rss/IT-security.xml', N'en        ', 28, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (23, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Networking-and-communication.xml', N'en        ', 31, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (24, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Mobile-technology.xml', N'en        ', 4, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (25, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Internet-technology.xml', N'en        ', 11, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (26, N'ComputerWeekly', N'http://www.computerweekly.com/rss/IT-management.xml', N'en        ', 29, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (30, N'ComputerWeekly', N'http://www.computerweekly.com/rss/Nordics.xml', N'en        ', 11, 1, N'http://cdn.ttgtmedia.com/rms/ux/responsive/img/cw_logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (32, N'ITiran', N'http://itiran.com/rss/allnews', N'fa        ', 29, 1, N'http://itiran.com/sites/all/themes/itiran_2013/img/logo-2.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (33, N'PCWorld', N'http://www.pcworld.com/column/hassle-free-pc/index.rss', N'en        ', 32, 1, N'http://csmb.staticworld.net/images/furniture/techhive/logo-banner-pcworld-lg-dark.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (34, N'PCWorld', N'http://www.pcworld.com/category/software/index.rss', N'en        ', 1, 1, N'http://csmb.staticworld.net/images/furniture/techhive/logo-banner-pcworld-lg-dark.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (35, N'PCWorld', N'http://www.pcworld.com/category/phones/index.rss', N'en        ', 4, 1, N'http://csmb.staticworld.net/images/furniture/techhive/logo-banner-pcworld-lg-dark.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (36, N'PCWorld', N'http://www.pcworld.com/category/business/index.rss', N'en        ', 2, 1, N'http://csmb.staticworld.net/images/furniture/techhive/logo-banner-pcworld-lg-dark.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (37, N'Technewsworld', N'http://www.technewsworld.com/perl/syndication/rssfull.pl', N'en        ', 11, 1, N'http://www.technewsworld.com/images/2014/tnw-logo.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (38, N'Gsmaria', N'http://www.gsmaria.com/fa/Press/News/RSSFeed?s=SXNIb21lUnNzPVRydWU=', N'fa        ', 4, 1, N'" style="
margin-top: 15px;
background-image: url(http://www.gsmaria.com/RTL/Images/sp_001.png);
background-position: -65px -32px;
width: 204px;
height: 56px;
display: inline-block;', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (39, N'Centralclubs', N'http://www.centralclubs.com/', N'fa        ', 32, 0, NULL, 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (40, N'Gsmarena', N'http://www.gsmarena.com/rss-news-reviews.php3', N'en        ', 4, 1, N'http://st.gsmarena.com/vv/assets8/i/logo-fallback.gif', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (41, N'ZdNet', N'http://zdnet.com.feedsportal.com/c/35462/f/675633/index.rss', N'en        ', 29, 1, N'http://www.hdicon.com/wp-content/uploads/2011/05/zdnet_2006.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (42, N'ZdNet', N'http://zdnet.com.feedsportal.com/c/35462/f/675634/index.rss', N'en        ', 21, 1, N'http://www.hdicon.com/wp-content/uploads/2011/05/zdnet_2006.png', 1)
GO
INSERT [dbo].[RssResources] ([ID], [Name], [Url], [Language], [RssCategoryID], [IsActive], [Favicon], [Score]) VALUES (43, N'ZdNet', N'http://zdnet.com.feedsportal.com/c/35462/f/675861/index.rss', N'en        ', 33, 1, N'http://www.hdicon.com/wp-content/uploads/2011/05/zdnet_2006.png', 1)
GO
SET IDENTITY_INSERT [dbo].[RssResources] OFF
GO
INSERT [dbo].[UserInRoles] ([RoleId], [UserID]) VALUES (3, 2)
GO
INSERT [dbo].[UserInRoles] ([RoleId], [UserID]) VALUES (3, 3)
GO
INSERT [dbo].[UserInRoles] ([RoleId], [UserID]) VALUES (5, 4)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserID], [Id], [Username], [FirstName], [LastName], [ModifyDate], [Email], [EmailConfirmed], [Password], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnable], [LockoutEndDateUtc], [LockoutEnable], [AccessFailedCount]) VALUES (1, N'a3394b8e-b4a6-41e7-a107-4e5857cca96b', N'admin', N'Zoomorod', NULL, CAST(0xFA3A0B00 AS Date), N'zoomorod.ir@gmail.com', 0, 0x485C2C672C64403133000000000000000000000000000000000000000000, NULL, NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([UserID], [Id], [Username], [FirstName], [LastName], [ModifyDate], [Email], [EmailConfirmed], [Password], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnable], [LockoutEndDateUtc], [LockoutEnable], [AccessFailedCount]) VALUES (2, N'4b52e499-ba25-4f34-a757-6f7954d89f4d', N'ahmad', N'Ahmad', N'Aghazadeh', CAST(0xDD3A0B00 AS Date), N'ahmad.aghazadeh.a@gmail.com', 0, 0x485C2C672C64403133000000000000000000000000000000000000000000, NULL, NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([UserID], [Id], [Username], [FirstName], [LastName], [ModifyDate], [Email], [EmailConfirmed], [Password], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnable], [LockoutEndDateUtc], [LockoutEnable], [AccessFailedCount]) VALUES (3, N'bcfada50-34e9-410b-9449-89bf9d213228', N'behzad', N'Behzad', N'Khosravifar', CAST(0xD43A0B00 AS Date), N'Behzad.khosravifar@gmail.com', 0, 0x485C2C672C64403133000000000000000000000000000000000000000000, NULL, N'+989149149202', 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[Users] ([UserID], [Id], [Username], [FirstName], [LastName], [ModifyDate], [Email], [EmailConfirmed], [Password], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnable], [LockoutEndDateUtc], [LockoutEnable], [AccessFailedCount]) VALUES (4, N'224ed7ce-f213-4461-a03c-942048924dd2', N'anyone', N'any', N'one', CAST(0xFB3A0B00 AS Date), NULL, 0, 0x313233000000000000000000000000000000000000000000000000000000, NULL, NULL, 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'IX_RssFeeds')
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [IX_RssFeeds] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Au_RssFeeds')
CREATE NONCLUSTERED INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
(
	[Author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'Rs_RssFeeds')
CREATE NONCLUSTERED INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 2/19/2016 10:01:19 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND name = N'TX_RssFeeds')
CREATE NONCLUSTERED INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
(
	[TitleHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RssResources]    Script Date: 2/19/2016 10:01:19 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND name = N'IX_RssResources')
CREATE NONCLUSTERED INDEX [IX_RssResources] ON [dbo].[RssResources]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_LangID]  DEFAULT ((1)) FOR [LangID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_Background]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Background]  DEFAULT ('#fff') FOR [Background]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Categories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CategoriesChilds_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CategoriesChilds] ADD  CONSTRAINT [DF_CategoriesChilds_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_ErrTime]  DEFAULT (getdate()) FOR [ServerDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_ErrorHost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_ErrorHost]  DEFAULT (host_name()) FOR [Host]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IsHandled]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_IsHandled]  DEFAULT ((0)) FOR [IsHandled]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_Type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_Type]  DEFAULT ('Exception') FOR [Type]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_AppName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_AppName]  DEFAULT (app_name()) FOR [AppName]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_IPv4Address]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_IPv4Address]  DEFAULT ('Network Not Available') FOR [IPv4Address]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ErrorLog_MACAddress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_MACAddress]  DEFAULT ('Network Not Available') FOR [MACAddress]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Languages_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__RunDa__0F975522]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__RunDa__0F975522]  DEFAULT (getdate()) FOR [RunDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Succe__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__Succe__108B795B]  DEFAULT ((0)) FOR [Success]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__LogHistor__Login__117F9D94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LogHistory] ADD  CONSTRAINT [DF__LogHistor__Login__117F9D94]  DEFAULT ((1)) FOR [LoginOrLogout]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_LangID]  DEFAULT ((1)) FOR [LangID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_UniqueId]  DEFAULT (newid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Portfolio__Modif__15502E78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF__Portfolio__Modif__15502E78]  DEFAULT (getdate()) FOR [ModifyDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Rank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_Rank]  DEFAULT ((0)) FOR [Rank]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_Price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_Price]  DEFAULT ((0)) FOR [Price]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Portfolios_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_LangID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_LangID]  DEFAULT ((1)) FOR [LangID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsCategory_Order]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_NewsCategory_Order]  DEFAULT ((0)) FOR [Order]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssCategories_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_PublishDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_PublishDate]  DEFAULT (getdate()) FOR [PublishDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssFeeds_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_Score]  DEFAULT ((0)) FOR [Score]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_NewsResources_Language]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_NewsResources_Language]  DEFAULT (N'en') FOR [Language]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_IsActive]  DEFAULT ((1)) FOR [IsActive]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_RssResources_Score]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_Score]  DEFAULT ((1)) FOR [Score]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_UniqueId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UniqueId]  DEFAULT (newid()) FOR [Id]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Users__ModifyDat__1A14E395]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ModifyDat__1A14E395]  DEFAULT (getdate()) FOR [ModifyDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_EmailConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_EmailConfirmed]  DEFAULT ((0)) FOR [EmailConfirmed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_PhoneNumberConfirmed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_PhoneNumberConfirmed]  DEFAULT ((0)) FOR [PhoneNumberConfirmed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_TwoFactorEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_TwoFactorEnable]  DEFAULT ((0)) FOR [TwoFactorEnable]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_LockoutEnable]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_LockoutEnable]  DEFAULT ((0)) FOR [LockoutEnable]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Users_AccessFailedCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AccessFailedCount]  DEFAULT ((0)) FOR [AccessFailedCount]
END

GO
