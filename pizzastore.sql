USE [master]
GO
/****** Object:  Database [PizzaStore]    Script Date: 2/28/2024 4:11:45 AM ******/
CREATE DATABASE [PizzaStore]
 
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](200) NULL,
	[Type] [int] NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[ContactName] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[Freight] [float] NULL,
	[ShipAddress] [nvarchar](200) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [int] NULL,
	[UnitPrice] [float] NULL,
	[ProductImage] [nchar](1000) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2/28/2024 4:11:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](500) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'1', N'account1 ', N'12345', N'Account 1', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'2', N'user2', N'123', N'User Two', 2, 2)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'3', N'staff1', N'123', N'Staff One', 1, 3)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'be', N'be', N'123', NULL, 1, 3)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'cookie', N'cookie', N'123', N'cookie', 2, NULL)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'jane', N'jane', N'123', N'jane', 2, NULL)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [FullName], [Type], [CustomerID]) VALUES (N'khoa', N'khoa2', N'12345', N'Do Anh Khoaaa', 2, 4)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Category 1', N'Description 1')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Category 2', N'Description 2')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Category 3', N'Description 3')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Standard', N'A basic pizza for everyone')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Specialities', N'A sepcial pizza')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (1, N'123', N'Contact Name 1', N'Address 1', N'Phone 1')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (2, N'123', N'Contact Name 2', N'Address 2', N'Phone 2')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (3, N'123', N'Contact Name 3', N'Address 3', N'Phone 3')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (4, N'123', N'khoa', N'Nguyen Thi Dang', N'0933071004')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (14, N'12345', N'khoa', N'FPT', N'0909090900')
INSERT [dbo].[Customers] ([CustomerID], [Password], [ContactName], [Address], [Phone]) VALUES (16, N'123', N'cookie', N'342/5 Nguyen Thi Dang Street, District 12, Ho Chi Minh City', N'0912345678')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 2, 100, 10)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (1, 3, 200, 20)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (2, 2, 300, 30)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (13, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (14, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (15, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (16, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (17, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (18, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (19, 5, 75, 1)
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [UnitPrice], [Quantity]) VALUES (20, 5, 75, 1)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (1, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime), 100, N'Address 1')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (2, 2, CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), CAST(N'2022-02-03T00:00:00.000' AS DateTime), 200, N'Address 2')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (3, 3, CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 300, N'Address 3')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (4, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime), 100, N'Address 1')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (5, 2, CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), CAST(N'2022-02-03T00:00:00.000' AS DateTime), 200, N'Address 2')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (6, 3, CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 300, N'Address 3')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (7, 1, CAST(N'2024-02-25T14:44:13.687' AS DateTime), CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-01-03T00:00:00.000' AS DateTime), 100, N'Address 1')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (8, 2, CAST(N'2024-02-25T14:44:13.687' AS DateTime), CAST(N'2022-02-05T00:00:00.000' AS DateTime), CAST(N'2022-02-03T00:00:00.000' AS DateTime), 200, N'Address 2')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (9, 3, CAST(N'2024-02-25T14:44:13.687' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 300, N'Address 3')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (10, 4, CAST(N'2024-02-27T00:10:35.613' AS DateTime), CAST(N'2024-02-27T00:10:35.613' AS DateTime), CAST(N'2024-02-27T00:10:35.613' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (11, 4, CAST(N'2024-02-27T00:17:07.280' AS DateTime), CAST(N'2024-02-27T00:17:07.280' AS DateTime), CAST(N'2024-02-27T00:17:07.280' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (12, 4, CAST(N'2024-02-27T00:24:54.263' AS DateTime), CAST(N'2024-02-27T00:24:54.263' AS DateTime), CAST(N'2024-02-27T00:24:54.263' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (13, 4, CAST(N'2024-02-27T00:30:59.310' AS DateTime), CAST(N'2024-02-27T00:30:59.310' AS DateTime), CAST(N'2024-02-27T00:30:59.310' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (14, 4, CAST(N'2024-02-28T01:40:28.280' AS DateTime), CAST(N'2024-02-28T01:40:28.280' AS DateTime), CAST(N'2024-02-28T01:40:28.280' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (15, 4, CAST(N'2024-02-28T01:42:57.027' AS DateTime), CAST(N'2024-02-28T01:42:57.027' AS DateTime), CAST(N'2024-02-28T01:42:57.027' AS DateTime), 300, N'Nguyen Thi Dang')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (16, 4, CAST(N'2024-02-28T01:46:01.050' AS DateTime), CAST(N'2024-02-28T01:46:01.050' AS DateTime), CAST(N'2024-02-28T01:46:01.050' AS DateTime), 300, N'phan van hon')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (17, 4, CAST(N'2024-02-28T01:48:09.643' AS DateTime), CAST(N'2024-02-28T01:48:09.643' AS DateTime), CAST(N'2024-02-28T01:48:09.643' AS DateTime), 300, N'phan van hon')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (18, 14, CAST(N'2024-02-28T03:47:48.010' AS DateTime), CAST(N'2024-02-28T03:47:48.010' AS DateTime), CAST(N'2024-02-28T03:47:48.010' AS DateTime), 300, N'FPT')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (19, 4, CAST(N'2024-02-28T04:06:55.703' AS DateTime), CAST(N'2024-02-28T04:06:55.703' AS DateTime), CAST(N'2024-02-28T04:06:55.703' AS DateTime), 300, N'342/5 Nguyen Thi Dang Street, District 12, Ho Chi Minh City')
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [OrderDate], [RequiredDate], [ShippedDate], [Freight], [ShipAddress]) VALUES (20, 16, CAST(N'2024-02-28T04:10:08.967' AS DateTime), CAST(N'2024-02-28T04:10:08.967' AS DateTime), CAST(N'2024-02-28T04:10:08.967' AS DateTime), 300, N'342/5 Nguyen Thi Dang Street, District 12, Ho Chi Minh City')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (2, N'Product Name 2', 2, 2, 20, 200, N'Image 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (3, N'Product Name 3', 3, 3, 30, 300, N'Image 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [ProductImage]) VALUES (5, N'Hawaii', 1, 4, 10, 75, N'http://thepizzacompany.vn/images/thumbs/000/0002224_hawaii_500.png                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (1, N'Company Name 1', N'Address 1', N'Phone 1')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (2, N'Company Name 2', N'Address 2', N'Phone 2')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [Address], [Phone]) VALUES (3, N'Company Name 3', N'Address 3', N'Phone 3')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__5C7E359EF2901C55]    Script Date: 2/28/2024 4:11:45 AM ******/
ALTER TABLE [dbo].[Customers] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [PizzaStore] SET  READ_WRITE 
GO
