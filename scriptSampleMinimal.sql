USE [master]
GO
/****** Object:  Database [CustomBlaBla]    Script Date: 2023/01/08 04:39:45 ******/
CREATE DATABASE [CustomBlaBla]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomBlaBla', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CustomBlaBla.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CustomBlaBla_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CustomBlaBla_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CustomBlaBla] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CustomBlaBla].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CustomBlaBla] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CustomBlaBla] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CustomBlaBla] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CustomBlaBla] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CustomBlaBla] SET ARITHABORT OFF 
GO
ALTER DATABASE [CustomBlaBla] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CustomBlaBla] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CustomBlaBla] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CustomBlaBla] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CustomBlaBla] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CustomBlaBla] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CustomBlaBla] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CustomBlaBla] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CustomBlaBla] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CustomBlaBla] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CustomBlaBla] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CustomBlaBla] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CustomBlaBla] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CustomBlaBla] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CustomBlaBla] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CustomBlaBla] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CustomBlaBla] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CustomBlaBla] SET RECOVERY FULL 
GO
ALTER DATABASE [CustomBlaBla] SET  MULTI_USER 
GO
ALTER DATABASE [CustomBlaBla] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CustomBlaBla] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CustomBlaBla] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CustomBlaBla] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CustomBlaBla] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CustomBlaBla] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CustomBlaBla', N'ON'
GO
ALTER DATABASE [CustomBlaBla] SET QUERY_STORE = OFF
GO
USE [CustomBlaBla]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[IdentifierNo] [nvarchar](max) NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverTravelInfo]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverTravelInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TravelInfoId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[AcceptedSeat] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_DriverTravelInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[EnumType] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookUpList]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookUpList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LookUpId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[ShortName] [nvarchar](max) NULL,
	[DisplayOrder] [tinyint] NULL,
	[EnumType] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_LookUpList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[Id] [int] NOT NULL,
	[DriverTravelInfoId] [int] NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassengerTravelInfo]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassengerTravelInfo](
	[PassengerId] [int] NOT NULL,
	[TravelDate] [datetime2](7) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DriverTravelInfoId] [int] NOT NULL,
 CONSTRAINT [PK_PassengerTravelInfo] PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC,
	[DriverTravelInfoId] ASC,
	[TravelDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelInfo]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginningId] [int] NOT NULL,
	[LastStationId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_TravelInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 2023/01/08 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModelId] [int] NOT NULL,
	[DriverId] [int] NOT NULL,
	[Seat] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107114703_Initial', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107164809_ChangeDriverYravelInfoModel', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107165009_AddDriverTravelInfo', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107215257_ChangePassengerTravelInfo', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107222104_ChangeDriverTravelInfo', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107225357_ChangeDriverTravelInfo2', N'6.0.4')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230107232852_ChangeDriverTravelInfo3', N'6.0.4')
