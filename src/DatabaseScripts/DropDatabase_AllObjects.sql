USE [xomorod.com_xomorod]
GO
/****** Object:  StoredProcedure [dbo].[sp_TrafficRankings_Insert]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_TrafficRankings_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_TrafficRankings_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_SetPurchaseValue]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SetPurchaseValue]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_SetPurchaseValue]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_RssItem]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_NewsletterSubscribeEmails]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_NewsletterSubscribeEmails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_NewsletterSubscribeEmails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_ContactMe]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_ContactMe]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_ContactMe]
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Increase_RssScore]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdatesInfo]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetRankingUpdatesInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetRankingUpdatesInfo]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdateInfo]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetRankingUpdateInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetRankingUpdateInfo]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPolicyCategory]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetPolicyCategory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetPolicyCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDeveloperPayload]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetDeveloperPayload]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetDeveloperPayload]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllowCoin]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_GetAllowCoin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_GetAllowCoin]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_CatchError]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_LogError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_LogError]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorXml]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_GetErrorXml]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_GetErrorsXml]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ELMAH_GetErrorsXml]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[HangFire].[FK_HangFire_State_Job]') AND parent_object_id = OBJECT_ID(N'[HangFire].[State]'))
ALTER TABLE [HangFire].[State] DROP CONSTRAINT [FK_HangFire_State_Job]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[HangFire].[FK_HangFire_JobParameter_Job]') AND parent_object_id = OBJECT_ID(N'[HangFire].[JobParameter]'))
ALTER TABLE [HangFire].[JobParameter] DROP CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserRoles_dbo.Users_IdentityUser_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Users_IdentityUser_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserRoles_dbo.Roles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserRoles]'))
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserLogins_dbo.Users_IdentityUser_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserLogins]'))
ALTER TABLE [dbo].[UserLogins] DROP CONSTRAINT [FK_dbo.UserLogins_dbo.Users_IdentityUser_Id]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.UserClaims_dbo.Users_IdentityUser_Id]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserClaims]'))
ALTER TABLE [dbo].[UserClaims] DROP CONSTRAINT [FK_dbo.UserClaims_dbo.Users_IdentityUser_Id]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udfv_PortfoliosView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udfv_PortfoliosView]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_LanguagesView]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udfv_LanguagesView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udfv_LanguagesView]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_TrafficRankings]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_TrafficRankings]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_TrafficRankings]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssResources]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssCategories]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Portfolios]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Portfolios]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetCategoryChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetCategoryChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_CategoriesChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_CategoriesChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Categories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Categories]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[State]') AND type in (N'U'))
DROP TABLE [HangFire].[State]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Set]') AND type in (N'U'))
DROP TABLE [HangFire].[Set]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Server]') AND type in (N'U'))
DROP TABLE [HangFire].[Server]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Schema]') AND type in (N'U'))
DROP TABLE [HangFire].[Schema]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[List]') AND type in (N'U'))
DROP TABLE [HangFire].[List]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[JobQueue]') AND type in (N'U'))
DROP TABLE [HangFire].[JobQueue]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[JobParameter]') AND type in (N'U'))
DROP TABLE [HangFire].[JobParameter]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Job]') AND type in (N'U'))
DROP TABLE [HangFire].[Job]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Hash]') AND type in (N'U'))
DROP TABLE [HangFire].[Hash]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[Counter]') AND type in (N'U'))
DROP TABLE [HangFire].[Counter]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[HangFire].[AggregatedCounter]') AND type in (N'U'))
DROP TABLE [HangFire].[AggregatedCounter]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[UserLogins]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[UserClaims]
GO
/****** Object:  Table [dbo].[UserAppHistoryTapsell]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAppHistoryTapsell]') AND type in (N'U'))
DROP TABLE [dbo].[UserAppHistoryTapsell]
GO
/****** Object:  Table [dbo].[TrafficRankings]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrafficRankings]') AND type in (N'U'))
DROP TABLE [dbo].[TrafficRankings]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Setting]') AND type in (N'U'))
DROP TABLE [dbo].[Setting]
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources_ContentProviders]
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources]
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
DROP TABLE [dbo].[RssFeeds]
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssContentProviders]
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
DROP TABLE [dbo].[RssCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Purchase]') AND type in (N'U'))
DROP TABLE [dbo].[Purchase]
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
DROP TABLE [dbo].[PortfoliosComment]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyType]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyType]
GO
/****** Object:  Table [dbo].[PolicyQueries]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyQueries]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyQueries]
GO
/****** Object:  Table [dbo].[PolicyDetails]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PolicyDetails]') AND type in (N'U'))
DROP TABLE [dbo].[PolicyDetails]
GO
/****** Object:  Table [dbo].[NewsletterSubscribeEmails]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsletterSubscribeEmails]') AND type in (N'U'))
DROP TABLE [dbo].[NewsletterSubscribeEmails]
GO
/****** Object:  Table [dbo].[Logger]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logger]') AND type in (N'U'))
DROP TABLE [dbo].[Logger]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ELMAH_Error]') AND type in (N'U'))
DROP TABLE [dbo].[ELMAH_Error]
GO
/****** Object:  Table [dbo].[ContactMe]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactMe]') AND type in (N'U'))
DROP TABLE [dbo].[ContactMe]
GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriesChilds]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriesChilds]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStringHashing]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSettingByKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSettingByKey]
GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetResourceLinkByElementID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetResourceLinkByElementID]
GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetExtraLinkByName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetExtraLinkByName]
GO
/****** Object:  Schema [xomorod.com_webadmin]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'xomorod.com_webadmin')
DROP SCHEMA [xomorod.com_webadmin]
GO
/****** Object:  Schema [HangFire]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'HangFire')
DROP SCHEMA [HangFire]
GO
/****** Object:  User [xomorod.com_webadmin]    Script Date: 14/08/2016 11:15:03 ق.ظ ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'xomorod.com_webadmin')
DROP USER [xomorod.com_webadmin]
GO
