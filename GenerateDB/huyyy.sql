USE [Ratio-ManageExport]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (1, N'Samsung', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (2, N'Apple', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (3, N'Huawei', NULL, CAST(N'2020-11-30T11:05:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (4, N'LG', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (5, N'Asus', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
INSERT [dbo].[Brand] ([Id], [ShortName], [FullName], [CreatedDate], [ModifiedDate]) VALUES (6, N'Microsoft', NULL, CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2), CAST(N'2020-11-30T11:06:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [Name], [CreatedDate], [ModifiedDate]) VALUES (1, N'Ha Noi Stock', CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2))
INSERT [dbo].[Stock] ([Id], [Name], [CreatedDate], [ModifiedDate]) VALUES (2, N'HCM Stock', CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2), CAST(N'2020-11-30T10:53:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Stock] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (1, N'Huy', N'Nguyen Van', N'0977470992', N'huy@gmail.com', N'huyratio', N'123456', NULL, 22, 1, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 2, NULL, NULL, NULL, NULL, 999999999, CAST(N'2020-11-30T13:44:00.0000000' AS DateTime2), CAST(N'2020-12-04T03:02:22.1686763' AS DateTime2), N'images20.jpg')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (6, N'Hung', N'Nguyen Manh', N'0999595959', N'hung@gmail.com', NULL, NULL, NULL, 30, 1, N'Ba Dinh', N'Ha Noi', 1, NULL, N'Hung Store', NULL, NULL, NULL, CAST(N'2020-12-01T15:48:00.0000000' AS DateTime2), CAST(N'2020-12-04T02:45:47.3953540' AS DateTime2), N'image3.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (7, N'Hue', N'Van Lan', N'0977470998', NULL, NULL, NULL, NULL, NULL, 0, N'go straight', N'Ha Noi', 1, 300, N'Hue Phone Store', NULL, NULL, NULL, CAST(N'2020-12-01T15:54:00.0000000' AS DateTime2), CAST(N'2020-12-01T15:54:00.0000000' AS DateTime2), N'd5f231cacce015bace8d59d771f66010205519648.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (10, N'Hoang', N'Nguyen Ba', N'0977470998', N'hoang@gmail.com', NULL, NULL, NULL, 30, 1, N'Ba Dinh', N'Ha Noi', 0, NULL, NULL, N'S00001', N'Hoang Dinh Company', NULL, CAST(N'2020-12-04T03:04:44.0000000' AS DateTime2), CAST(N'2020-12-04T03:05:02.6854144' AS DateTime2), N'image2.png')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Phone], [Email], [Username], [Password], [Note], [Age], [Gender], [Address], [City], [UserType], [SubsidiaryTotalProduct], [AgentName], [SupplyCode], [SupplyName], [Salary], [CreatedDate], [ModifiedDate], [Avatar]) VALUES (11, N'Justin', N'Maria', N'0977470992', N'justin@gmail.com', NULL, NULL, NULL, 30, 1, N'Handico Tower - Ha Noi - Viet Nam', N'Ha Noi', 0, NULL, NULL, N'S00002', N'Panasonic Viet Nam', NULL, CAST(N'2020-12-04T03:08:36.1235570' AS DateTime2), CAST(N'2020-12-04T03:08:36.1235570' AS DateTime2), N'panasonic.png')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [Name], [Number], [MFG], [EXP], [Country], [Description], [Price], [MainImage], [RecieveDate], [SupplyId], [StockId], [BrandId], [CreatedDate], [ModifiedDate], [DisplayName]) VALUES (1, N'P000001', N'SamsungNote20', 50, CAST(N'2019-02-01T11:25:00.0000000' AS DateTime2), CAST(N'2024-06-01T11:25:00.0000000' AS DateTime2), N'Vietnam', N'Samsung Pay, Trợ lý ảo Samsung Bixby, Màn hình luôn hiển thị AOD, Dolby Audio, Âm thanh AKG, Chặn tin nhắn, Chuẩn Kháng nước, Chuẩn kháng bụi, Đèn pin, Chặn cuộc gọi, Samsung DeX, Mở khoá khuôn mặt, Mở khoá vân tay dưới màn hình', 21900000, N'4_3_Teaser_Samsung_Galaxy_Note20_Ultra_5G_SM-N986B_MysticWhite.jpg', CAST(N'2020-11-02T11:26:00.0000000' AS DateTime2), 10, 1, 1, CAST(N'2020-12-01T11:33:00.0000000' AS DateTime2), CAST(N'2020-12-04T08:11:41.9074353' AS DateTime2), N'Điện Thoại Samsung Galaxy Note 20 Ultra (256GB/8GB) - Hàng Chính Hãng')
INSERT [dbo].[Product] ([Id], [Code], [Name], [Number], [MFG], [EXP], [Country], [Description], [Price], [MainImage], [RecieveDate], [SupplyId], [StockId], [BrandId], [CreatedDate], [ModifiedDate], [DisplayName]) VALUES (2, N'HN0002', N'Iphone12Pro', 50, CAST(N'2020-10-01T11:41:00.0000000' AS DateTime2), CAST(N'2050-12-01T11:41:00.0000000' AS DateTime2), N'Vietnam', N'Super Retina XDR OLED, HDR10, Dolby Vision, Wide color gamut, True-tone', 41990000, N'image8.jpeg', CAST(N'2020-11-18T11:42:00.0000000' AS DateTime2), 11, 2, 2, CAST(N'2020-12-01T11:43:00.0000000' AS DateTime2), CAST(N'2020-12-04T08:12:13.0688303' AS DateTime2), N'Điện Thoại iPhone 12 Pro Max 512GB - Hàng Chính Hãng')
INSERT [dbo].[Product] ([Id], [Code], [Name], [Number], [MFG], [EXP], [Country], [Description], [Price], [MainImage], [RecieveDate], [SupplyId], [StockId], [BrandId], [CreatedDate], [ModifiedDate], [DisplayName]) VALUES (6, N'HN0001', N'Nguyen Van Lan', 55, CAST(N'2020-12-11T14:58:00.0000000' AS DateTime2), CAST(N'2020-12-28T14:58:00.0000000' AS DateTime2), N'Vietnam', NULL, 41990000, NULL, CAST(N'2020-12-22T14:58:00.0000000' AS DateTime2), 10, 1, 1, CAST(N'2020-12-04T07:59:08.8670575' AS DateTime2), CAST(N'2020-12-04T07:59:08.8670575' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
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
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 1)
INSERT [dbo].[ProductCategory] ([CategoryId], [ProductId]) VALUES (1, 2)
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (6, N'4_3_Teaser_Samsung_Galaxy_Note20_Ultra_5G_SM-N986B_MysticWhite.jpg', 1, CAST(N'2020-12-04T03:40:23.0000000' AS DateTime2), CAST(N'2020-12-04T04:05:28.4559156' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (7, N'81ZUA08kTbL._AC_SL1500_.jpg', 1, CAST(N'2020-12-04T03:53:21.6942470' AS DateTime2), CAST(N'2020-12-04T03:53:21.6942470' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (8, N'BareNaked-UltraThinCaseforCaseHaters-forSamsungGalaxyNote20Ultra-Frost_2000x.jpg', 1, CAST(N'2020-12-04T03:54:49.0959563' AS DateTime2), CAST(N'2020-12-04T03:54:49.0959563' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (9, N'Note-20-1.jpg', 1, CAST(N'2020-12-04T03:54:56.9161979' AS DateTime2), CAST(N'2020-12-04T03:54:56.9161979' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (10, N'Samsung-Galaxy-Note-20-Ultra-Mystic-Black-and-Mystic-Bronze-100.jpg', 1, CAST(N'2020-12-04T03:55:07.1245843' AS DateTime2), CAST(N'2020-12-04T03:55:07.1245843' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (11, N'Samsung-Galaxy-Note-20-Ultra-top-edge.jpg', 1, CAST(N'2020-12-04T03:55:12.3973608' AS DateTime2), CAST(N'2020-12-04T03:55:12.3973608' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (12, N'3oqmv4bAtKt3uJFdPzwxch-jpeg-8426-1586678315.jpg', 2, CAST(N'2020-12-04T04:07:14.1258058' AS DateTime2), CAST(N'2020-12-04T04:07:14.1258058' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (13, N'image3.jpeg', 1, CAST(N'2020-12-04T04:07:23.6655468' AS DateTime2), CAST(N'2020-12-04T04:07:23.6655468' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (14, N'iPhone-12-Pro-Max-Glass---Side_960x.jpg', 1, CAST(N'2020-12-04T04:07:30.7647557' AS DateTime2), CAST(N'2020-12-04T04:07:30.7647557' AS DateTime2))
INSERT [dbo].[Image] ([Id], [Url], [ProductId], [CreatedDate], [ModifiedDate]) VALUES (15, N'image11.jpeg', 1, CAST(N'2020-12-04T04:07:45.1549622' AS DateTime2), CAST(N'2020-12-04T04:07:45.1549622' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Image] OFF
