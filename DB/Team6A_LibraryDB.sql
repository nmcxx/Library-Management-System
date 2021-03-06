USE [master]
GO
/****** Object:  Database [Team6A_LibraryDB]    Script Date: 04/24/2013 04:06:20 ******/
CREATE DATABASE [Team6A_LibraryDB] ON  PRIMARY 
( NAME = N'library', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\library.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'library_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\library_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Team6A_LibraryDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Team6A_LibraryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Team6A_LibraryDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET ARITHABORT OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Team6A_LibraryDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Team6A_LibraryDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Team6A_LibraryDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [Team6A_LibraryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Team6A_LibraryDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Team6A_LibraryDB] SET  READ_WRITE
GO
ALTER DATABASE [Team6A_LibraryDB] SET RECOVERY FULL
GO
ALTER DATABASE [Team6A_LibraryDB] SET  MULTI_USER
GO
ALTER DATABASE [Team6A_LibraryDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Team6A_LibraryDB] SET DB_CHAINING OFF
GO
USE [Team6A_LibraryDB]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 04/24/2013 04:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[MemberName] [varchar](20) NOT NULL,
	[Address] [varchar](50) NULL,
	[PhoneNumber] [varchar](10) NOT NULL,
	[NIRC] [varchar](10) NOT NULL,
	[Email] [varchar](20) NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (17, N'Paul Allan', N'#12-09 Jurong East', N'76544567', N'4678767', N'paulallan@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (18, N'Sumatra', N'#89-12 Clementi', N'678907865', N'7808', N'sumatra@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (20, N'Ye Maw', N'#12-23, Sentosa Cove Village', N'678999', N'67890', N'yemaw@yemaw.me')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (21, N'Alison', N'No,6,jurong east', N'434235', N'343543432', N'alison@gmaill.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (22, N'Michael', N'No-342,clementi', N'53423432', N'3432435', N'michael@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (23, N'kenneth', N'#09-261,pioneer', N'435342342', N'23554342', N'kenneth@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (24, N'jason', N'#08-423,bugis', N'35222434', N'2453343', N'jason@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (25, N'Michiko', N'#02-343,clementi', N'343454543', N'53424534', N'michiko@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (26, N'Uma', N'#01-433,jurong east', N'24353245', N'1234524', N'Uma@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (27, N'Ruby', N'#02-342,jurong point', N'34542535', N'234535453', N'Ruby@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (28, N'Richael', N'#03-342,clementi', N'4255432435', N'1324565', N'Richael@gmail.com')
INSERT [dbo].[Members] ([MemberID], [MemberName], [Address], [PhoneNumber], [NIRC], [Email]) VALUES (29, N'Jordan', N'#02-343,clementi', N'2343433', N'2345623456', N'Jordan@gmail.com')
SET IDENTITY_INSERT [dbo].[Members] OFF
/****** Object:  Table [dbo].[BooksModels]    Script Date: 04/24/2013 04:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BooksModels](
	[BookModelId] [int] IDENTITY(1,1) NOT NULL,
	[BookTitle] [varchar](20) NOT NULL,
	[BookDescription] [varchar](50) NULL,
	[Author] [varchar](15) NOT NULL,
	[PublisherName] [varchar](15) NULL,
	[PublishDate] [date] NULL,
	[BookCategory] [varchar](20) NOT NULL,
	[MaxAvailableDayToRent] [smallint] NULL,
	[RentalPricePerDay] [numeric](18, 0) NULL,
 CONSTRAINT [PK_BooksModels] PRIMARY KEY CLUSTERED 
(
	[BookModelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BooksModels] ON
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (28, N'KaungFu Panda', N'Book Description. Book Description.', N'Paul', N'5Star', CAST(0x05370B00 AS Date), N'Story', 23, CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (37, N'Fundamental of C#', N'Programming E-Book', N'Paul', N'ONeal', CAST(0xEE360B00 AS Date), N'Programming', 35, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (38, N'Data Mining', N'Book Description. Book Description.', N'David', N'Paramount', CAST(0xEE360B00 AS Date), N'Story', 23, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (40, N'Mastering in Java', N'Programming E-Book', N'David', N'ONeal', CAST(0xEE360B00 AS Date), N'Programming', 12, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (41, N'Mr. Green', N'Book Description. Book Description.', N'Timberlee', N'Paramount', CAST(0x05370B00 AS Date), N'Story', 30, CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (42, N'Gone with the wind', N'retfare', N'Michael', N'Richael', CAST(0xFF360B00 AS Date), N'fiction', 3, CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (43, N'Twilight', N'Story of twilight', N'Jordan', N'Alison', CAST(0xFF360B00 AS Date), N'Non fiction', 3, CAST(12 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (44, N'Friends', N'about friends', N'July', N'Jone', CAST(0xFA360B00 AS Date), N'Comedy', 4, CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (45, N'Monk', N'funny book', N'Richael', N'joseph', CAST(0xF3360B00 AS Date), N'Comedy', 3, CAST(12 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (46, N'Thunder', N'about natural disaster', N'jue', N'kenneth', CAST(0x0A370B00 AS Date), N'fiction', 3, CAST(11 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (47, N'Breaking Down', N'love story', N'Robert', N'aurthur', CAST(0x14370B00 AS Date), N'story', 5, CAST(14 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (48, N'Advanced C#', N'about C#', N'M,Hill', N'christine', CAST(0xF4360B00 AS Date), N'Programming', 23, CAST(16 AS Numeric(18, 0)))
INSERT [dbo].[BooksModels] ([BookModelId], [BookTitle], [BookDescription], [Author], [PublisherName], [PublishDate], [BookCategory], [MaxAvailableDayToRent], [RentalPricePerDay]) VALUES (49, N'Google Story', N'Google Story', N'Allen', N'5Star', CAST(0xDC360B00 AS Date), N'Story', 45, CAST(2 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[BooksModels] OFF
/****** Object:  Table [dbo].[Books]    Script Date: 04/24/2013 04:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookModelID] [int] NOT NULL,
	[BookStatus] [smallint] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (24, 38, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (25, 41, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (26, 41, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (27, 41, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (28, 41, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (29, 40, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (30, 40, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (31, 40, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (32, 37, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (33, 37, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (34, 28, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (35, 28, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (36, 37, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (37, 42, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (38, 42, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (39, 42, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (40, 42, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (41, 42, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (42, 42, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (43, 38, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (44, 38, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (45, 38, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (46, 43, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (47, 43, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (48, 44, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (49, 44, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (50, 44, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (51, 45, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (52, 45, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (53, 48, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (54, 48, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (55, 46, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (56, 46, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (57, 46, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (58, 47, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (59, 47, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (60, 47, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (61, 47, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (62, 47, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (63, 28, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (64, 28, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (65, 28, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (66, 28, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (67, 28, 0)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (68, 28, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (69, 49, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (70, 49, 1)
INSERT [dbo].[Books] ([BookID], [BookModelID], [BookStatus]) VALUES (71, 49, 0)
SET IDENTITY_INSERT [dbo].[Books] OFF
/****** Object:  Table [dbo].[LibTrans]    Script Date: 04/24/2013 04:06:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibTrans](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[LendDate] [date] NOT NULL,
	[ReturnDate] [date] NOT NULL,
	[ChargeAmount] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_LibTrans] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LibTrans] ON
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (21, 34, 21, CAST(0x01370B00 AS Date), CAST(0x01370B00 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (22, 35, 22, CAST(0x01370B00 AS Date), CAST(0x01370B00 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (23, 29, 22, CAST(0x01370B00 AS Date), CAST(0x05370B00 AS Date), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (24, 31, 25, CAST(0x01370B00 AS Date), CAST(0x05370B00 AS Date), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (25, 49, 26, CAST(0x01370B00 AS Date), CAST(0x01370B00 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (26, 26, 28, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (27, 47, 29, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (28, 52, 21, CAST(0x01370B00 AS Date), CAST(0x05370B00 AS Date), CAST(48 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (29, 43, 26, CAST(0x01370B00 AS Date), CAST(0x01370B00 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (30, 24, 24, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (31, 34, 25, CAST(0x01370B00 AS Date), CAST(0x05370B00 AS Date), CAST(20 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (32, 56, 29, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (33, 53, 22, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (34, 54, 23, CAST(0x01370B00 AS Date), CAST(0x01370B00 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (35, 37, 26, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (36, 39, 27, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (37, 38, 28, CAST(0x01370B00 AS Date), CAST(0x05370B00 AS Date), CAST(128 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (38, 59, 25, CAST(0x01370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (39, 33, 21, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (40, 30, 24, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (41, 34, 21, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (42, 63, 23, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (43, 67, 25, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (45, 71, 23, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[LibTrans] ([TransactionID], [BookID], [MemberID], [LendDate], [ReturnDate], [ChargeAmount]) VALUES (46, 28, 24, CAST(0x05370B00 AS Date), CAST(0x00000000 AS Date), CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[LibTrans] OFF
/****** Object:  View [dbo].[TotalMembersConsume]    Script Date: 04/24/2013 04:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[TotalMembersConsume]
as
select m.MemberName, m.MemberID, SUM(t.ChargeAmount) as TotalConsumeAmount
from LibTrans t, Members m
where t.MemberID = m.MemberID
group by m.MemberID, m.MemberName
GO
/****** Object:  View [dbo].[MemberBookRent]    Script Date: 04/24/2013 04:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[MemberBookRent]
as 
select l.MemberID, m.MemberName, bm.BookTitle, l.ChargeAmount, l.ReturnDate
from LibTrans l ,Books b, Members m, BooksModels bm
where b.BookID=l.BookID and m.MemberID = l.MemberID and b.BookModelID = bm.BookModelID
GO
/****** Object:  View [dbo].[MemberBookLastRent]    Script Date: 04/24/2013 04:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[MemberBookLastRent]
as 
select l.MemberID, m.MemberName, bm.BookTitle, l.ChargeAmount, l.ReturnDate
from LibTrans l ,Books b, Members m, BooksModels bm
where b.BookID=l.BookID and m.MemberID = l.MemberID and b.BookModelID = bm.BookModelID
GO
/****** Object:  ForeignKey [FK_Books_BooksModels]    Script Date: 04/24/2013 04:06:22 ******/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_BooksModels] FOREIGN KEY([BookModelID])
REFERENCES [dbo].[BooksModels] ([BookModelId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_BooksModels]
GO
/****** Object:  ForeignKey [FK_LibTrans_Books]    Script Date: 04/24/2013 04:06:22 ******/
ALTER TABLE [dbo].[LibTrans]  WITH NOCHECK ADD  CONSTRAINT [FK_LibTrans_Books] FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[LibTrans] CHECK CONSTRAINT [FK_LibTrans_Books]
GO
/****** Object:  ForeignKey [FK_LibTrans_Members]    Script Date: 04/24/2013 04:06:22 ******/
ALTER TABLE [dbo].[LibTrans]  WITH NOCHECK ADD  CONSTRAINT [FK_LibTrans_Members] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[LibTrans] CHECK CONSTRAINT [FK_LibTrans_Members]
GO