GO
SET IDENTITY_INSERT [dbo].[AppUser] ON 
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (1, N'Burak', N'ÇUKURCU', N'11111122230', CAST(N'1991-07-15T00:00:00.0000000' AS DateTime2), N'05441234556', N'BİRAKBURAK@BIRAK.COM', 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (2, N'serdar', N'SELVASLI', N'11111122234', CAST(N'1991-07-15T00:00:00.0000000' AS DateTime2), N'05441234556', N'SERDAR.SELVASLI@GMAIL.COM', 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (3, N'serdar2', N'SELVASLI2', N'11111122234', CAST(N'1991-07-15T00:00:00.0000000' AS DateTime2), N'05441234556', N'SERDAR.SELVASLI2@GMAIL.COM', 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (4, N'selda', N'yurtdaş', N'113', CAST(N'2023-01-07T17:20:33.4810000' AS DateTime2), N'533', N'selda', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (5, N'string', N'string', N'string', CAST(N'2023-01-07T17:49:53.0840000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (6, N'string', N'string', N'string', CAST(N'2023-01-07T17:52:05.5510000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (7, N'string', N'string', N'string', CAST(N'2023-01-07T17:52:05.5510000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (9, N'string', N'string', N'string', CAST(N'2023-01-07T19:33:07.3570000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (10, N'string', N'string', N'string', CAST(N'2023-01-07T19:45:10.2000000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (11, N'serdar', N'selvaslı', N'123', CAST(N'2023-01-07T23:44:55.7150000' AS DateTime2), N'533', N'selvasli@gmail.com', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (12, N'string', N'string', N'string', CAST(N'2023-01-07T23:59:37.9740000' AS DateTime2), N'string', N'string', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (13, N'string2', N'string', N'string', CAST(N'2023-01-07T23:59:37.9740000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (14, N'string3', N'string', N'string', CAST(N'2023-01-07T23:59:37.9740000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (15, N'string4', N'string', N'string', CAST(N'2023-01-07T23:59:37.9740000' AS DateTime2), N'string', N'string', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [Surname], [IdentifierNo], [BirthDate], [Phone], [Email], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (16, N'string4556', N'string', N'string', CAST(N'2023-01-08T00:58:39.7410000' AS DateTime2), N'string', N'string', 1, CAST(N'2023-01-08T00:58:49.3786134' AS DateTime2), N'', CAST(N'2023-01-08T00:58:49.3786134' AS DateTime2), N'', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AppUser] OFF
GO
INSERT [dbo].[Driver] ([Id]) VALUES (1)
GO
INSERT [dbo].[Driver] ([Id]) VALUES (10)
GO
SET IDENTITY_INSERT [dbo].[DriverTravelInfo] ON 
GO
INSERT [dbo].[DriverTravelInfo] ([Id], [TravelInfoId], [VehicleId], [AcceptedSeat], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (13, 6, 1, 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DriverTravelInfo] ([Id], [TravelInfoId], [VehicleId], [AcceptedSeat], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (14, 10, 3, 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[DriverTravelInfo] ([Id], [TravelInfoId], [VehicleId], [AcceptedSeat], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (15, 11, 7, 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DriverTravelInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Lookup] ON 
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Description], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (1, N'Araçlar', N'Araç Bilgileri', 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Description], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (2, N'Şehirler', N'Şehirler', 2, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Lookup] ([Id], [Name], [Description], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (4, N'string', N'string', 0, 1, CAST(N'2023-01-07T17:49:24.0730000' AS DateTime2), N'string', CAST(N'2023-01-07T17:49:24.0730000' AS DateTime2), N'string', CAST(N'2023-01-07T17:49:24.0730000' AS DateTime2), N'string')
GO
SET IDENTITY_INSERT [dbo].[Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[LookUpList] ON 
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (1, 1, NULL, N'OPEL', N'OPEL', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (2, 1, 1, N'ASTRA', N'ASTRA', NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (3, 1, 1, N'CORSA', N'CORSA', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (4, 1, 1, N'INSIGNIA', N'INSIGNIA', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (5, 1, NULL, N'FORD', N'FORD', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (6, 1, 5, N'FIESTA', N'FIESTA', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (7, 1, 5, N'FOCUS', N'FOCUS', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (8, 1, 5, N'MONDEO', N'MONDEO', 1, 1, 0, CAST(N'2023-07-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (9, 2, NULL, N'ADANA', N'ADANA', 1, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (10, 2, NULL, N'ADIYAMAN', N'ADIYAMAN', 2, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (11, 2, NULL, N'AFYON', N'AFYON', 3, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (12, 2, NULL, N'AĞRI', N'AĞRI', 4, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (13, 2, NULL, N'AMASYA', N'AMASYA', 5, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (14, 2, NULL, N'ANKARA', N'ANKARA', 6, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (15, 2, NULL, N'ANTALYA', N'ANTALYA', 7, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (16, 2, NULL, N'ARTVİN', N'ARTVİN', 8, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (17, 2, NULL, N'AYDIN', N'AYDIN', 9, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (18, 2, NULL, N'BALIKESİR', N'BALIKESİR', 10, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (19, 2, NULL, N'BİLECİK', N'BİLECİK', 11, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (20, 2, NULL, N'BİNGÖL', N'BİNGÖL', 12, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (21, 2, NULL, N'BİTLİS', N'BİTLİS', 13, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (22, 2, NULL, N'BOLU', N'BOLU', 14, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (23, 2, NULL, N'BURDUR', N'BURDUR', 15, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (24, 2, NULL, N'BURSA', N'BURSA', 16, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (25, 2, NULL, N'ÇANAKKALE', N'ÇANAKKALE', 17, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (26, 2, NULL, N'ÇANKIRI', N'ÇANKIRI', 18, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (27, 2, NULL, N'ÇORUM', N'ÇORUM', 19, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (28, 2, NULL, N'DENİZLİ', N'DENİZLİ', 20, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (29, 2, NULL, N'DİYARBAKIR', N'DİYARBAKIR', 21, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (30, 2, NULL, N'EDİRNE', N'EDİRNE', 22, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (31, 2, NULL, N'ELAZIĞ', N'ELAZIĞ', 23, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (32, 2, NULL, N'ERZİNCAN', N'ERZİNCAN', 24, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (33, 2, NULL, N'ERZURUM', N'ERZURUM', 25, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (34, 2, NULL, N'ESKİŞEHİR', N'ESKİŞEHİR', 26, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (35, 2, NULL, N'GAZİANTEP', N'GAZİANTEP', 27, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (36, 2, NULL, N'GİRESUN', N'GİRESUN', 28, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (37, 2, NULL, N'GÜMÜŞHANE', N'GÜMÜŞHANE', 29, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (38, 2, NULL, N'HAKKARİ', N'HAKKARİ', 30, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (39, 2, NULL, N'HATAY', N'HATAY', 31, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (40, 2, NULL, N'ISPARTA', N'ISPARTA', 32, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (41, 2, NULL, N'İÇEL', N'İÇEL', 33, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (42, 2, NULL, N'İSTANBUL', N'İSTANBUL', 34, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (43, 2, NULL, N'İZMİR', N'İZMİR', 35, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (44, 2, NULL, N'KARS', N'KARS', 36, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (45, 2, NULL, N'KASTAMONU', N'KASTAMONU', 37, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (46, 2, NULL, N'KAYSERİ', N'KAYSERİ', 38, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (47, 2, NULL, N'KIRKLARELİ', N'KIRKLARELİ', 39, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (48, 2, NULL, N'KIRŞEHİR', N'KIRŞEHİR', 40, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (49, 2, NULL, N'KOCAELİ', N'KOCAELİ', 41, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (50, 2, NULL, N'KONYA', N'KONYA', 42, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (51, 2, NULL, N'KÜTAHYA', N'KÜTAHYA', 43, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (52, 2, NULL, N'MALATYA', N'MALATYA', 44, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (53, 2, NULL, N'MANİSA', N'MANİSA', 45, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (54, 2, NULL, N'KAHRAMANMARAŞ', N'KAHRAMANMARAŞ', 46, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (55, 2, NULL, N'MARDİN', N'MARDİN', 47, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (56, 2, NULL, N'MUĞLA', N'MUĞLA', 48, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (57, 2, NULL, N'MUŞ', N'MUŞ', 49, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (58, 2, NULL, N'NEVŞEHİR', N'NEVŞEHİR', 50, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (59, 2, NULL, N'NİĞDE', N'NİĞDE', 51, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (60, 2, NULL, N'ORDU', N'ORDU', 52, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (61, 2, NULL, N'RİZE', N'RİZE', 53, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (62, 2, NULL, N'SAKARYA', N'SAKARYA', 54, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (63, 2, NULL, N'SAMSUN', N'SAMSUN', 55, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (64, 2, NULL, N'SİİRT', N'SİİRT', 56, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (65, 2, NULL, N'SİNOP', N'SİNOP', 57, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (66, 2, NULL, N'SİVAS', N'SİVAS', 58, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (67, 2, NULL, N'TEKİRDAĞ', N'TEKİRDAĞ', 59, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (68, 2, NULL, N'TOKAT', N'TOKAT', 60, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (69, 2, NULL, N'TRABZON', N'TRABZON', 61, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (70, 2, NULL, N'TUNCELİ', N'TUNCELİ', 62, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (71, 2, NULL, N'ŞANLIURFA', N'ŞANLIURFA', 63, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (72, 2, NULL, N'UŞAK', N'UŞAK', 64, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (73, 2, NULL, N'VAN', N'VAN', 65, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (74, 2, NULL, N'YOZGAT', N'YOZGAT', 66, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (75, 2, NULL, N'ZONGULDAK', N'ZONGULDAK', 67, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (76, 2, NULL, N'AKSARAY', N'AKSARAY', 68, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (77, 2, NULL, N'BAYBURT', N'BAYBURT', 69, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (78, 2, NULL, N'KARAMAN', N'KARAMAN', 70, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (79, 2, NULL, N'KIRIKKALE', N'KIRIKKALE', 71, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (80, 2, NULL, N'BATMAN', N'BATMAN', 72, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (81, 2, NULL, N'ŞIRNAK', N'ŞIRNAK', 73, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (82, 2, NULL, N'BARTIN', N'BARTIN', 74, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (83, 2, NULL, N'ARDAHAN', N'ARDAHAN', 75, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (84, 2, NULL, N'IĞDIR', N'IĞDIR', 76, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (85, 2, NULL, N'YALOVA', N'YALOVA', 77, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (86, 2, NULL, N'KARABÜK', N'KARABÜK', 78, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (87, 2, NULL, N'KİLİS', N'KİLİS', 79, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (88, 2, NULL, N'OSMANİYE', N'OSMANİYE', 80, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (89, 2, NULL, N'DÜZCE', N'DÜZCE', 81, NULL, 0, CAST(N'2023-01-07T14:13:36.8500000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LookUpList] ([Id], [LookUpId], [ParentId], [Name], [ShortName], [DisplayOrder], [EnumType], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (90, 2, NULL, N'string', N'string', NULL, 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[LookUpList] OFF
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (11, NULL)
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (12, NULL)
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (13, NULL)
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (14, NULL)
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (15, NULL)
GO
INSERT [dbo].[Passenger] ([Id], [DriverTravelInfoId]) VALUES (16, NULL)
GO
INSERT [dbo].[PassengerTravelInfo] ([PassengerId], [TravelDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy], [IsDeleted], [DriverTravelInfoId]) VALUES (11, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 13)
GO
INSERT [dbo].[PassengerTravelInfo] ([PassengerId], [TravelDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy], [IsDeleted], [DriverTravelInfoId]) VALUES (12, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 13)
GO
INSERT [dbo].[PassengerTravelInfo] ([PassengerId], [TravelDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy], [IsDeleted], [DriverTravelInfoId]) VALUES (13, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 13)
GO
INSERT [dbo].[PassengerTravelInfo] ([PassengerId], [TravelDate], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy], [IsDeleted], [DriverTravelInfoId]) VALUES (14, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0, 13)
GO
SET IDENTITY_INSERT [dbo].[TravelInfo] ON 
GO
INSERT [dbo].[TravelInfo] ([Id], [BeginningId], [LastStationId], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (6, 9, 19, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TravelInfo] ([Id], [BeginningId], [LastStationId], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (7, 9, 21, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TravelInfo] ([Id], [BeginningId], [LastStationId], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (8, 9, 22, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TravelInfo] ([Id], [BeginningId], [LastStationId], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (10, 9, 20, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TravelInfo] ([Id], [BeginningId], [LastStationId], [IsDeleted], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [DeletedDate], [DeletedBy]) VALUES (11, 9, 23, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TravelInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 
GO
INSERT [dbo].[Vehicle] ([Id], [ModelId], [DriverId], [Seat], [IsDeleted]) VALUES (1, 2, 1, 4, 0)
GO
INSERT [dbo].[Vehicle] ([Id], [ModelId], [DriverId], [Seat], [IsDeleted]) VALUES (3, 3, 10, 3, 0)
GO
INSERT [dbo].[Vehicle] ([Id], [ModelId], [DriverId], [Seat], [IsDeleted]) VALUES (7, 5, 10, 5, 0)
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
/****** Object:  Index [IX_DriverTravelInfo_TravelInfoId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_DriverTravelInfo_TravelInfoId] ON [dbo].[DriverTravelInfo]
(
	[TravelInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverTravelInfo_VehicleId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_DriverTravelInfo_VehicleId] ON [dbo].[DriverTravelInfo]
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LookUpList_LookUpId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_LookUpList_LookUpId] ON [dbo].[LookUpList]
(
	[LookUpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LookUpList_ParentId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_LookUpList_ParentId] ON [dbo].[LookUpList]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Passenger_DriverTravelInfoId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_Passenger_DriverTravelInfoId] ON [dbo].[Passenger]
(
	[DriverTravelInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PassengerTravelInfo_DriverTravelInfoId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_PassengerTravelInfo_DriverTravelInfoId] ON [dbo].[PassengerTravelInfo]
(
	[DriverTravelInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelInfo_BeginningId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_TravelInfo_BeginningId] ON [dbo].[TravelInfo]
(
	[BeginningId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TravelInfo_LastStationId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_TravelInfo_LastStationId] ON [dbo].[TravelInfo]
(
	[LastStationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehicle_DriverId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_Vehicle_DriverId] ON [dbo].[Vehicle]
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehicle_ModelId]    Script Date: 2023/01/08 04:39:46 ******/
CREATE NONCLUSTERED INDEX [IX_Vehicle_ModelId] ON [dbo].[Vehicle]
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PassengerTravelInfo] ADD  CONSTRAINT [DF__Passenger__IsDel__5070F446]  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[PassengerTravelInfo] ADD  CONSTRAINT [DF__Passenger__Drive__5AEE82B9]  DEFAULT ((1)) FOR [DriverTravelInfoId]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_AppUser_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_AppUser_Id]
GO
ALTER TABLE [dbo].[DriverTravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_DriverTravelInfo_TravelInfo_TravelInfoId] FOREIGN KEY([TravelInfoId])
REFERENCES [dbo].[TravelInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DriverTravelInfo] CHECK CONSTRAINT [FK_DriverTravelInfo_TravelInfo_TravelInfoId]
GO
ALTER TABLE [dbo].[DriverTravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_DriverTravelInfo_Vehicle_VehicleId] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DriverTravelInfo] CHECK CONSTRAINT [FK_DriverTravelInfo_Vehicle_VehicleId]
GO
ALTER TABLE [dbo].[LookUpList]  WITH CHECK ADD  CONSTRAINT [FK_LookUpList_Lookup_LookUpId] FOREIGN KEY([LookUpId])
REFERENCES [dbo].[Lookup] ([Id])
GO
ALTER TABLE [dbo].[LookUpList] CHECK CONSTRAINT [FK_LookUpList_Lookup_LookUpId]
GO
ALTER TABLE [dbo].[LookUpList]  WITH CHECK ADD  CONSTRAINT [FK_LookUpList_LookUpList_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[LookUpList] ([Id])
GO
ALTER TABLE [dbo].[LookUpList] CHECK CONSTRAINT [FK_LookUpList_LookUpList_ParentId]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_AppUser_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_AppUser_Id]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_DriverTravelInfo_DriverTravelInfoId] FOREIGN KEY([DriverTravelInfoId])
REFERENCES [dbo].[DriverTravelInfo] ([Id])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_DriverTravelInfo_DriverTravelInfoId]
GO
ALTER TABLE [dbo].[PassengerTravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId] FOREIGN KEY([DriverTravelInfoId])
REFERENCES [dbo].[DriverTravelInfo] ([Id])
GO
ALTER TABLE [dbo].[PassengerTravelInfo] CHECK CONSTRAINT [FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId]
GO
ALTER TABLE [dbo].[PassengerTravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_PassengerTravelInfo_Passenger_PassengerId] FOREIGN KEY([PassengerId])
REFERENCES [dbo].[Passenger] ([Id])
GO
ALTER TABLE [dbo].[PassengerTravelInfo] CHECK CONSTRAINT [FK_PassengerTravelInfo_Passenger_PassengerId]
GO
ALTER TABLE [dbo].[TravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_TravelInfo_LookUpList_BeginningId] FOREIGN KEY([BeginningId])
REFERENCES [dbo].[LookUpList] ([Id])
GO
ALTER TABLE [dbo].[TravelInfo] CHECK CONSTRAINT [FK_TravelInfo_LookUpList_BeginningId]
GO
ALTER TABLE [dbo].[TravelInfo]  WITH CHECK ADD  CONSTRAINT [FK_TravelInfo_LookUpList_LastStationId] FOREIGN KEY([LastStationId])
REFERENCES [dbo].[LookUpList] ([Id])
GO
ALTER TABLE [dbo].[TravelInfo] CHECK CONSTRAINT [FK_TravelInfo_LookUpList_LastStationId]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Driver_DriverId] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([Id])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Driver_DriverId]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_LookUpList_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[LookUpList] ([Id])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_LookUpList_ModelId]
GO
USE [master]
GO
ALTER DATABASE [CustomBlaBla] SET  READ_WRITE 
GO
