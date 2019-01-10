
-- CREATE DATABASE [QuanLyCuaHang]
 
USE [QuanLyCuaHang2]
GO

CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MoreInfo] [nvarchar](max) NULL,
	[ContractDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Input]    Script Date: 09/01/2019 11:33:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input](
	[Id] [nvarchar](128) NOT NULL,
	[DateInput] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InputInfo]    Script Date: 09/01/2019 11:33:38 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InputInfo](
	[Id] [nvarchar](128) NOT NULL,
	[IdObject] [nvarchar](128) NOT NULL,
	[IdInput] [nvarchar](128) NOT NULL,
	[Count] [int] NULL,
	[InputPrice] [float] NULL,
	[OutputPrice] [float] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[Id] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[IdUnit] [int] NOT NULL,
	[IdSuplier] [int] NOT NULL,
	[QRCode] [nvarchar](max) NULL,
	[BarCode] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Output]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Output](
	[Id] [nvarchar](128) NOT NULL,
	[DateOutput] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutputInfo]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutputInfo](
	[Id] [nvarchar](128) NOT NULL,
	[IdObject] [nvarchar](128) NOT NULL,
	[IdInputInfo] [nvarchar](128) NOT NULL,
	[IdOutput] [nvarchar](128) NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[Count] [int] NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suplier]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[MoreInfo] [nvarchar](max) NULL,
	[ContractDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/01/2019 11:33:39 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[IdRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1, N'Nguyễn Vân Anhh', N'Đông Hòa - Dĩ An - Bình Dương', N'0642154414', N'vananhnguyen@gmail.com', N'mua hàng nhanh', CAST(N'2017-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (2, N'Doãn Chí Bình', N'KTX khu B - ĐHQG HCM', N'0948948549', N'doandaihiep@gmail.com', N'ok', CAST(N'2017-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1002, N'Khánh Hòa', N'Hà Tĩnh', N'45457878', N'hoa@gmail.com', N'asdf', CAST(N'2017-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1003, N'Bảo Nam 2', N'Dĩ An - Bình Dương', N'0642154414', N'anhvn@gmail.com', N'good', CAST(N'2017-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1004, N'Cường LD', N'Hà Tĩnh', N'45457878', N'hoa@gmail.com', N'asdf', CAST(N'2017-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1005, N'Nguyễn Văn Duệ', N'', N'', N'', N'', CAST(N'2019-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1006, N'Nguyễn Văn', NULL, NULL, NULL, NULL, CAST(N'2019-01-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'1', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'1310517e-1acd-4a81-8306-e45fede92275', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'2', CAST(N'2018-07-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'3', CAST(N'2018-01-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'4619dbbb-55ae-4ec7-b5b0-da4e8c95730d', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'52f84cb3-cbd7-49e8-b9ac-344cbd8d529d', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'721e0ed1-2a64-4cb2-9a85-2a44dab17d47', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'7860b160-ae86-4fba-8158-86abb89ef80f', CAST(N'2018-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'7d802da9-55a8-4f87-9b92-87208104b2a5', CAST(N'2018-12-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'88ada6ab-9e92-4c58-8b3b-65f6637ed1cf', CAST(N'2018-07-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'c2616da0-da0f-4871-8735-ee0f877a03e7', CAST(N'2018-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'd55605d3-d5ed-498e-bd85-ea6f4885967b', CAST(N'2018-07-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Input] ([Id], [DateInput]) VALUES (N'eaf13796-14be-4079-919e-8e6ddb994e5a', CAST(N'2018-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'0c782347-cfb9-4968-b30b-ff2c746533a7', N'37ac35d2-73ae-4ff3-8873-577756e091f0', N'1310517e-1acd-4a81-8306-e45fede92275', 1, 79000, 529000, N'Ok23')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'1', N'2', N'1', 10, 300, 90000, N'test')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'1af229ed-5d1f-4d87-aa78-4e53d83034f4', N'4', N'c2616da0-da0f-4871-8735-ee0f877a03e7', 10, 79000, 529000, N'Ok')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'379a954c-8eaf-413c-8149-13f758b80464', N'a964b86e-968a-42fb-bf60-d58532e12f7e', N'52f84cb3-cbd7-49e8-b9ac-344cbd8d529d', 22, 300, 90000, N'42342')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'794bf257-9efd-4afd-92a4-12e1a39e5211', N'7b3edd07-684d-4403-9100-338a40f96d33', N'eaf13796-14be-4079-919e-8e6ddb994e5a', 10, 300, 90000, N'test')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'7c2f1f24-b342-431e-9752-10072353dc46', N'4', N'7860b160-ae86-4fba-8158-86abb89ef80f', 10, 79000, 529000, N'Ok')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'9fdc622f-1dc5-4ef6-89cb-2d61816128ed', N'5', N'd55605d3-d5ed-498e-bd85-ea6f4885967b', 2, 65000, 88000, N'577')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'b9648aee-7286-49e7-8d68-daeb5058e4d4', N'4', N'7d802da9-55a8-4f87-9b92-87208104b2a5', 90, 79000, 529000, N'Ok23')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'f1782fc1-9db5-49f7-9d64-c232fe121b61', N'3', N'88ada6ab-9e92-4c58-8b3b-65f6637ed1cf', 99, 99000, 229000, N'Ok')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'f2c18233-39dc-4cd6-a0da-aeda1263fcc1', N'2', N'721e0ed1-2a64-4cb2-9a85-2a44dab17d47', 10, 300, 90000, N'test')
INSERT [dbo].[InputInfo] ([Id], [IdObject], [IdInput], [Count], [InputPrice], [OutputPrice], [Status]) VALUES (N'fa9f9096-21d8-4601-9055-750fb1b3ad87', N'3', N'2', 99, 99000, 229000, N'Ok')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'1', N'Quần Jean', 3, 11, N'123eqwqw', N'1231')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'2', N'Áo quần ', 3, 1, N'564654', N'897867684')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'3', N'Quần Jean mới', 1002, 1, NULL, NULL)
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'37ac35d2-73ae-4ff3-8873-577756e091f0', N'Áo cặp', 2, 11, NULL, NULL)
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'4', N'Áo dài ', 3, 11, N'31dfs31231', N'1313')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'43b4e477-cdeb-47eb-856e-72dd6400e2cf', N'Áo quần ', 3, 1, N'564654', N'897867684')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'5', N'Mu', 2, 10, NULL, NULL)
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'7b3edd07-684d-4403-9100-338a40f96d33', N'Quần Joker', 1002, 11, N'123eqwqw3', N'12331')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'a964b86e-968a-42fb-bf60-d58532e12f7e', N'Quần Jean', 3, 11, N'123eqwqw', N'1231')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'f4428535-f748-470b-88fb-0a594504178e', N'fgdg', 1, 10, N'sdf', N'sf')
INSERT [dbo].[Object] ([Id], [DisplayName], [IdUnit], [IdSuplier], [QRCode], [BarCode]) VALUES (N'f7ab7151-abd8-4525-b5ba-3848ec5117c7', N'Áo cặp', 2, 11, NULL, NULL)
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'1', CAST(N'2018-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'1fe57844-3eeb-415e-bbb1-3f09087a84ce', CAST(N'2018-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'2', CAST(N'2018-12-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'31651618-36e7-4c8b-9f94-c2716490785b', CAST(N'2018-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'482ea5cd-d7d2-4d9a-8d3f-143443bf9991', CAST(N'2018-12-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Output] ([Id], [DateOutput]) VALUES (N'96ff7a1f-ce75-442e-8500-257c1bf000a6', CAST(N'2018-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'1', N'1', N'1', N'1', 1, 10, N'ok')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'2', N'4', N'0c782347-cfb9-4968-b30b-ff2c746533a7', N'2', 1, 60, N'dc')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'3', N'4', N'1', N'1', 1002, 10, N'ok')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'4', N'3', N'1', N'2', 1, 10, N'ok')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'5', N'37ac35d2-73ae-4ff3-8873-577756e091f0', N'fa9f9096-21d8-4601-9055-750fb1b3ad87', N'1', 1, 10, N'ok')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'6', N'37ac35d2-73ae-4ff3-8873-577756e091f0', N'fa9f9096-21d8-4601-9055-750fb1b3ad87', N'2', 1004, 10, N'ok')
INSERT [dbo].[OutputInfo] ([Id], [IdObject], [IdInputInfo], [IdOutput], [Count], [Status]) VALUES (N'7', N'1', N'1', N'1', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Suplier] ON 

