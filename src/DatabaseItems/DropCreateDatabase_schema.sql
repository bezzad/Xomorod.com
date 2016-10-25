USE [xomorod.com_xomorod]
GO
/****** Object:  Trigger [tr_CatchSetting]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TRIGGER [dbo].[tr_CatchSetting]
GO
/****** Object:  Trigger [tr_CatchContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TRIGGER [dbo].[tr_CatchContactMe]
GO
/****** Object:  StoredProcedure [dbo].[sp_TrafficRankings_Insert]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_TrafficRankings_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_SetPurchaseValue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_SetPurchaseValue]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_Insert_RssItem]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_Insert_NewsletterSubscribeEmails]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_ContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_Insert_ContactMe]
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_Increase_RssScore]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdatesInfo]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_GetRankingUpdatesInfo]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdateInfo]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_GetRankingUpdateInfo]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPolicyCategory]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_GetPolicyCategory]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDeveloperPayload]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_GetDeveloperPayload]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllowCoin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_GetAllowCoin]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[sp_CatchError]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[ELMAH_LogError]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[ELMAH_GetErrorXml]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP PROCEDURE [dbo].[ELMAH_GetErrorsXml]
GO
ALTER TABLE [HangFire].[State] DROP CONSTRAINT [FK_HangFire_State_Job]
GO
ALTER TABLE [HangFire].[JobParameter] DROP CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId]
GO
ALTER TABLE [dbo].[UserLogins] DROP CONSTRAINT [FK_dbo.UserLogins_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [dbo].[UserClaims] DROP CONSTRAINT [FK_dbo.UserClaims_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ModifyDat__762C88DA]
GO
ALTER TABLE [dbo].[TrafficRankings] DROP CONSTRAINT [DF__TrafficRa__IsAct__5A4F643B]
GO
ALTER TABLE [dbo].[TrafficRankings] DROP CONSTRAINT [DF__TrafficRa__Modif__595B4002]
GO
ALTER TABLE [dbo].[Sitemap] DROP CONSTRAINT [DF_Sitemap_LastModified]
GO
ALTER TABLE [dbo].[Sitemap] DROP CONSTRAINT [DF_Sitemap_LangId]
GO
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_Score]
GO
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_RssResources_IsActive]
GO
ALTER TABLE [dbo].[RssResources] DROP CONSTRAINT [DF_NewsResources_Language]
GO
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_Score]
GO
ALTER TABLE [dbo].[RssFeeds] DROP CONSTRAINT [DF_RssFeeds_PublishDate]
GO
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_IsActive]
GO
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_NewsCategory_Order]
GO
ALTER TABLE [dbo].[RssCategories] DROP CONSTRAINT [DF_RssCategories_LangID]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_IsActive]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_Price]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_Rank]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF__Portfolio__Modif__15502E78]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_UniqueId]
GO
ALTER TABLE [dbo].[Portfolios] DROP CONSTRAINT [DF_Portfolios_LangID]
GO
ALTER TABLE [dbo].[NewsletterSubscribeEmails] DROP CONSTRAINT [DF_NewsletterSubscribeEmails_Enable]
GO
ALTER TABLE [dbo].[Logger] DROP CONSTRAINT [DF_Logger_ModifyTime]
GO
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_IsActive]
GO
ALTER TABLE [dbo].[ELMAH_Error] DROP CONSTRAINT [DF_ELMAH_Error_ErrorId]
GO
ALTER TABLE [dbo].[ContactMe] DROP CONSTRAINT [DF_ContactMe_IsRead]
GO
ALTER TABLE [dbo].[ContactMe] DROP CONSTRAINT [DF_ContactMe_ModifyTime]
GO
ALTER TABLE [dbo].[CategoriesChilds] DROP CONSTRAINT [DF_CategoriesChilds_IsActive]
GO
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_IsActive]
GO
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_Background]
GO
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF_Categories_LangID]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_State_JobId] ON [HangFire].[State]
GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [UserNameIndex] ON [dbo].[Users]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_RoleId] ON [dbo].[UserRoles]
GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_IdentityUser_Id] ON [dbo].[UserRoles]
GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_IdentityUser_Id] ON [dbo].[UserLogins]
GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_IdentityUser_Id] ON [dbo].[UserClaims]
GO
/****** Object:  Index [IX_RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_RssResources] ON [dbo].[RssResources]
GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [RoleNameIndex] ON [dbo].[Roles]
GO
/****** Object:  Index [IX_NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_NewsletterSubscribeEmails] ON [dbo].[NewsletterSubscribeEmails]
GO
/****** Object:  Index [IX_Languages]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_Languages] ON [dbo].[Languages]
GO
/****** Object:  Index [IX_ELMAH_Error_App_Time_Seq]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udfv_PortfoliosView]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_LanguagesView]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udfv_LanguagesView]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_TrafficRankings]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_TrafficRankings]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_RssResources]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_RssCategories]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_Portfolios]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[fn_GetCategoryChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_CategoriesChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[udft_Categories]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[State]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Set]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Server]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Schema]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[List]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[JobQueue]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[JobParameter]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Job]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Hash]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[Counter]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [HangFire].[AggregatedCounter]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[UserLogins]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[UserClaims]
GO
/****** Object:  Table [dbo].[UserAppHistoryTapsell]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[UserAppHistoryTapsell]
GO
/****** Object:  Table [dbo].[TrafficRankings]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[TrafficRankings]
GO
/****** Object:  Table [dbo].[Sitemap]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Sitemap]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Setting]
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[RssResources_ContentProviders]
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[RssResources]
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[RssFeeds]
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[RssContentProviders]
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[RssCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Purchase]
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[PortfoliosComment]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[PolicyType]
GO
/****** Object:  Table [dbo].[PolicyQueries]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[PolicyQueries]
GO
/****** Object:  Table [dbo].[PolicyDetails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[PolicyDetails]
GO
/****** Object:  Table [dbo].[NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[NewsletterSubscribeEmails]
GO
/****** Object:  Table [dbo].[Logger]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Logger]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[ELMAH_Error]
GO
/****** Object:  Table [dbo].[ContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[ContactMe]
GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[CategoriesChilds]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[GetStringHashing]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[GetSettingByKey]
GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[GetResourceLinkByElementID]
GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[GetExtraLinkByName]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetFirstAdminUserID]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP FUNCTION [dbo].[fn_GetFirstAdminUserID]
GO
/****** Object:  Schema [xomorod.com_webadmin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP SCHEMA [xomorod.com_webadmin]
GO
/****** Object:  Schema [HangFire]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP SCHEMA [HangFire]
GO
/****** Object:  User [xomorod.com_webadmin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP USER [xomorod.com_webadmin]
GO
USE [master]
GO
/****** Object:  Database [xomorod.com_xomorod]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
DROP DATABASE [xomorod.com_xomorod]
GO
/****** Object:  Database [xomorod.com_xomorod]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE DATABASE [xomorod.com_xomorod]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'xomorod.com_xomorod_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\xomorod.com_xomorod_data.mdf' , SIZE = 12224KB , MAXSIZE = 1048576KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'xomorod.com_xomorod_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\xomorod.com_xomorod_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [xomorod.com_xomorod] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [xomorod.com_xomorod].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [xomorod.com_xomorod] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET ARITHABORT OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [xomorod.com_xomorod] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [xomorod.com_xomorod] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET  DISABLE_BROKER 
GO
ALTER DATABASE [xomorod.com_xomorod] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
GO
ALTER DATABASE [xomorod.com_xomorod] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [xomorod.com_xomorod] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [xomorod.com_xomorod] SET  MULTI_USER 
GO
ALTER DATABASE [xomorod.com_xomorod] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [xomorod.com_xomorod] SET DB_CHAINING OFF 
GO
ALTER DATABASE [xomorod.com_xomorod] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [xomorod.com_xomorod] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [xomorod.com_xomorod] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'xomorod.com_xomorod', N'ON'
GO
USE [xomorod.com_xomorod]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [xomorod.com_xomorod]
GO
/****** Object:  User [xomorod.com_webadmin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE USER [xomorod.com_webadmin] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[xomorod.com_webadmin]
GO
ALTER ROLE [db_owner] ADD MEMBER [xomorod.com_webadmin]
GO
/****** Object:  Schema [HangFire]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Schema [xomorod.com_webadmin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE SCHEMA [xomorod.com_webadmin]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetFirstAdminUserID]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016 sep 9
-- Description:	Get First Admin User ID
-- =============================================
CREATE FUNCTION [dbo].[fn_GetFirstAdminUserID] ()
RETURNS NVARCHAR(128)
AS
BEGIN
	DECLARE @Result NVARCHAR(128)

	SELECT TOP(1) @Result = ur.UserId FROM dbo.Roles rol
	INNER JOIN dbo.UserRoles ur ON ur.RoleId = rol.Id
	WHERE rol.Name = 'Admin'

	-- Return the result of the function
	RETURN @Result
END

GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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


GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


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


GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GetSettingByKey]
(
	@Key NVARCHAR(256)
)
RETURNS NVARCHAR(MAX)
AS


BEGIN
	DECLARE @result NVARCHAR(MAX) = ''; 
	
	SELECT @result = as1.[Value]
	FROM   [xomorod.com_xomorod].dbo.Setting as1
	WHERE  LOWER(as1.[Key]) = LOWER(@Key)
	
	RETURN @result;
END


GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
	
	SELECT @hash = SUBSTRING(sys.fn_sqlvarbasetostr(HASHBYTES('MD5', @Content)), 3, 32)
	
	RETURN @hash;
END


GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[ContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMe](
	[ContactMeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[ModifyUTC] [datetime] NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[IsRead] [bit] NOT NULL,
 CONSTRAINT [PK_ContactMe] PRIMARY KEY CLUSTERED 
(
	[ContactMeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Languages](
	[LangID] [int] IDENTITY(1,1) NOT NULL,
	[LangFullName] [nvarchar](50) NOT NULL,
	[Culture] [varchar](5) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logger]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NULL,
	[TableName] [varchar](50) NULL,
	[Username] [nvarchar](max) NULL,
	[LoginName] [nvarchar](max) NULL,
	[ServerName] [nvarchar](max) NULL,
	[ExtraData] [nvarchar](max) NULL,
	[ModifyTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Logger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsletterSubscribeEmails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](128) NOT NULL,
	[Enable] [bit] NOT NULL,
 CONSTRAINT [PK_NewsletterSubscribeEmails_Email] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PolicyDetails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[PolicyQueries]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[PolicyType]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortfolioCategories](
	[PortfolioID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_PortfolioCategories] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[orderId] [nvarchar](100) NULL,
	[packageName] [nvarchar](100) NULL,
	[productId] [nvarchar](100) NULL,
	[purchaseTime] [datetime] NULL,
	[developerPayload] [nvarchar](100) NOT NULL,
	[purchaseToken] [nvarchar](100) NULL,
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[isConsume] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Resources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_RssFeeds] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RssResources_ContentProviders](
	[ResourceID] [int] NOT NULL,
	[ContentProvideID] [int] NOT NULL,
 CONSTRAINT [PK_RssResourcesRelatedByContentProviders] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC,
	[ContentProvideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sitemap]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sitemap](
	[Id] [bigint] NOT NULL,
	[LangId] [int] NOT NULL,
	[Title] [nvarchar](4000) NULL,
	[Frequency] [varchar](10) NULL,
	[LastModified] [datetime] NOT NULL,
	[Priority] [numeric](18, 2) NULL,
	[Url] [varchar](4000) NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_Sitemap_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[LangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrafficRankings]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrafficRankings](
	[RankID] [int] IDENTITY(1,1) NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
	[GlobalRanking] [int] NULL,
	[IranRanking] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__TrafficR__B37AFB96CB2473E2] PRIMARY KEY CLUSTERED 
(
	[RankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAppHistoryTapsell]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAppHistoryTapsell](
	[deviceId] [nvarchar](100) NOT NULL,
	[packageName] [nvarchar](100) NOT NULL,
	[lastTime] [datetime] NULL,
	[counter] [bigint] NULL,
 CONSTRAINT [PK_TimeLine] PRIMARY KEY CLUSTERED 
(
	[deviceId] ASC,
	[packageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[IdentityUser_Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[IdentityUser_Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[IdentityUser_Id] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[ModifyDate] [datetime] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [smallint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Job]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[List]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Server]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](100) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[Set]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [HangFire].[State]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
)

GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
	)

GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
	)

GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
	)


GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
)

GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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


GO
/****** Object:  UserDefinedFunction [dbo].[udft_TrafficRankings]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udft_TrafficRankings]
(
)
RETURNS TABLE
AS


RETURN 
(
    WITH MyCTE AS
    (
        SELECT d.ModifyDate       AS MDate,
               MAX(d.ModifyTime)  AS MTime
        FROM   (
                   SELECT CONVERT(DATE, tr.ModifyDate) AS ModifyDate,
                          CONVERT(TIME, tr.ModifyDate) AS ModifyTime
                   FROM   TrafficRankings tr
               )                     d
        GROUP BY
               d.ModifyDate
    )
    SELECT RankID,
    ModifyDate,
    GlobalRanking,
    IranRanking
    FROM dbo.TrafficRankings
    INNER JOIN MyCTE
    ON MyCTE.MDate = CONVERT(DATE, dbo.TrafficRankings.ModifyDate)
    AND MyCTE.MTime = CONVERT(TIME, dbo.TrafficRankings.ModifyDate)
    AND IsActive = 1
)


GO
/****** Object:  UserDefinedFunction [dbo].[udfv_LanguagesView]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[udfv_LanguagesView] ( )
RETURNS TABLE
AS


RETURN
    ( SELECT    [LangID] ,
                [Culture] ,
                [LangFullName]
      FROM      dbo.Languages
      WHERE     IsActive = 1
    )


GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
                   SELECT ',   ' + cc.Name
                   FROM   dbo.PortfolioCategories pc
                          INNER JOIN dbo.Categories cc
                               ON  cc.CategoryID = pc.CategoryID
                   WHERE  pc.PortfolioID = p.PortfolioID
                          AND cc.IsActive = 1
                          AND cc.LangID = @langID
                              FOR XML PATH(''), TYPE
               ).value('.', 'NVARCHAR(MAX)'),
               1,
               1,
               ''
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
)

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ELMAH_Error_App_Time_Seq]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error]
(
	[Application] ASC,
	[TimeUtc] DESC,
	[Sequence] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Languages]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Languages] ON [dbo].[Languages]
(
	[Culture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_NewsletterSubscribeEmails] ON [dbo].[NewsletterSubscribeEmails]
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Au_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [Au_RssFeeds] ON [dbo].[RssFeeds]
(
	[Author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Rs_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [Rs_RssFeeds] ON [dbo].[RssFeeds]
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [TX_RssFeeds]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [TX_RssFeeds] ON [dbo].[RssFeeds]
(
	[TitleHash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RssResources]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RssResources] ON [dbo].[RssResources]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_IdentityUser_Id] ON [dbo].[UserClaims]
(
	[IdentityUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_IdentityUser_Id] ON [dbo].[UserLogins]
(
	[IdentityUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IdentityUser_Id]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_IdentityUser_Id] ON [dbo].[UserRoles]
(
	[IdentityUser_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_CounterAggregated_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Counter_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter]
(
	[Key] ASC
)
INCLUDE ( 	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Hash_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_Key] ON [HangFire].[Hash]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Hash_Key_Field]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Hash_Key_Field] ON [HangFire].[Hash]
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobParameter_JobIdAndName]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobParameter_JobIdAndName] ON [HangFire].[JobParameter]
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_JobQueue_QueueAndFetchedAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue]
(
	[Queue] ASC,
	[FetchedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_List_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_Key] ON [HangFire].[List]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
INCLUDE ( 	[Id]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HangFire_Set_Key]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set]
(
	[Key] ASC
)
INCLUDE ( 	[ExpireAt],
	[Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UX_HangFire_Set_KeyAndValue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set]
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_State_JobId]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_State_JobId] ON [HangFire].[State]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_LangID]  DEFAULT ((1)) FOR [LangID]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_Background]  DEFAULT ('#fff') FOR [Background]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CategoriesChilds] ADD  CONSTRAINT [DF_CategoriesChilds_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ContactMe] ADD  CONSTRAINT [DF_ContactMe_ModifyTime]  DEFAULT (getutcdate()) FOR [ModifyUTC]
GO
ALTER TABLE [dbo].[ContactMe] ADD  CONSTRAINT [DF_ContactMe_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Logger] ADD  CONSTRAINT [DF_Logger_ModifyTime]  DEFAULT (getdate()) FOR [ModifyTime]
GO
ALTER TABLE [dbo].[NewsletterSubscribeEmails] ADD  CONSTRAINT [DF_NewsletterSubscribeEmails_Enable]  DEFAULT ((1)) FOR [Enable]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_LangID]  DEFAULT ((1)) FOR [LangID]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_UniqueId]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF__Portfolio__Modif__15502E78]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_Rank]  DEFAULT ((0)) FOR [Rank]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Portfolios] ADD  CONSTRAINT [DF_Portfolios_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_LangID]  DEFAULT ((1)) FOR [LangID]
GO
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_NewsCategory_Order]  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[RssCategories] ADD  CONSTRAINT [DF_RssCategories_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_PublishDate]  DEFAULT (getdate()) FOR [PublishDate]
GO
ALTER TABLE [dbo].[RssFeeds] ADD  CONSTRAINT [DF_RssFeeds_Score]  DEFAULT ((0)) FOR [Score]
GO
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_NewsResources_Language]  DEFAULT (N'en') FOR [Language]
GO
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RssResources] ADD  CONSTRAINT [DF_RssResources_Score]  DEFAULT ((1)) FOR [Score]
GO
ALTER TABLE [dbo].[Sitemap] ADD  CONSTRAINT [DF_Sitemap_LangId]  DEFAULT ((1)) FOR [LangId]
GO
ALTER TABLE [dbo].[Sitemap] ADD  CONSTRAINT [DF_Sitemap_LastModified]  DEFAULT (getutcdate()) FOR [LastModified]
GO
ALTER TABLE [dbo].[TrafficRankings] ADD  CONSTRAINT [DF__TrafficRa__Modif__595B4002]  DEFAULT (getdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[TrafficRankings] ADD  CONSTRAINT [DF__TrafficRa__IsAct__5A4F643B]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ModifyDat__762C88DA]  DEFAULT (getutcdate()) FOR [ModifyDate]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserClaims_dbo.Users_IdentityUser_Id] FOREIGN KEY([IdentityUser_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_dbo.UserClaims_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserLogins_dbo.Users_IdentityUser_Id] FOREIGN KEY([IdentityUser_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_dbo.UserLogins_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_dbo.UserRoles_dbo.Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserRoles_dbo.Users_IdentityUser_Id] FOREIGN KEY([IdentityUser_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_dbo.UserRoles_dbo.Users_IdentityUser_Id]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO




GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application




GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NVARCHAR(MAX),
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )




GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
	        @ERROR_PROCEDURE SYSNAME = ISNULL(ERROR_PROCEDURE(), 'New Query'),
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
	            SELECT CONVERT(SYSNAME, SERVERPROPERTY('BuildClrVersion'))
	        ),
	        @ErrorDate DATETIME = GETDATE(),
	        @IsHandled BIT = 1,
	        @ErrorType SYSNAME = 'SqlException',
	        @MemberType SYSNAME = 'Stored Procedure';
	
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
		               XML PATH(''),
		               ROOT('Error')
		    )
		  )
		-- Set AutoId of ErrorLog table to @ErrorLogID for use in Snapshots table         
		SELECT @ErrorId = SCOPE_IDENTITY()
	END
	
	IF @RaisError = 1
	    RAISERROR(@ERROR_MESSAGE, 18, 255) 
	
	RETURN
END




GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllowCoin]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
-- =============================================
-- Author:		Ahmad Aghazadeh
-- Create date: 2016/06/16
-- Description:	GetAllowCoin
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAllowCoin] 
-- Add the parameters for the stored procedure here
	@packageName NVARCHAR(1000) ,
	@deviceID NVARCHAR(1000)
AS
BEGIN
	IF EXISTS(
	       SELECT TOP   1  uaht.lastTime
	       FROM   UserAppHistoryTapsell  AS uaht
	       WHERE  uaht.deviceId = @deviceID
	              AND uaht.packageName = @packageName
	   )
	BEGIN
	    DECLARE @lastDateTime AS DATETIME
	    DECLARE @hourDiff AS INT
	    DECLARE @hourWait AS INT=0
	    SELECT TOP 1 @lastDateTime = uaht.lastTime
	    FROM   UserAppHistoryTapsell AS uaht
	    WHERE  uaht.deviceId = @deviceID
	           AND uaht.packageName = @packageName
	    SELECT @hourDiff=DATEDIFF(HOUR, @lastDateTime, GETDATE()) 
 
        IF(@hourDiff >=@hourWait)
        BEGIN
        	 UPDATE UserAppHistoryTapsell
			      SET    lastTime=GETDATE(),
	            [counter]     = [counter] + 1
            where deviceId = @deviceID
	           AND  packageName = @packageName
	            
	         SELECT '0' AS Result
        END
        ELSE
        BEGIN
        	SELECT SUBSTRING(CONVERT(VARCHAR(20),dateadd(hour,@hourWait,@lastDateTime)-GETDATE(),120),12,8) AS Result
        END

	   
	END
	ELSE
	BEGIN
	    INSERT INTO UserAppHistoryTapsell
	      (
	        deviceId,
	        packageName,
	        lastTime,
	        [counter]
	      )
	    VALUES
	      (
	        @deviceID,
	        @packageName,
	        GETDATE(),
	        1
	      )
	      SELECT '0' AS Result
	END
END




GO
/****** Object:  StoredProcedure [dbo].[sp_GetDeveloperPayload]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



 
-- =============================================
-- Author:		Ahmad Aghazadeh
-- Create date: 
-- Description:	Get Random Guid
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetDeveloperPayload] 
	-- Add the parameters for the stored procedure here
	@packageName NVARCHAR(100) ,
	@productId NVARCHAR(100) 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @newId AS NVARCHAR(100)=NEWID()
	INSERT INTO Purchase
	(
		packageName,
		productId,
		developerPayload
	)
	VALUES
	(
		@packageName,
		@productId,
		@newId		 
	)
    
	SELECT @newId AS Result
END




GO
/****** Object:  StoredProcedure [dbo].[sp_GetPolicyCategory]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


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





GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdateInfo]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetRankingUpdateInfo]
	@DayDate DATETIME
AS
BEGIN
	SELECT tr.RankID,
	       tr.ModifyDate,
	       CONVERT(TIME, tr2.ModifyDate),
	       tr.GlobalRanking,
	       tr.IranRanking,
	       tr.IsActive,
	       DATEDIFF(second, tr2.ModifyDate, tr.ModifyDate) AS TimerDurSec,
	       DATEDIFF(MINUTE, tr2.ModifyDate, tr.ModifyDate) AS TimerDurMin
	FROM   dbo.TrafficRankings tr,
	       dbo.TrafficRankings tr2
	WHERE  tr.ModifyDate > @DayDate
	       AND tr2.ModifyDate > @DayDate
	       AND tr.RankID = tr2.RankID + 1
	ORDER BY
	       tr2.ModifyDate DESC
END



GO
/****** Object:  StoredProcedure [dbo].[sp_GetRankingUpdatesInfo]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetRankingUpdatesInfo]
	@DayDate DATETIME
AS
BEGIN
	DECLARE @temp TABLE (
	            RankID BIGINT,
	            ModifyDate DATETIME,
	            NextTime TIME,
	            GlobalRanking INT,
	            IranRanking INT,
	            IsActive BIT,
	            TimerDurSec INT,
	            TimerDurMin INT
	        )
	
	INSERT INTO @temp
	SELECT tr.RankID,
	       tr.ModifyDate,
	       tr2.ModifyDate AS PreviewsDate,
	       tr.GlobalRanking,
	       tr.IranRanking,
	       tr.IsActive,
	       DATEDIFF(second, tr2.ModifyDate, tr.ModifyDate) AS TimerDurSec,
	       DATEDIFF(MINUTE, tr2.ModifyDate, tr.ModifyDate) AS TimerDurMin
	FROM   [xomorod.com_xomorod].dbo.TrafficRankings tr,
	       [xomorod.com_xomorod].dbo.TrafficRankings tr2
	WHERE  tr.ModifyDate > @DayDate
	       AND tr2.ModifyDate > @DayDate
	       AND tr.RankID = tr2.RankID + 1
	ORDER BY
	       tr2.ModifyDate DESC
	
	SELECT * FROM @temp
	
	SELECT SUM(t.TimerDurSec) / COUNT(1)  AS AverageTimeDurSec
	FROM   @temp                             t
	WHERE  t.TimerDurSec > 2 -- less lower bound
END



GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016/01/18
-- Description:	Increase Rss Feed Score +1
-- =============================================
CREATE PROCEDURE [dbo].[sp_Increase_RssScore] 
-- Add the parameters for the stored procedure here
	@Url NVARCHAR(MAX)
AS
BEGIN
	UPDATE dbo.RssFeeds
	SET    Score += 1
	WHERE  [Url] = @Url
END



GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_ContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016/06/07
-- Description:	Insert data in to ContactMe table
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_ContactMe]
    @name NVARCHAR(MAX) ,
    @email NVARCHAR(MAX) ,
    @subject NVARCHAR(MAX) ,
    @message NVARCHAR(MAX)
AS
    BEGIN
        BEGIN TRY
            BEGIN TRANSACTION
            INSERT  INTO [dbo].[ContactMe]
                    ( [Name] ,
                      [Email] ,
                      [Subject] ,
                      [Message],
					  [UserId]
                    )
            VALUES  ( @name ,
                      @email ,
                      @subject ,
                      @message,
					  dbo.fn_GetFirstAdminUserID()
                    )

            COMMIT TRANSACTION
        END TRY 
        BEGIN CATCH
		-- IF @@TRANCOUNT > 0
            IF XACT_STATE() <> 0
                ROLLBACK TRANSACTION	
			
            DECLARE @err_msg NVARCHAR(MAX) = ERROR_MESSAGE();

            RAISERROR(@err_msg, 18, 255);
        END CATCH
    END



GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_NewsletterSubscribeEmails]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Behzad Khosravifar
-- Create date: 2016.06.09
-- Description:	Insert into NewsletterSubscribeEmails table's
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_NewsletterSubscribeEmails]
	@Email NVARCHAR(128)
AS
BEGIN
	IF EXISTS (
	       SELECT 1
	       FROM   [dbo].[NewsletterSubscribeEmails]
	       WHERE  EmailAddress = LOWER(@Email)
	   )
	    RAISERROR(N'DuplicateEmailError', 18, 1)
	ELSE
	BEGIN
	    INSERT INTO [dbo].[NewsletterSubscribeEmails]
	      (
	        [EmailAddress]
	      )
	    VALUES
	      (
	        LOWER(@Email)
	      )
	END
END



GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Behzad Khosravifar	
-- Create date: 2016/01/18
-- Description:	Insert one rss feed item's to RssFeeds table
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
        DECLARE @DashTrimTitle NVARCHAR(MAX) = REPLACE(@Tilte, ' ', '-');
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
                INSERT  INTO dbo.RssFeeds
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
    END



GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

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
		
            DECLARE @err_msg NVARCHAR(MAX) = ERROR_MESSAGE();

            RAISERROR(@err_msg, 18, 255);
	END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[sp_SetPurchaseValue]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



 
-- =============================================
-- Author:		Ahmad Aghazadeh
-- Create date: 2015/06/13
-- Description:	Set Purchase data
-- =============================================
CREATE PROCEDURE [dbo].[sp_SetPurchaseValue] 
	-- Add the parameters for the stored procedure here
	@orderId NVARCHAR(100), 
	@packageName NVARCHAR(100),
	@productId NVARCHAR(100),
	@developerPayload NVARCHAR(100),
	@purchaseToken NVARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS(SELECT * FROM Purchase AS p WHERE p.developerPayload = @developerPayload)
	BEGIN
		UPDATE Purchase
		SET
			orderId = @orderId,
			packageName = @packageName,
			productId = @productId,
			purchaseTime =GETDATE(),
			purchaseToken =@purchaseToken
		WHERE developerPayload=@developerPayload
		
		SELECT 1 AS Result
	END
	ELSE
	BEGIN
		SELECT 0 Result
	END
	 
END




GO
/****** Object:  StoredProcedure [dbo].[sp_TrafficRankings_Insert]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_TrafficRankings_Insert]
    @GlobalRank INT ,
    @IranRank INT
AS
    BEGIN
        BEGIN TRY
            BEGIN TRANSACTION
		
            IF NOT EXISTS ( SELECT TOP ( 1 )
                                    1
                            FROM    TrafficRankings tr
                            WHERE   CONVERT(DATE, tr.ModifyDate) = CONVERT(DATE, GETDATE())
                                    AND tr.GlobalRanking = @GlobalRank
                                    AND tr.IranRanking = @IranRank
                                    AND tr.IsActive = 1 )
                BEGIN
                    INSERT  INTO TrafficRankings
                            ( -- RankID -- this column value is auto-generated
                              GlobalRanking ,
                              IranRanking ,
                              IsActive
		                    )
                    VALUES  ( @GlobalRank ,
                              @IranRank ,
                              1
		                    )
                END
		
            COMMIT TRANSACTION
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION
		
            DECLARE @err_msg NVARCHAR(MAX) = ERROR_MESSAGE();

            RAISERROR(@err_msg, 18, 255);
        END CATCH
    END



GO
/****** Object:  Trigger [dbo].[tr_CatchContactMe]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		behzad khosravifar
-- Create date: 2016.07.20
-- Description:	catch inserter data
-- =============================================
CREATE TRIGGER [dbo].[tr_CatchContactMe] ON [dbo].[ContactMe]
    AFTER INSERT, DELETE, UPDATE
AS
    BEGIN
        DECLARE @extraData NVARCHAR(MAX)

        SELECT  @extraData = ( SELECT   *
                               FROM     master.dbo.sysprocesses P
                             FOR
                               XML PATH ,
                                   ROOT
                             )
		--where  P.status not in ('background', 'sleeping')
		--and      P.cmd not in ('AWAITING COMMAND'
		--                    ,'MIRROR HANDLER'
		--                    ,'LAZY WRITER'
		--                    ,'CHECKPOINT SLEEP'
		--                    ,'RA MANAGER')
		--order by batch_duration desc


        INSERT  INTO dbo.Logger
                ( SPID ,
				  TableName,
                  Username ,
                  LoginName ,
                  ServerName ,
                  ExtraData ,
                  ModifyTime
                )
                SELECT  @@SPID , -- SPID - int
						'ContactMe' , -- TableName - varchar(50)
                        USER ,	-- Username - nvarchar(max)
                        SYSTEM_USER , -- LoginName - nvarchar(max)
                        @@SERVERNAME , -- ServerName - nvarchar(max)
                        @extraData , -- ExtraData - nvarchar(max)
                        GETDATE()  -- ModifyTime - datetime


--	RAISERROR ('You can''t change this table data! Access Denid', 16, 1);
--  ROLLBACK TRANSACTION;
        RETURN 
    END

GO
ALTER TABLE [dbo].[ContactMe] ENABLE TRIGGER [tr_CatchContactMe]
GO
/****** Object:  Trigger [dbo].[tr_CatchSetting]    Script Date: 05/08/1395 12:13:38 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		behzad khosravifar
-- Create date: 2016.07.20
-- Description:	catch inserter data
-- =============================================
CREATE TRIGGER [dbo].[tr_CatchSetting] ON [dbo].[Setting]
    AFTER INSERT, DELETE, UPDATE
AS
    BEGIN
        DECLARE @extraData NVARCHAR(MAX)

        SELECT  @extraData = ( SELECT   *
                               FROM     master.dbo.sysprocesses P
                             FOR
                               XML PATH ,
                                   ROOT
                             )
		--where  P.status not in ('background', 'sleeping')
		--and      P.cmd not in ('AWAITING COMMAND'
		--                    ,'MIRROR HANDLER'
		--                    ,'LAZY WRITER'
		--                    ,'CHECKPOINT SLEEP'
		--                    ,'RA MANAGER')
		--order by batch_duration desc


        INSERT  INTO dbo.Logger
                ( SPID ,
				  TableName,
                  Username ,
                  LoginName ,
                  ServerName ,
                  ExtraData ,
                  ModifyTime
                )
                SELECT  @@SPID , -- SPID - int
						'Setting' , -- TableName - varchar(50)
                        USER ,	-- Username - nvarchar(max)
                        SYSTEM_USER , -- LoginName - nvarchar(max)
                        @@SERVERNAME , -- ServerName - nvarchar(max)
                        @extraData , -- ExtraData - nvarchar(max)
                        GETDATE()  -- ModifyTime - datetime


--	RAISERROR ('You can''t change this table data! Access Denid', 16, 1);
--  ROLLBACK TRANSACTION;
        RETURN 
    END

GO
ALTER TABLE [dbo].[Setting] ENABLE TRIGGER [tr_CatchSetting]
GO
USE [master]
GO
ALTER DATABASE [xomorod.com_xomorod] SET  READ_WRITE 
GO
