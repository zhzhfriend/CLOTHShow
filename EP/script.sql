USE [master]
GO
/****** Object:  Database [EPManageWeb.Entities.EPDataContext]    Script Date: 07/08/2013 09:45:21 ******/
CREATE DATABASE [EPManageWeb.Entities.EPDataContext] ON  PRIMARY 
( NAME = N'EPManageWeb.Entities.EPDataContext', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\EPManageWeb.Entities.EPDataContext.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EPManageWeb.Entities.EPDataContext_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\EPManageWeb.Entities.EPDataContext_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EPManageWeb.Entities.EPDataContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ARITHABORT OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET AUTO_CLOSE ON
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET  ENABLE_BROKER
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET HONOR_BROKER_PRIORITY ON
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET  READ_WRITE
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET  MULTI_USER
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EPManageWeb.Entities.EPDataContext] SET DB_CHAINING OFF
GO
USE [EPManageWeb.Entities.EPDataContext]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[RealName] [nvarchar](max) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UserType] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClothesTypes]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClothesTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Parent_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ClothesTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent_Id] ON [dbo].[ClothesTypes] 
(
	[Parent_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClothesParts]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClothesParts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Parent_Id] [int] NULL,
	[ClothType_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ClothesParts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ClothType_Id] ON [dbo].[ClothesParts] 
(
	[ClothType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent_Id] ON [dbo].[ClothesParts] 
(
	[Parent_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clothes]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clothes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SampleNO] [nvarchar](50) NULL,
	[ProductNO] [nvarchar](50) NULL,
	[ProductedCount] [int] NOT NULL,
	[SaledCount] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[AssessoriesFile] [nvarchar](100) NULL,
	[ClothesPics] [nvarchar](500) NULL,
	[ModelVersionPics] [nvarchar](500) NULL,
	[SampleFile] [nvarchar](100) NULL,
	[StylePics] [nvarchar](500) NULL,
	[TechnologyFile] [nvarchar](100) NULL,
	[ClothesSize] [nvarchar](1000) NULL,
	[Tags] [nvarchar](1000) NULL,
	[ViewCount] [int] NOT NULL,
	[ClothesType_Id] [int] NULL,
	[PingLei] [nvarchar](max) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Clothes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ClothesType_Id] ON [dbo].[Clothes] 
(
	[ClothesType_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SessionUsers]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[SessionId] [nvarchar](50) NULL,
	[UserId] [int] NOT NULL,
	[LastActivityDT] [datetime] NOT NULL,
	[LoginDT] [datetime] NOT NULL,
	[RemoteIP] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SessionUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[SessionUsers] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationLogs]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OperationType] [nvarchar](max) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[User_Id] [int] NULL,
	[Clothes_Id] [int] NULL,
 CONSTRAINT [PK_dbo.OperationLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Clothes_Id] ON [dbo].[OperationLogs] 