INSERT [dbo].[Suplier] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1, N'Shop Áo Thun', N'Làng ĐH', N'0949980848', N'aothunmoi.com@gmail.com', N'fast1234', CAST(N'2018-12-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Suplier] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (10, N'Shop ', N'Làng ĐH', N'0949980848', N'', N'', CAST(N'2018-12-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Suplier] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (11, N'Shop Áo Thun Mới', N'Làng ĐH', N'234234', N'aothunmoi.com@gmail.com', N'fast', CAST(N'2018-12-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Suplier] ([Id], [DisplayName], [Address], [Phone], [Email], [MoreInfo], [ContractDate]) VALUES (1002, N'Shop 2', N'Làng ĐH', N'0949980', N'', N'', CAST(N'2018-12-03T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Suplier] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (1, N'Kg')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (2, N'Thùng')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (3, N'Bao')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (4, N'Viên')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (5, N'Lít')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (1002, N'Cái')
INSERT [dbo].[Unit] ([Id], [DisplayName]) VALUES (1003, N'Đôi')
SET IDENTITY_INSERT [dbo].[Unit] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [DisplayName]) VALUES (1, N'Admin')
INSERT [dbo].[UserRole] ([Id], [DisplayName]) VALUES (2, N'Nh�n vi�n')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (1, N'Krazyboy', N'admin', N'db69fc039dcbd2962cb4d28f5891aae1', 1)
INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (2, N'Staff', N'staff', N'978aae9bb6bee8fb75de3e4830a1be46', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[InputInfo] ADD  DEFAULT ((0)) FOR [InputPrice]
GO
ALTER TABLE [dbo].[InputInfo] ADD  DEFAULT ((0)) FOR [OutputPrice]
GO
ALTER TABLE [dbo].[InputInfo]  WITH CHECK ADD FOREIGN KEY([IdInput])
REFERENCES [dbo].[Input] ([Id])
GO
ALTER TABLE [dbo].[InputInfo]  WITH CHECK ADD FOREIGN KEY([IdObject])
REFERENCES [dbo].[Object] ([Id])
GO
ALTER TABLE [dbo].[Object]  WITH CHECK ADD FOREIGN KEY([IdUnit])
REFERENCES [dbo].[Unit] ([Id])
GO
ALTER TABLE [dbo].[Object]  WITH CHECK ADD FOREIGN KEY([IdSuplier])
REFERENCES [dbo].[Suplier] ([Id])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IdInputInfo])
REFERENCES [dbo].[InputInfo] ([Id])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IdObject])
REFERENCES [dbo].[Object] ([Id])
GO
ALTER TABLE [dbo].[OutputInfo]  WITH CHECK ADD FOREIGN KEY([IdOutput])
REFERENCES [dbo].[Output] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[UserRole] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHang] SET  READ_WRITE 
GO
