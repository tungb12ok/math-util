CREATE DATABASE [FUFleaMarket]
GO
USE [FUFleaMarket]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[specificAddress] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[addressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](250) NOT NULL,
	[rating] [int] NOT NULL,
	[orderId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[messageId] [int] IDENTITY(1,1) NOT NULL,
	[senderId] [int] NOT NULL,
	[receiverId] [int] NOT NULL,
	[messageText] [nvarchar](255) NOT NULL,
	[time] [datetime] NULL,
	[isRead] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[messageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [datetime] NOT NULL,
	[price] [money] NOT NULL,
	[buyerId] [int] NOT NULL,
	[sellerId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[note] [nvarchar](1000) NULL,
	[productId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[deliveryDate] [datetime] NULL,
	[receiverAddress] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[methodName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[price] [money] NOT NULL,
	[isNew] [bit] NOT NULL,
	[description] [nvarchar](2000) NOT NULL,
	[sellerId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[createdDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[productId] [int] NOT NULL,
	[imageName] [nvarchar](50) NOT NULL,
	[imageLink] [nvarchar](300) NOT NULL,
 CONSTRAINT [FK_ProductImage_PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[productId] ASC,
	[imageName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[promotionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](300) NOT NULL,
	[period] [int] NOT NULL,
	[productQuantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[isDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PromotionOrder]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromotionOrder](
	[promoOrderId] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[userId] [int] NOT NULL,
	[price] [money] NOT NULL,
	[productQuantity] [int] NOT NULL,
	[promotionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[promoOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[orderId] [int] NOT NULL,
	[date] [datetime] NULL,
	[paymentMethod] [int] NULL,
	[amount] [decimal](18, 0) NULL,
	[status] [bit] NULL,
	[description] [nvarchar](250) NULL,
 CONSTRAINT [PK_Transaction_1] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](20) NULL,
	[fullName] [nvarchar](30) NULL,
	[email] [nvarchar](40) NOT NULL,
	[phoneNumber] [nvarchar](20) NULL,
	[introduction] [nvarchar](300) NULL,
	[roleId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[avarta] [nvarchar](500) NULL,
	[createdDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 6/13/2024 9:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[userId] [int] NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (1, 1, N'Vincom Plaza, Lê Văn Việt, Hiệp Phú, Quận 9, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (2, 2, N'Binh Thắng 2, Dĩ An, Binh Duong, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (3, 3, N'Đ. Mạc Đĩnh Chi, Khu phố Tân Hòa, Dĩ An, Bình Dương, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (4, 1, N'R6RX+P7V, QL14, Phường Bình Tân, Buôn Hồ, Đắk Lắk, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (5, 4, N'155 Đ. Nam Kỳ Khởi Nghĩa, Phường 6, Quận 3, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (6, 5, N'103 Nguyễn Sinh Cung, Nghi Hương, Cửa Lò, Nghệ An 43000, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (7, 6, N'485 Song Hành Xa Lộ Hà Nội, Phường Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (8, 7, N'57 Đường Nguyễn Hoàng, Đống Đa, Thành phố Qui Nhơn, Bình Định, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (9, 8, N'Yongsan, Nhơn Bình, Thành phố Qui Nhơn, Bình Định 590000, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (10, 9, N'92/6 Trần Đại Nghĩa, Xã Bình Thắng, Dĩ An, Bình Dương 700000, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (11, 10, N'55 ĐT743A, Bình An, Dĩ An, Bình Dương, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (12, 12, N'Headquarter of VNU-HCM, Phường Linh Trung, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam')
INSERT [dbo].[Address] ([addressId], [userId], [specificAddress]) VALUES (13, 12, N'120 Xa Lộ Hà Nội, Thành Phố, Thủ Đức, Thành phố Hồ Chí Minh, Vietnam')
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryId], [name]) VALUES (1, N'Đồ điện tử')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (2, N'Đồ dùng học tập')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (3, N'Điện lạnh')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (4, N'Đồ gia dụng, nội thất')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (5, N'Đồ ăn, thực phẩm')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (6, N'Thời trang')
INSERT [dbo].[Category] ([categoryId], [name]) VALUES (7, N'Giải trí, thể thao, sở thích')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedbackId], [content], [rating], [orderId]) VALUES (1, N'Great product, fast shipping!', 5, 1)
INSERT [dbo].[Feedback] ([feedbackId], [content], [rating], [orderId]) VALUES (2, N'The item arrived damaged. Disappointed.', 2, 2)
INSERT [dbo].[Feedback] ([feedbackId], [content], [rating], [orderId]) VALUES (3, N'Excellent customer service. Highly recommended!', 5, 3)
INSERT [dbo].[Feedback] ([feedbackId], [content], [rating], [orderId]) VALUES (4, N'Average quality. Expected better.', 3, 4)
INSERT [dbo].[Feedback] ([feedbackId], [content], [rating], [orderId]) VALUES (5, N'The product exceeded my expectations. Very satisfied!', 4, 5)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (1, 1, 2, N'Hello! How are you?', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 1)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (2, 2, 1, N'Hi! Im doing well, thanks.', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 1)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (3, 1, 2, N'Thats great to hear!', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 1)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (4, 2, 1, N'Yes, Ive been having a good day.', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (5, 1, 3, N'Hey! Long time no see.', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (6, 3, 1, N'Yeah, its been a while. How have you been?', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (7, 1, 3, N'Ive been busy with work, but otherwise, Im good.', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (8, 3, 1, N'Glad to hear that. We should catch up soon.', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (9, 2, 3, N'Hey, do you have any plans for the weekend?', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
INSERT [dbo].[Message] ([messageId], [senderId], [receiverId], [messageText], [time], [isRead]) VALUES (10, 3, 2, N'Not yet. What do you have in mind?', CAST(N'2024-06-13T05:30:32.480' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (1, CAST(N'2024-05-01T00:00:00.000' AS DateTime), 99.9900, 1, 2, 1, N'Please handle with care.', 1, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'123 Main St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (2, CAST(N'2024-05-02T00:00:00.000' AS DateTime), 49.9900, 2, 3, 1, N'Delivery instructions: Leave at the front door.', 2, 2, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'456 Elm St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (3, CAST(N'2024-05-03T00:00:00.000' AS DateTime), 79.9900, 3, 4, 1, NULL, 3, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'789 Oak St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (4, CAST(N'2024-05-04T00:00:00.000' AS DateTime), 119.9900, 4, 5, 1, NULL, 4, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'321 Pine St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), 69.9900, 5, 6, 1, N'Gift wrapping required.', 5, 2, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'654 Maple St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (6, CAST(N'2024-05-06T00:00:00.000' AS DateTime), 59.9900, 1, 7, 1, NULL, 6, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'987 Cedar St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (7, CAST(N'2024-05-07T00:00:00.000' AS DateTime), 89.9900, 2, 8, 1, N'Please include a gift receipt.', 7, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'789 Oak St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (8, CAST(N'2024-05-08T00:00:00.000' AS DateTime), 109.9900, 3, 1, 1, NULL, 8, 2, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'543 Birch St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (9, CAST(N'2024-05-09T00:00:00.000' AS DateTime), 49.9900, 4, 1, 1, N'Urgent delivery required.', 9, 1, CAST(N'2024-06-13T05:30:32.547' AS DateTime), N'876 Walnut St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (10, CAST(N'2024-05-10T00:00:00.000' AS DateTime), 89.9900, 5, 1, 1, NULL, 10, 1, CAST(N'2024-06-13T21:24:45.300' AS DateTime), N'234 Spruce St, City')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (19, CAST(N'2024-06-13T00:00:00.000' AS DateTime), 123.0000, 1, 1, 1, NULL, 10, 3, CAST(N'2024-06-13T21:32:05.990' AS DateTime), N'eqwe')
INSERT [dbo].[Order] ([orderId], [orderDate], [price], [buyerId], [sellerId], [status], [note], [productId], [quantity], [deliveryDate], [receiverAddress]) VALUES (24, CAST(N'2024-06-13T00:00:00.000' AS DateTime), 100.0000, 1, 2, 3, NULL, 1, 1, CAST(N'2024-06-13T21:41:53.663' AS DateTime), N'Hn')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethod] ON 

INSERT [dbo].[PaymentMethod] ([id], [methodName]) VALUES (1, N'VNPay')
INSERT [dbo].[PaymentMethod] ([id], [methodName]) VALUES (2, N'COD')
INSERT [dbo].[PaymentMethod] ([id], [methodName]) VALUES (3, N'Visa')
SET IDENTITY_INSERT [dbo].[PaymentMethod] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (1, N'iPhone 13', 999.9900, 1, N'The latest iPhone model with advanced features.', 1, 1, 1, CAST(N'2024-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (2, N'Laptop HP Spectre x360', 1299.9900, 0, N'A versatile and powerful laptop for professionals.', 2, 1, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (3, N'Smart TV Samsung QLED', 1499.9900, 1, N'Immerse yourself in a stunning visual experience.', 1, 1, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (4, N'Mens Dress Shirt', 49.9900, 0, N'A stylish and comfortable shirt for formal occasions.', 2, 6, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (5, N'Womens Summer Dress', 39.9900, 1, N'Stay cool and fashionable in this lightweight dress.', 1, 6, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (6, N'Sports Shoes Nike Air Max', 129.9900, 1, N'Experience exceptional comfort and performance.', 2, 6, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (7, N'Kitchen Appliances Set', 299.9900, 0, N'Equip your kitchen with these essential appliances.', 1, 4, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (8, N'Kids Building Blocks Set', 29.9900, 1, N'Spark creativity and imagination with this fun set.', 2, 7, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (9, N'Harry Potte V.1+2', 19.9900, 0, N'Get lost in the captivating story of this bestselling novel.', 1, 2, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
INSERT [dbo].[Product] ([productId], [productName], [price], [isNew], [description], [sellerId], [categoryId], [status], [createdDate]) VALUES (10, N'Fitness Equipment Set', 199.9900, 1, N'Stay fit and healthy with this complete equipment set.', 2, 7, 1, CAST(N'2024-06-13T05:30:32.503' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (1, N'Image 1', N'https://th.bing.com/th/id/OIP.AivK9zFJ7PfalbxQrwDvaQHaGc?rs=1&pid=ImgDetMain')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (2, N'Image 2', N'https://th.bing.com/th/id/OIP.mGba6CDEayK-G5BrQdIgywHaFc?rs=1&pid=ImgDetMain')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (3, N'Image 3', N'https://th.bing.com/th/id/R.6832579c872dcb0fbe6587ab7b827b18?rik=E5gfeoYKwrUmtw&pid=ImgRaw&r=0')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (4, N'Image 4', N'https://th.bing.com/th/id/OIP.eyHjNYJpIui1VJdyHfCzogHaJ4?rs=1&pid=ImgDetMain')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (5, N'Image 5', N'https://th.bing.com/th/id/OIP.gkRheGEuNAHdSZtvYnEtMAHaNg?rs=1&pid=ImgDetMain')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (6, N'Image 6', N'https://th.bing.com/th/id/OIP.kK_ooDuqNmDTYs9XA5zU4AHaFP?rs=1&pid=ImgDetMain')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (7, N'Image 7', N'https://th.bing.com/th/id/R.47a07eadc054c89b3dc20facd41f1d22?rik=sERYlnIfL9VIMw&pid=ImgRaw&r=0')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (8, N'Image 8', N'https://th.bing.com/th/id/R.6087c95facb1ec4641151fd12f61362f?rik=xtNZguyl3uCTMg&pid=ImgRaw&r=0')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (9, N'Image 9', N'https://www.worldatlas.com/r/w1200/upload/3b/05/33/shutterstock-466404632.jpg')
INSERT [dbo].[ProductImage] ([productId], [imageName], [imageLink]) VALUES (10, N'Image 10', N'https://th.bing.com/th/id/OIP.WdjzJWQIExHX7rmoSf6DpQHaHl?rs=1&pid=ImgDetMain')
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([promotionId], [name], [description], [period], [productQuantity], [price], [isDeleted]) VALUES (1, N'Co b?n 1', N'Dành cho mô hình kinh doanh nh?, ngu?i b?t d?u kinh doanh.', 30, 10, 100.0000, 0)
INSERT [dbo].[Promotion] ([promotionId], [name], [description], [period], [productQuantity], [price], [isDeleted]) VALUES (2, N'Chuyên nghi?p 1 ', N'Dành cho ngu?i bán chuyên nghi?p', 150, 30, 500.0000, 0)
INSERT [dbo].[Promotion] ([promotionId], [name], [description], [period], [productQuantity], [price], [isDeleted]) VALUES (3, N'Gói VIP 1 ', N'Dành cho ngu?i bán chuyên nghi?p có quy mô l?n và qu?n lý hi?u su?t bán hàng', 365, 100, 1000.0000, 0)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[PromotionOrder] ON 

INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (1, CAST(N'2024-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-10T00:00:00.000' AS DateTime), 1, 99.9900, 10, 1)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (2, CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-15T00:00:00.000' AS DateTime), 2, 49.9900, 30, 2)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (3, CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-12T00:00:00.000' AS DateTime), 3, 79.9900, 100, 3)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (4, CAST(N'2024-05-04T00:00:00.000' AS DateTime), CAST(N'2024-05-18T00:00:00.000' AS DateTime), 4, 119.9900, 10, 1)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (5, CAST(N'2024-05-05T00:00:00.000' AS DateTime), CAST(N'2024-05-14T00:00:00.000' AS DateTime), 5, 69.9900, 30, 2)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (6, CAST(N'2024-05-06T00:00:00.000' AS DateTime), CAST(N'2024-05-16T00:00:00.000' AS DateTime), 1, 59.9900, 100, 3)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (7, CAST(N'2024-05-07T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime), 2, 89.9900, 10, 1)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (8, CAST(N'2024-05-08T00:00:00.000' AS DateTime), CAST(N'2024-05-17T00:00:00.000' AS DateTime), 3, 109.9900, 2, 2)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (9, CAST(N'2024-05-09T00:00:00.000' AS DateTime), CAST(N'2024-05-13T00:00:00.000' AS DateTime), 4, 49.9900, 1, 3)
INSERT [dbo].[PromotionOrder] ([promoOrderId], [startDate], [endDate], [userId], [price], [productQuantity], [promotionId]) VALUES (10, CAST(N'2024-05-10T00:00:00.000' AS DateTime), CAST(N'2024-05-19T00:00:00.000' AS DateTime), 5, 89.9900, 1, 1)
SET IDENTITY_INSERT [dbo].[PromotionOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([id], [status]) VALUES (1, N'Succsess')
INSERT [dbo].[Status] ([id], [status]) VALUES (2, N'Pending')
INSERT [dbo].[Status] ([id], [status]) VALUES (3, N'Failed')
INSERT [dbo].[Status] ([id], [status]) VALUES (4, N'Refund')
INSERT [dbo].[Status] ([id], [status]) VALUES (5, N'Waiting')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (1, NULL, 1, CAST(10000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (4, CAST(N'2024-06-13T20:34:43.143' AS DateTime), 1, CAST(10000 AS Decimal(18, 0)), 0, N'VNPay VNpay. OrderId: 4')
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (6, CAST(N'2024-06-13T21:09:14.427' AS DateTime), 1, CAST(10000 AS Decimal(18, 0)), 0, N'VNPay VNpay. OrderId: 6')
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (8, CAST(N'2024-06-13T21:19:27.197' AS DateTime), 1, CAST(10000 AS Decimal(18, 0)), 0, N'VNPay VNPAY . OrderId: 8')
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (10, CAST(N'2024-06-13T21:24:29.477' AS DateTime), 1, CAST(10000 AS Decimal(18, 0)), 1, N'VNPay VNPAY . OrderId: 10')
INSERT [dbo].[Transaction] ([orderId], [date], [paymentMethod], [amount], [status], [description]) VALUES (19, CAST(N'2024-06-13T21:31:47.613' AS DateTime), 1, CAST(100000 AS Decimal(18, 0)), 1, N'VNPay VNPAY. OrderId: 19')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (1, N'1', N'Dan Thu', N'ThuPNDSE170446@fpt.edu.vn', N'1234567890', N'Introduction 1', 1, 0, N'https://zpsocial-f58-org.zadn.vn/e24c0fc754d3b48dedc2.jpg', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (2, N'1', N'Quy duc', N'DucNQSE170473@fpt.edu.vn', N'0987654321', N'Introduction 2', 1, 0, N'https://zpsocial-f43-org.zadn.vn/57f136ac3541d91f8050.jpg', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (3, N'1', N'Khanh Hung', N'hunghkse170547@fpt.edu.vn', N'9876543210', N'Introduction 3', 1, 0, N'https://zpsocial-f43-org.zadn.vn/310dc762c2792e277768.jpg', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (4, N'admin', N'Admin name', N'admin', N'0123456789', N'Introduction 4', 2, 0, N'https://th.bing.com/th/id/OIP.57236NGNujICB1CuE0X2MwAAAA?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (5, N'1', N'Michael Davis', N'michaeldavis@example.com', N'5432167890', N'Introduction 5', 1, 0, N'https://th.bing.com/th/id/R.808636cc55f2ccceac3dab65f59e06a0?rik=rYlKMlOaLmfyUg&pid=ImgRaw&r=0', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (6, N'1', N'Olivia Wilson', N'oliviawilson@example.com', N'9876540123', N'Introduction 6', 2, 1, N'https://demoda.vn/wp-content/uploads/2022/08/hinh-anh-avatar-nu-de-thuong.jpg', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (7, N'1', N'James Taylor', N'jamestaylor@example.com', N'3210987654', N'Introduction 7', 1, 1, N'https://th.bing.com/th/id/OIP.dRG04_HcB012wboIb8azKwHaHa?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (8, N'1', N'Sophia Martinez', N'sophiamartinez@example.com', N'4567890123', N'Introduction 8', 2, 0, N'https://th.bing.com/th/id/OIP.4SYRN4EfioJSetoM-ggnSAHaHa?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (9, N'1', N'Benjamin Anderson', N'benjaminanderson@example.com', N'6789012345', N'IntrSoduction 9', 1, 1, N'https://th.bing.com/th/id/OIP.pAdUb6ZlM45prBGAjT__FAHaHW?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (10, N'1', N'Ava Thomas', N'avathomas@example.com', N'9876543210', N'Introduction 10', 2, 1, N'https://kynguyenlamdep.com/wp-content/uploads/2022/08/avatar-ff-ngau.jpg', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (11, N'user', N'user name', N'user', N'123124125125', N'Introduction 4', 0, 0, N'https://th.bing.com/th/id/OIP.srNFFzORAaERcWvhwgPzVAHaHa?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
INSERT [dbo].[User] ([userId], [password], [fullName], [email], [phoneNumber], [introduction], [roleId], [isDeleted], [avarta], [createdDate]) VALUES (12, N'moderator', N'moderator name', N'moderator', N'3523523523', N'Introduction 4', 1, 0, N'https://th.bing.com/th/id/OIP.i5cwEBkZmmuTgG6Jwcau5gHaHa?rs=1&pid=ImgDetMain', CAST(N'2024-06-13T05:30:32.460' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (1, 1)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (1, 2)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (2, 3)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (2, 4)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (3, 5)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (3, 6)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (4, 7)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (4, 8)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (5, 9)
INSERT [dbo].[Wishlist] ([userId], [productId]) VALUES (5, 10)
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_User]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([orderId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Order]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User_receiver] FOREIGN KEY([receiverId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User_receiver]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User_sender] FOREIGN KEY([senderId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User_sender]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([status])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserBuy] FOREIGN KEY([buyerId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserBuy]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserSell] FOREIGN KEY([sellerId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserSell]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Message_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Message_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([sellerId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductImage] CHECK CONSTRAINT [FK_ProductImage_Product]
GO
ALTER TABLE [dbo].[PromotionOrder]  WITH CHECK ADD  CONSTRAINT [FK_PromotionOrder_Promotion] FOREIGN KEY([promotionId])
REFERENCES [dbo].[Promotion] ([promotionId])
GO
ALTER TABLE [dbo].[PromotionOrder] CHECK CONSTRAINT [FK_PromotionOrder_Promotion]
GO
ALTER TABLE [dbo].[PromotionOrder]  WITH CHECK ADD  CONSTRAINT [FK_PromotionOrder_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[PromotionOrder] CHECK CONSTRAINT [FK_PromotionOrder_User]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([orderId])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Order]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_PaymentMethod] FOREIGN KEY([paymentMethod])
REFERENCES [dbo].[PaymentMethod] ([id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_PaymentMethod]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Product]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_User]
GO
