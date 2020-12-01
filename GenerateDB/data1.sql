USE [Ratio-ManageExport]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/1/2020 5:45:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortName] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportDocumentBill]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportDocumentBill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[TotalMoney] [float] NOT NULL,
	[ExportDate] [datetime2](7) NOT NULL,
	[SubsidiaryAgentId] [int] NOT NULL,
	[UserId] [int] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ExportDocumentBill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExportListDetail]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportListDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExportDate] [datetime2](7) NOT NULL,
	[ExportDocumentBillId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ExportListDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Number] [int] NOT NULL,
	[MFG] [datetime2](7) NOT NULL,
	[EXP] [datetime2](7) NOT NULL,
	[Country] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[MainImage] [nvarchar](max) NULL,
	[RecieveDate] [datetime2](7) NOT NULL,
	[SupplyId] [int] NOT NULL,
	[StockId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CategoryId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/1/2020 5:45:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Age] [int] NULL,
	[Gender] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[UserType] [int] NOT NULL,
	[SubsidiaryTotalProduct] [int] NULL,
	[AgentName] [nvarchar](max) NULL,
	[SupplyCode] [nvarchar](max) NULL,
	[SupplyName] [nvarchar](max) NULL,
	[Salary] [float] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201130030452_add-model', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201130044418_edit-user-validation', N'5.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201201041109_add-attribute', N'5.0.0')
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (1, N'Samsung', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (2, N'Apple', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (3, N'Huawei', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (4, N'LG', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (5, N'Asus', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (6, N'Microsoft', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (1, N'Điện Thoại - Máy Tính Bảng', NULL, CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (2, N'Điện Tử - Điện Lạnh', NULL, CAST(N'2020-11-30T10:54:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:54:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (3, N'Máy Ảnh - Quay Phim', NULL, CAST(N'2020-11-30T10:55:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:55:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (7, N'Tivi', 2, CAST(N'2020-11-30T11:00:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:00:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (8, N'Âm thanh & Phụ kiện', 2, CAST(N'2020-11-30T11:01:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:01:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (9, N'Máy giặt', 2, CAST(N'2020-11-30T11:02:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:02:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (11, N'Ti vi bán chạy', 7, CAST(N'2020-11-30T11:03:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:03:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([Id], [Name], [ParentId], [CreatedDate], [ModifiedDate]) VALUES (12, N'Ti vi mới 2020', 7, CAST(N'2020-11-30T11:04:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:04:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [Name], [Number], [MFG], [EXP], [Country], [Description], [Price], [MainImage], [RecieveDate], [SupplyId], [StockId], [BrandId], [CreatedDate], [ModifiedDate]) VALUES (1, N'HN0001', N'Điện Thoại Samsung Galaxy Note 20 Ultra (256GB/8GB) - Hàng Chính Hãng', 50, CAST(N'2019-02-01T11:25:00.0000000' AS DateTime2), CAST(N'2024-06-01T11:25:00.0000000' AS DateTime2), N'Vietnam', N'Samsung Pay, Trợ lý ảo Samsung Bixby, Màn hình luôn hiển thị AOD, Dolby Audio, Âm thanh AKG, Chặn tin nhắn, Chuẩn Kháng nước, Chuẩn kháng bụi, Đèn pin, Chặn cuộc gọi, Samsung DeX, Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 21900000, NULL, CAST(N'2020-11-02T11:26:00.0000000' AS DateTime2), 1, 1, 1, CAST(N'2020-12-01T11:33:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:33:00.0000000' AS DateTime2))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Number], [MFG], [EXP], [Country], [Description], [Price], [MainImage], [RecieveDate], [SupplyId], [StockId], [BrandId], [CreatedDate], [ModifiedDate]) VALUES (2, N'HN0002', N'Điện Thoại iPhone 12 Pro Max 512GB - Hàng Chính Hãng', 50, CAST(N'2020-10-01T11:41:00.0000000' AS DateTime2), CAST(N'2050-12-01T11:41:00.0000000' AS DateTime2), N'Vietnam', N'Super Retina XDR OLED, HDR10, Dolby Vision, Wide color gamut, True-tone', 41990000, N'Iphone 12 Pro', CAST(N'2020-11-18T11:42:00.0000000' AS DateTime2), 1, 1, 2, CAST(N'2020-12-01T11:43:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:43:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 1)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 2)
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [Name], [CreatedDate], [ModifiedDate]) VALUES (1, N'Ha Noi Stock', CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2))
INSERT [dbo].[Stock] ([Id], [Name], [CreatedDate], [ModifiedDate]) VALUES (2, N'HCM Stock', CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Stock] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (1, N'Huy', N'Nguyen Van', N'0977470992', N'huy@gmail.com', N'huyratio', N'123456', NULL, 22, 1, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 2, NULL, NULL, NULL, NULL, 999999999, CAST(N'2020-11-30T13:44:00.0000000' AS DateTime2), CAST(N'2020-11-30T13:44:00.0000000' AS DateTime2), N'image1.jpeg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (2, N'HuySupply1', N'Nguyen Van', N'0977470992', N'huy@gmail.com', NULL, NULL, NULL, 23, 1, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T11:15:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:15:00.0000000' AS DateTime2), N'6-128.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (3, N'HuySupply2', N'Nguyen Van', N'0977470992', N'huy@gmail.com', NULL, NULL, NULL, NULL, 0, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 0, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), N'image3.jpeg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (4, N'SubAgent1', N'Nguyen Van', N'0977470992', N'huy@gmail.com', NULL, NULL, NULL, NULL, 0, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), N'images108.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (5, N'SubAgent2', N'Nguyen Van', N'0977470992', N'huy@gmail.com', NULL, NULL, NULL, NULL, 0, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), CAST(N'2020-12-01T11:17:00.0000000' AS DateTime2), N'7dbae673d59f8af363725f8c4e563164.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (6, N'Hung', N'Nguyen Manh', NULL, NULL, NULL, NULL, NULL, 30, 1, NULL, N'Ha Noi', 1, NULL, N'Hung Store', NULL, NULL, NULL, CAST(N'2020-12-01T15:48:00.0000000' AS DateTime2), CAST(N'2020-12-01T15:48:00.0000000' AS DateTime2), N'image3.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (7, N'Hue', N'Van Lan', N'0977470998', NULL, NULL, NULL, NULL, NULL, 0, N'go straight', N'Ha Noi', 1, 300, N'Hue Phone Store', NULL, NULL, NULL, CAST(N'2020-12-01T15:54:00.0000000' AS DateTime2), CAST(N'2020-12-01T15:54:00.0000000' AS DateTime2), N'd5f231cacce015bace8d59d771f66010205519648.png')
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[ExportDocumentBill]  WITH CHECK ADD  CONSTRAINT [FK_ExportDocumentBill_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ExportDocumentBill] CHECK CONSTRAINT [FK_ExportDocumentBill_User_UserId]
GO
ALTER TABLE [dbo].[ExportListDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExportListDetail_ExportDocumentBill_ExportDocumentBillId] FOREIGN KEY([ExportDocumentBillId])
REFERENCES [dbo].[ExportDocumentBill] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExportListDetail] CHECK CONSTRAINT [FK_ExportListDetail_ExportDocumentBill_ExportDocumentBillId]
GO
ALTER TABLE [dbo].[ExportListDetail]  WITH CHECK ADD  CONSTRAINT [FK_ExportListDetail_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExportListDetail] CHECK CONSTRAINT [FK_ExportListDetail_Product_ProductId]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product_ProductId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand_BrandId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Stock_StockId] FOREIGN KEY([StockId])
REFERENCES [dbo].[Stock] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Stock_StockId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User_SupplyId] FOREIGN KEY([SupplyId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User_SupplyId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Category_CategoryId]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Product_ProductId]
GO
