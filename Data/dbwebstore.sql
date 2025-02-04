USE [WebStore]
GO
/****** Object:  Table [dbo].[BILL]    Script Date: 12/14/2020 21:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL](
	[ID_Bill] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [datetime] NULL,
	[DeliveryAddress] [nvarchar](300) NULL,
	[Status] [nvarchar](50) NULL,
	[City] [nvarchar](200) NULL,
	[Country] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[CustomerName] [nvarchar](200) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[ID_Bill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BILL] ON
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (15, CAST(0x0000AC9100A2B0A8 AS DateTime), N'Nguyễn Duy Trinh', N'Processing...', N'Thủ Đức', N'Viêt Nam', N'nguyenluan.main@gmail.com', N'0909774474', N'Thế Luân')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (16, CAST(0x0000AC9100B0C4DB AS DateTime), N'', N'Processing...', N'', N'', N'', N'', N'')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (17, CAST(0x0000AC9100B90DE3 AS DateTime), N'', N'Processing...', N'', N'', N'', N'', N'')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (18, CAST(0x0000AC9100BB41B3 AS DateTime), N'Nguyễn Duy Trinh', N'Processing...', N'Thủ Đức', N'Viêt Nam', N'nguyenluan.main@gmail.com', N'0909774474', N'Thế Luân')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (19, CAST(0x0000AC9100BB6C44 AS DateTime), N'Nguyễn Duy Trinh', N'Processing...', N'Thủ Đức', N'Viêt Nam', N'nguyenluan.main@gmail.com', N'0909774474', N'Thế Luân')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (20, CAST(0x0000AC9100F31413 AS DateTime), N'Nguyễn Duy Trinh', N'Processing...', N'Thủ Đức', N'Viêt Nam', N'nguyenluan.main@gmail.com', N'0909774474', N'Thế Luân')
INSERT [dbo].[BILL] ([ID_Bill], [DateCreated], [DeliveryAddress], [Status], [City], [Country], [Email], [PhoneNumber], [CustomerName]) VALUES (21, CAST(0x0000AC9100FA21A6 AS DateTime), N'Nguyễn Duy Trinh', N'Processing...', N'Thủ Đức', N'Viêt Nam', N'nguyenluan.main@gmail.com', N'0909774474', N'Thế Luân')
SET IDENTITY_INSERT [dbo].[BILL] OFF
/****** Object:  Table [dbo].[USER]    Script Date: 12/14/2020 21:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Address] [nvarchar](300) NULL,
	[UserName] [nvarchar](80) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[USER] ([FName], [LName], [PhoneNumber], [Address], [UserName], [Email], [Password]) VALUES (N'John', N'Tèo', N'0907648214', N'11 Quang Trung, Gò Vấp', N'JohnTeo', N'johnteo@gmail.com', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[USER] ([FName], [LName], [PhoneNumber], [Address], [UserName], [Email], [Password]) VALUES (N'Thế', N'Luân', N'0909774474', N'Nguyễn Duy Trinh', N'theluan', N'theluan@gmail.com', N'e10adc3949ba59abbe56e057f20f883e')
/****** Object:  Table [dbo].[TYPE_PRODUCT]    Script Date: 12/14/2020 21:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_PRODUCT](
	[ID_ProductType] [int] NOT NULL,
	[NameProductType] [nvarchar](30) NULL,
	[Unit] [nchar](10) NULL,
 CONSTRAINT [PK_LOAI_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[ID_ProductType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TYPE_PRODUCT] ([ID_ProductType], [NameProductType], [Unit]) VALUES (100, N'Camera Fujifilm Instax', N'The       ')
INSERT [dbo].[TYPE_PRODUCT] ([ID_ProductType], [NameProductType], [Unit]) VALUES (200, N'Camera Sonny  ', N'The       ')
INSERT [dbo].[TYPE_PRODUCT] ([ID_ProductType], [NameProductType], [Unit]) VALUES (300, N'Camera Cannon', N'The       ')
INSERT [dbo].[TYPE_PRODUCT] ([ID_ProductType], [NameProductType], [Unit]) VALUES (400, N'Camera Panasonic', N'The       ')
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 12/14/2020 21:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ID_Product] [int] NOT NULL,
	[ProductName] [nvarchar](85) NULL,
	[Origin] [nvarchar](15) NULL,
	[Weight] [nvarchar](15) NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Detail] [nvarchar](500) NULL,
	[Image] [nvarchar](200) NULL,
	[ID_ProductType] [int] NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_SANPHAM_1] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (1, N'Fujifilm Instax Mini LiPlay', N'China', N'255 g', 150.3, 15, N'Compact design. 1/5 inch image sensor. 2,560 x 1,920 pixel resolution. 2.7inch LCD screen. Bluetooth connectivity via the LiPlay app', N'https://salt.tikicdn.com/cache/w390/ts/product/f9/97/18/3ef9267ae4e96414d5621edf837b3ab4.jpg', 100, 0)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (2, N'Sony Alpha A6000', N'ThaiLand', N'258 g', 516.4, 7, N'Sensor: 24.3MP APS HD CMOS. Image processor: BIONZ. ISO: 100 - 25600. Focus system: 25 points. Fast focusing speed of 0.06 seconds. Continuous shooting: 11 photos / sec. Fast image transfer with WiFi connection', N'https://salt.tikicdn.com/cache/w390/media/catalog/product/3/_/3.u5488.d20170727.t142803.430836.jpg', 200, 0)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (3, N'Fujifilm Instax SQ6', N'Japan', N'393 g', 128.2, 22, N'Image size: 62 x 62 mm. Automatic exposure control. Automatically calculates brightness and adjusts shutter speed. The selfie mode supports exposure / focus control. Three color filters including orange, purple, and green filters. Use only INSTAX SQUARE movies', N'https://salt.tikicdn.com/cache/w390/ts/product/df/75/ae/c32d74633c701431864bc6878e8d1ec4.jpg', 100, 1)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (4, N'Sony Alpha A7 Mark II', N'ThaiLand', N'599 g', 1076.1, 31, N'24.3MP Full-frame Exmor CMOS sensor. Electronic viewfinder. 3.0 inch screen. 5-axis image stabilization. 35mm full frame: 117 points. ISO 50-25600 (51200 extension). Shutter speed 1/8000 to 30 sec. Shutter speed 5.0 images / sec. Full HD 1920 x 1080 / 60p 50Mbps movie recording. Integrated Wifi, NFC', N'https://salt.tikicdn.com/cache/w390/media/catalog/product/1/1/1102009.jpg', 200, 0)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (5, N'Sony DSC W830', N'China', N'120 g', 114.2, 5, N'Youthful, compact and trendy design help you take it with you anywhere. The Zeiss® Vario-Tessar® lens delivers superior, detailed, true-to-life images. Shooting from afar is easy with up to 8X Optical Zoom.', N'https://salt.tikicdn.com/cache/w390/media/catalog/product/s/o/sony-4276-979711-1-zoom_1.jpg', 200, 1)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (6, N'Fujifilm Instax Mini 9', N'China', N'307 g', 64.6, 31, N'Funny and lovely design, Integrating Selfie mirror for photo enthusiasts. True and clear images. Various shooting modes are pre-installed. Use handy AA batteries', N'https://salt.tikicdn.com/cache/w390/media/catalog/product/m/i/mini9_smokey-white_01_md.u5168.d20170608.t122932.377328.jpg', 100, 1)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (7, N'Canon IXUS 185', N'China', N'126 g', 107.2, 64, N'DIGIC 4+ image processor. 20.0 megapixel sensor. Various shooting modes. 8x optical zoom', N'https://salt.tikicdn.com/cache/w390/media/catalog/product/i/x/ixus-185-do-1.u2751.d20170327.t112757.200293.jpg', 300, 0)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (8, N'Panasonic Lumix GF10', N'Updating...', N'240 g', 434.3, 11, N'16mp Micro Four Thirds sensor (w / o LPF). Touch screen 3 inch tilt, 1040K dots. 4K video at 30P (100 Mbps bit rate). ISO100 to ISO25600. 5.8fps continuous shooting. Built-in pop-up flash. Wi-Fi connection. DMW-BLH7 compatible battery. About 210 photos and about 40 minutes of video are recorded. Dimensions 106.5 x 64.6 x 33.3. Weight: 240 g (Body)', N'https://salt.tikicdn.com/cache/w390/ts/product/7e/ac/87/5ae17baf397c964f27cc28afc9fd7123.jpg', 400, 0)
INSERT [dbo].[PRODUCT] ([ID_Product], [ProductName], [Origin], [Weight], [Price], [Quantity], [Detail], [Image], [ID_ProductType], [Sale]) VALUES (9, N'Fujifilm Instax SQ6 Taylor Swift', N'China', N'393 g', 184.1, 3, N'Image size: 62 x 62 mm. Automatic exposure control. Automatically calculates brightness and adjusts shutter speed. The selfie mode supports exposure / focus control. Three color filters including orange, purple, and green filters. Use only INSTAX SQUARE movies', N'https://salt.tikicdn.com/cache/w390/ts/product/c5/eb/03/f429dddf3cf537a09baae71049618192.jpg', 100, 0)
/****** Object:  Table [dbo].[BILLDETAIL]    Script Date: 12/14/2020 21:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILLDETAIL](
	[ID_Product] [int] NOT NULL,
	[ID_Bill] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Total] [float] NULL,
	[ProductName] [nvarchar](200) NULL,
 CONSTRAINT [PK_SANPHAM_HOADON] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC,
	[ID_Bill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (1, 15, 1, 150.30000305175781, 150.30000305175781, N'Fujifilm Instax Mini LiPlay')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (1, 19, 1, 150.30000305175781, 150.30000305175781, N'Fujifilm Instax Mini LiPlay')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (2, 15, 1, 516.4000244140625, 516.4000244140625, N'Sony Alpha A6000')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (2, 16, 1, 516.4000244140625, 516.4000244140625, N'Sony Alpha A6000')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (2, 20, 1, 516.4000244140625, 516.4000244140625, N'Sony Alpha A6000')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (3, 17, 1, 128.19999694824219, 128.19999694824219, N'Fujifilm Instax SQ6')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (3, 21, 2, 128.19999694824219, 256.39999389648438, N'Fujifilm Instax SQ6')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (6, 15, 1, 64.5999984741211, 64.5999984741211, N'Fujifilm Instax Mini 9')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (7, 15, 1, 107.19999694824219, 107.19999694824219, N'Canon IXUS 185')
INSERT [dbo].[BILLDETAIL] ([ID_Product], [ID_Bill], [Quantity], [Price], [Total], [ProductName]) VALUES (7, 21, 1, 107.19999694824219, 107.19999694824219, N'Canon IXUS 185')
/****** Object:  ForeignKey [FK_SANPHAM_HOADON_HOADON]    Script Date: 12/14/2020 21:46:42 ******/
ALTER TABLE [dbo].[BILLDETAIL]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_HOADON_HOADON] FOREIGN KEY([ID_Bill])
REFERENCES [dbo].[BILL] ([ID_Bill])
GO
ALTER TABLE [dbo].[BILLDETAIL] CHECK CONSTRAINT [FK_SANPHAM_HOADON_HOADON]
GO
/****** Object:  ForeignKey [FK_SANPHAM_HOADON_SANPHAM]    Script Date: 12/14/2020 21:46:42 ******/
ALTER TABLE [dbo].[BILLDETAIL]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_HOADON_SANPHAM] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[PRODUCT] ([ID_Product])
GO
ALTER TABLE [dbo].[BILLDETAIL] CHECK CONSTRAINT [FK_SANPHAM_HOADON_SANPHAM]
GO
/****** Object:  ForeignKey [FK_SANPHAM_LOAI_SANPHAM]    Script Date: 12/14/2020 21:46:42 ******/
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_LOAI_SANPHAM] FOREIGN KEY([ID_ProductType])
REFERENCES [dbo].[TYPE_PRODUCT] ([ID_ProductType])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_SANPHAM_LOAI_SANPHAM]
GO