(
	[Clothes_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_User_Id] ON [dbo].[OperationLogs] 
(
	[User_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Path] [nvarchar](100) NULL,
	[CreateDT] [datetime] NOT NULL,
	[ModifiedDT] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Clothes_Id] [int] NULL,
 CONSTRAINT [PK_dbo.UploadFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Clothes_Id] ON [dbo].[UploadFiles] 
(
	[Clothes_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClothesPartTypes]    Script Date: 07/08/2013 09:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClothesPartTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Order] [int] NOT NULL,
	[ClothesPart_Id] [int] NULL,
	[Parent_Id] [int] NULL,
 CONSTRAINT [PK_dbo.ClothesPartTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ClothesPart_Id] ON [dbo].[ClothesPartTypes] 
(
	[ClothesPart_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent_Id] ON [dbo].[ClothesPartTypes] 
(
	[Parent_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__Clothes__CreateD__182C9B23]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[Clothes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [CreateDT]
GO
/****** Object:  Default [DF__Clothes__Modifie__1920BF5C]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[Clothes] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [ModifiedDT]
GO
/****** Object:  Default [DF__Clothes__IsDelet__1A14E395]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[Clothes] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  ForeignKey [FK_dbo.ClothesTypes_dbo.ClothesTypes_Parent_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[ClothesTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClothesTypes_dbo.ClothesTypes_Parent_Id] FOREIGN KEY([Parent_Id])
REFERENCES [dbo].[ClothesTypes] ([Id])
GO
ALTER TABLE [dbo].[ClothesTypes] CHECK CONSTRAINT [FK_dbo.ClothesTypes_dbo.ClothesTypes_Parent_Id]
GO
/****** Object:  ForeignKey [FK_dbo.ClothesParts_dbo.ClothesParts_Parent_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[ClothesParts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClothesParts_dbo.ClothesParts_Parent_Id] FOREIGN KEY([Parent_Id])
REFERENCES [dbo].[ClothesParts] ([Id])
GO
ALTER TABLE [dbo].[ClothesParts] CHECK CONSTRAINT [FK_dbo.ClothesParts_dbo.ClothesParts_Parent_Id]
GO
/****** Object:  ForeignKey [FK_dbo.ClothesParts_dbo.ClothesTypes_ClothType_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[ClothesParts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClothesParts_dbo.ClothesTypes_ClothType_Id] FOREIGN KEY([ClothType_Id])
REFERENCES [dbo].[ClothesTypes] ([Id])
GO
ALTER TABLE [dbo].[ClothesParts] CHECK CONSTRAINT [FK_dbo.ClothesParts_dbo.ClothesTypes_ClothType_Id]
GO
/****** Object:  ForeignKey [FK_dbo.Clothes_dbo.ClothesTypes_ClothesType_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[Clothes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Clothes_dbo.ClothesTypes_ClothesType_Id] FOREIGN KEY([ClothesType_Id])
REFERENCES [dbo].[ClothesTypes] ([Id])
GO
ALTER TABLE [dbo].[Clothes] CHECK CONSTRAINT [FK_dbo.Clothes_dbo.ClothesTypes_ClothesType_Id]
GO
/****** Object:  ForeignKey [FK_dbo.SessionUsers_dbo.Users_UserId]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[SessionUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SessionUsers_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SessionUsers] CHECK CONSTRAINT [FK_dbo.SessionUsers_dbo.Users_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.OperationLogs_dbo.Clothes_Clothes_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[OperationLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OperationLogs_dbo.Clothes_Clothes_Id] FOREIGN KEY([Clothes_Id])
REFERENCES [dbo].[Clothes] ([Id])
GO
ALTER TABLE [dbo].[OperationLogs] CHECK CONSTRAINT [FK_dbo.OperationLogs_dbo.Clothes_Clothes_Id]
GO
/****** Object:  ForeignKey [FK_dbo.OperationLogs_dbo.Users_User_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[OperationLogs]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OperationLogs_dbo.Users_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[OperationLogs] CHECK CONSTRAINT [FK_dbo.OperationLogs_dbo.Users_User_Id]
GO
/****** Object:  ForeignKey [FK_dbo.UploadFiles_dbo.Clothes_Clothes_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[UploadFiles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UploadFiles_dbo.Clothes_Clothes_Id] FOREIGN KEY([Clothes_Id])
REFERENCES [dbo].[Clothes] ([Id])
GO
ALTER TABLE [dbo].[UploadFiles] CHECK CONSTRAINT [FK_dbo.UploadFiles_dbo.Clothes_Clothes_Id]
GO
/****** Object:  ForeignKey [FK_dbo.ClothesPartTypes_dbo.ClothesParts_ClothesPart_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[ClothesPartTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClothesPartTypes_dbo.ClothesParts_ClothesPart_Id] FOREIGN KEY([ClothesPart_Id])
REFERENCES [dbo].[ClothesParts] ([Id])
GO
ALTER TABLE [dbo].[ClothesPartTypes] CHECK CONSTRAINT [FK_dbo.ClothesPartTypes_dbo.ClothesParts_ClothesPart_Id]
GO
/****** Object:  ForeignKey [FK_dbo.ClothesPartTypes_dbo.ClothesPartTypes_Parent_Id]    Script Date: 07/08/2013 09:45:25 ******/
ALTER TABLE [dbo].[ClothesPartTypes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClothesPartTypes_dbo.ClothesPartTypes_Parent_Id] FOREIGN KEY([Parent_Id])
REFERENCES [dbo].[ClothesPartTypes] ([Id])
GO
ALTER TABLE [dbo].[ClothesPartTypes] CHECK CONSTRAINT [FK_dbo.ClothesPartTypes_dbo.ClothesPartTypes_Parent_Id]
GO
