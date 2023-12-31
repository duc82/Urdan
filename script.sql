USE [master]
GO
/****** Object:  Database [Urdan]    Script Date: 10/4/2023 11:49:26 PM ******/
CREATE DATABASE [Urdan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'daubuoi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\daubuoi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'daubuoi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\daubuoi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Urdan] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Urdan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Urdan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Urdan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Urdan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Urdan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Urdan] SET ARITHABORT OFF 
GO
ALTER DATABASE [Urdan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Urdan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Urdan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Urdan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Urdan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Urdan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Urdan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Urdan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Urdan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Urdan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Urdan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Urdan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Urdan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Urdan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Urdan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Urdan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Urdan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Urdan] SET RECOVERY FULL 
GO
ALTER DATABASE [Urdan] SET  MULTI_USER 
GO
ALTER DATABASE [Urdan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Urdan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Urdan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Urdan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Urdan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Urdan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Urdan', N'ON'
GO
ALTER DATABASE [Urdan] SET QUERY_STORE = ON
GO
ALTER DATABASE [Urdan] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Urdan]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/4/2023 11:49:27 PM ******/
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
/****** Object:  Table [dbo].[Addresses]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Ward] [nvarchar](max) NOT NULL,
	[District] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ShippingAddressId] [int] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[PaymentMethod] [nvarchar](max) NOT NULL,
	[ShippingFee] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Size] [nvarchar](max) NOT NULL,
	[Height] [int] NOT NULL,
	[Material] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Discount] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingAddresses]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Ward] [nvarchar](max) NOT NULL,
	[District] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ShippingAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/4/2023 11:49:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230929064902_lan-1', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230929153847_lan-2', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230929160101_lan-3', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930064220_lan-4', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930154222_lan-5', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930162341_lan-7', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930162858_lan-8', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231001070551_lan-9', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231001071049_lan-10', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231001071516_lan-11', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231003075614_lan-12', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231003093620_lan-13', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231004105741_lancuoi', N'7.0.11')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, N'Aillen')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, N'ALICE')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'ARABICA')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, N'AURORA')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, N'BELLA')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, N'Binas')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (7, N'Euro')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (8, N'Hobu')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (9, N'Luxury')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (10, N'Miso')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (11, N'Poplar')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (12, N'Tabu')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (13, N'Woody')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Sofa')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Chair')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Decoration')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Bookshelf')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Table')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'Wardrobe')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ProductId], [Name]) VALUES (6, 3, N'Black')
INSERT [dbo].[Colors] ([Id], [ProductId], [Name]) VALUES (7, 3, N'Pink')
INSERT [dbo].[Colors] ([Id], [ProductId], [Name]) VALUES (8, 3, N'Gray')
INSERT [dbo].[Colors] ([Id], [ProductId], [Name]) VALUES (9, 3, N'White')
INSERT [dbo].[Colors] ([Id], [ProductId], [Name]) VALUES (11, 5, N'Lightblue')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (11, 3, N'/upload\2-042bbb81b1b64e5287a9a94736f714bf-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (12, 3, N'/upload\2-3226a189b47d46bc879440f675006d95-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (13, 3, N'/upload\2-acaf4822a6e84c0bad48378c37346e92-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (14, 3, N'/upload\3-8a701732108344808b1ab5081a3e255c-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (16, 5, N'/upload\2-e75ada50bdb54ea99d0db5af778c40bb-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (17, 6, N'/upload\cinderela-goc-chinh-dien-darkgrey-429b69161e8b4c85bf93cc7f5d4eaf87-master.webp')
INSERT [dbo].[Images] ([Id], [ProductId], [Url]) VALUES (18, 6, N'/upload\cinderella-goc-chinh-dien-light-grey-0951fd57636649fd8576abf4b3b5050e-master.webp')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [Quantity], [Price], [Color]) VALUES (17, 24, 3, 2, CAST(38.00 AS Decimal(18, 2)), N'Black')
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [ShippingAddressId], [Status], [Total], [CreatedAt], [DeliveryDate], [PaymentMethod], [ShippingFee]) VALUES (24, 1, 5, N'Ongoing deliveries', CAST(48.00 AS Decimal(18, 2)), CAST(N'2023-10-04T22:22:05.0704408' AS DateTime2), CAST(N'2023-10-07' AS Date), N'Cash on delivery', CAST(10.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [Name], [Size], [Height], [Material], [Description], [Price], [Discount], [CreatedAt]) VALUES (3, 2, 9, N'Luxury Chair', N'H80/45 x D40 x R48', 5, N'Powder coated iron legs, MDS plastic side', N'The seat''s face is deeply recessed, the shape of the chair is like a cascading waterfall that keeps the occupant comfortable by reducing pressure on the back and thighs. Thereby you can sit longer in the chair without feeling tired.  Using lovely luxury chairs is a smart solution to save space for your home. You can freely choose color combinations, freely change for any space and application.  The material is modern, durable, sturdy. ', CAST(20.00 AS Decimal(18, 2)), 5, CAST(N'2023-10-01T17:59:27.2976235' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [Name], [Size], [Height], [Material], [Description], [Price], [Discount], [CreatedAt]) VALUES (5, 2, 7, N'Euro Chair', N'H44 x D42 x R43.', 5, N'Synthetic resins', N'The body and seat are stylized with many alternating holes, creating ventilation when sitting.  100% molded plastic chair is very sturdy.  Suitable for dining rooms, restaurant chairs, cafes, or receptions.', CAST(50.00 AS Decimal(18, 2)), 0, CAST(N'2023-10-04T23:30:43.2175113' AS DateTime2))
INSERT [dbo].[Products] ([Id], [CategoryId], [BrandId], [Name], [Size], [Height], [Material], [Description], [Price], [Discount], [CreatedAt]) VALUES (6, 1, 5, N'Bella Corner Sofa', N'D200/220/240*R90*C87 cm', 50, N'Indonesian fabric', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', CAST(250.00 AS Decimal(18, 2)), 5, CAST(N'2023-10-04T23:36:42.9201686' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (1, 3, 1, 4, N'very good chair', CAST(N'2023-10-04T17:23:29.4687014' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (2, 3, 1, 4, N'lmao chair', CAST(N'2023-10-04T17:55:16.9001688' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (3, 3, 1, 3, N'lala', CAST(N'2023-10-04T22:23:11.4656944' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (4, 3, 1, 1, N'very bad', CAST(N'2023-10-04T22:29:51.5885194' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (5, 3, 1, 5, N'sdfsdfsdfsdf', CAST(N'2023-10-04T22:32:41.7843214' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (6, 3, 1, 2, N'dont understand why', CAST(N'2023-10-04T22:35:58.2851332' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (7, 3, 1, 1, N'very boring', CAST(N'2023-10-04T22:41:53.8762844' AS DateTime2))
INSERT [dbo].[Ratings] ([Id], [ProductId], [UserId], [Star], [Content], [CreatedAt]) VALUES (8, 3, 1, 1, N'nhu cc', CAST(N'2023-10-04T22:45:35.0440978' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[ShippingAddresses] ON 

INSERT [dbo].[ShippingAddresses] ([Id], [FirstName], [LastName], [Ward], [District], [City], [Detail], [Phone]) VALUES (1, N'Duc', N'Dang', N'Thach ban', N'Long Bien', N'Ha Noi', N'To 9', N'0539482489')
INSERT [dbo].[ShippingAddresses] ([Id], [FirstName], [LastName], [Ward], [District], [City], [Detail], [Phone]) VALUES (2, N'Duc', N'Dang', N'Thach ban', N'Long Bien', N'Ha Noi', N'To 9', N'0539482489')
INSERT [dbo].[ShippingAddresses] ([Id], [FirstName], [LastName], [Ward], [District], [City], [Detail], [Phone]) VALUES (3, N'Duc', N'Dang', N'Thach ban', N'Long Bien', N'Ha Noi', N'To 9', N'0539482489')
INSERT [dbo].[ShippingAddresses] ([Id], [FirstName], [LastName], [Ward], [District], [City], [Detail], [Phone]) VALUES (4, N'Duc', N'Dang', N'Thach ban', N'Long Bien', N'Ha Noi', N'To 9', N'0539482489')
INSERT [dbo].[ShippingAddresses] ([Id], [FirstName], [LastName], [Ward], [District], [City], [Detail], [Phone]) VALUES (5, N'Duc', N'Dang', N'Thach ban', N'Long Bien', N'Ha Noi', N'To 9', N'0539482489')
SET IDENTITY_INSERT [dbo].[ShippingAddresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Username], [Email], [Password], [Role], [CreatedAt]) VALUES (1, N'admin', N'admin@gmail.com', N'$2a$10$FA713GtvLOmFwEknkH12YeHqipWna7YhngPN1m5O6e58H99KwRZEm', 1, CAST(N'2023-09-29T13:57:16.1214961' AS DateTime2))
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password], [Role], [CreatedAt]) VALUES (2, N'user', N'user@gmail.com', N'$2a$10$J5QWkG5QORYeaEGCW66dnOt0NkrDyQ7rRKp38Zm3Ki4.DW3XIHXiO', 0, CAST(N'2023-09-29T18:40:11.3022141' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Addresses_UserId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_UserId] ON [dbo].[Addresses]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Colors_ProductId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Colors_ProductId] ON [dbo].[Colors]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ShippingAddressId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ShippingAddressId] ON [dbo].[Orders]
(
	[ShippingAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ratings_ProductId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_ProductId] ON [dbo].[Ratings]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ratings_UserId]    Script Date: 10/4/2023 11:49:27 PM ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_UserId] ON [dbo].[Ratings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDefault]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [PaymentMethod]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.0)) FOR [ShippingFee]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Users_UserId]
GO
ALTER TABLE [dbo].[Colors]  WITH CHECK ADD  CONSTRAINT [FK_Colors_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Colors] CHECK CONSTRAINT [FK_Colors_Products_ProductId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShippingAddresses_ShippingAddressId] FOREIGN KEY([ShippingAddressId])
REFERENCES [dbo].[ShippingAddresses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShippingAddresses_ShippingAddressId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Products_ProductId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [Urdan] SET  READ_WRITE 
GO
