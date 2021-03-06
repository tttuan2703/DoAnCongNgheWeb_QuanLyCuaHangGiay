create database [dbQLBanGiay]
go
USE [dbQLBanGiay]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[tenTaiKhoan] [varchar](30) NOT NULL,
	[matKhau] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[maGiay] [int] NOT NULL,
	[slMua] [int] NULL,
	[thanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[maGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMucGiay]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucGiay](
	[maDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giay]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Giay](
	[maGiay] [int] IDENTITY(1,1) NOT NULL,
	[tenGiay] [nvarchar](max) NOT NULL,
	[size] [varchar](max) NULL,
	[maDanhMuc] [int] NOT NULL,
	[hinh] [varchar](max) NULL,
	[slTon] [int] NULL,
	[DonGia] [float] NULL,
	[moTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[tenTaiKhoan] [varchar](30) NULL,
	[ngayBan] [date] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinTaiKhoan]    Script Date: 12/28/2020 9:49:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinTaiKhoan](
	[tenTaiKhoan] [varchar](30) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[hoTen] [nvarchar](40) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[SDT] [varchar](12) NULL,
	[diaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMucGiay] ON 

INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (1, N'Giày thể thao Balenciaga')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (2, N'Giày thể thao Gucci')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (3, N'Giày thể thao Anta')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (4, N'Giày thể thao Dolce va Gabbana')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (5, N'Giày thể thao MLB')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (6, N'Giày thể thao Domba hàng hiệu ')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (7, N'Thương hiệu Giày Thể Thao Lacoste')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (8, N'Giày thể thao Burberry cao cấp')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (9, N'Thương hiệu giày thể thao Vans')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (10, N'Giày thể thao New Balance')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (11, N'Giày thể thao Y3')
INSERT [dbo].[DanhMucGiay] ([maDanhMuc], [tenDanhMuc]) VALUES (12, N'Thương hiệu giày Fendi')
SET IDENTITY_INSERT [dbo].[DanhMucGiay] OFF
SET IDENTITY_INSERT [dbo].[Giay] ON 

INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (1, N'Giày Domba High Point Sp (White/Black) H-9011', N'36-42', 1, N'1.jpg', 40, 2299000, N'Giày Domba High Point Sp White/Black H-9011 Màu Ðen Tr?ng size ‘36-42’ là dôi giày Unisex cao c?p cho c? nam và n? d?n t? thuong hi?u Domba n?i ti?ng c?a Hàn Qu?c. Giày Domba High Point Sp White/Black H-9011 du?c thi?t k? mang nét th? thao kh?e kho?n, nang d?ng cho b?n tr?i nghi?m tuy?t v?i khi di lên chân.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (2, N'Giày Domba High Point White/Silver H-9113', N'36-42', 1, N'2.jpg', 20, 1200000, N'Giày Domba High Point White/Silver H-9113 có thi?t k? c? di?n dem l?i phong cách l?ch lãm và nang d?ng d? d? dàng k?t h?p v?i m?i th?.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (3, N'Giày Domba High Point2 Gold Metallic H-9117 Màu Trắng Gót Vàng', N'36-42', 1, N'3.jpg', 10, 1499000, N'Giày Domba High Point2 Gold Metallic H-9117 Màu Tr?ng Gót Vàng d?n t? thuong hi?u Domba n?i ti?ng c?a Hàn Qu?c. Giày Domba High Point2 Gold du?c thi?t k? mang nét th? thao kh?e kho?n, nang d?ng cho b?n tr?i nghi?m tuy?t v?i khi di lên chân.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (4, N'Giày Domba High Point 3m (White/3m Scotch) H-9014 Màu Trắng', N'36-42', 1, N'4.jpg', 30, 1110000, N'Giày Domba High Point 3m (White/3m Scotch) H-9014 Màu Tr?ng d?n t? thuong hi?u Domba n?i ti?ng c?a Hàn Qu?c. Giày Domba High Point 3m du?c thi?t k? mang nét th? thao kh?e kho?n, nang d?ng cho b?n tr?i nghi?m tuy?t v?i khi di lên chân.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (5, N'Giày Domba High Point Hg (White/Hologram) H-9019 Màu Trắng', N'36-42', 1, N'5.jpg', 5, 900000, N'Giày Domba High Point Hg (White/Hologram) H-9019 Màu Tr?ng d?n t? thuong hi?u Domba n?i ti?ng c?a Hàn Qu?c. Giày Domba High Point du?c thi?t k? mang nét th? thao kh?e kho?n, nang d?ng cho b?n tr?i nghi?m tuy?t v?i khi di lên chân.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (6, N'Giày Domba High Point Ps White/Prism H-9015 Màu Trắng', N'36-42', 1, N'6.jpg', 7, 1800000, N'Giày Domba High Point Ps White/Prism H-9015 Màu Tr?ng Size 39 có thi?t k? nang d?ng, hi?n d?i, phong cách c?a thuong hi?u Domba . Ðôi Giày Domba này du?c s?n xu?t t? m? t?ng chi ti?t, b?n d?p trong su?t th?i gian s? d?ng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (7, N'Giày Domba High Point White/White H-9115', N'36-42', 1, N'7.jpg', 15, 2000000, N'Giày Domba High Point White/White H-9115 có thi?t k? c? di?n dem l?i phong cách l?ch lãm và nang d?ng d? d? dàng k?t h?p v?i m?i th?. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (8, N'Giày Thể Thao Domba High Point White/Black H-9111', N'36-42', 1, N'8.jpg', 17, 1200000, N'Giày Domba High Point White/Black H-9111 Màu Tr?ng size 40 là dôi giày Unisex có thi?t k? c? di?n dem l?i phong cách l?ch lãm và nang d?ng d? d? dàng k?t h?p v?i m?i th?. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (9, N'Giày Thể Thao Lacoste Graduate 319 (Trắng)', N'36-42', 2, N'9.jpg', 40, 1780000, N'Giày Lacoste Misano 120 Size 39.5 Màu Tr?ng là dôi giày th?i trang nam thi?t k? d?p m?t, ki?u dáng th?i trang th? thao. Lacoste Misano 120 có th? d? dàng k?t h?p v?i các trang ph?c khác nhau d? thay d?i phong cách cho b?n thân tr? nên nang d?ng hon.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (10, N'Giày Thể Thao Lacoste Misano 120 Màu Đen', N'36-42', 2, N'10.jpg', 40, 2500000, N'Giày Th? Thao Lacoste Graduate 319 màu tr?ng cho nam du?c thi?t k? v?i phong cách tr? trung, kh?e kho?n và l?ch lãm mang d?m phong phong cách d?c trung c?a thuong hi?u Lacoste.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (11, N'Giày Thể Thao Lacoste Misano 120 Màu Xám', N'36-42', 2, N'11.jpg', 40, 1890000, N'Giày Th? Thao Lacoste Misano 120 Màu Ðen thi?t k? d?p m?t, th?i trang. V?i dôi giày th? thao này b?n có th? k?t h?p v?i các trang ph?c khác nhau d? thay d?i phong cách cho b?n thân tr? nên nang d?ng hon.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (12, N'Giày Thể Thao Lacoste Carnaby Evo Lightweight 119 Màu Navy', N'36-42', 2, N'15.jpg', 40, 1899000, N'Giày Th? Thao Lacoste Carnaby Evo Lightweight 119 Màu Navy Ðu?c thi?t k? v?i phong cách tr? trung, kh?e kho?n và l?ch lãm mang d?m phong phong cách d?c trung c?a thuong hi?u Lacoste.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (13, N'Burberry Vintage Check Lowtop Sneakers', N'36-42', 3, N'16.jpg', 40, 1270000, N' These low-top sneakers from Burberry have sole. Decorated in the House some-would-say iconic Vintage check, they also feature bold logo lettering for a perfect blend of heritage and contemporary style. Check them out! Featuring a round toe, a lace-up front fastening, a check print, a printed logo and a flat rubber sole. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (14, N'Burberry Logo Print Vintage Check AND Leather Sneakers', N'36-42', 3, N'17.jpg', 40, 1260000, N'Looking for a typical love? Well these are not for you then. Made from white and archive beige, these logo print vintage check and leather sneakers from Burberry are simply irresistible. You will not be able to avoid them.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (15, N'Burberry Vintage Check Cotton Sneakers', N'36-42', 3, N'18.jpg', 40, 2340000, N'A runway-inspired sneaker in our archival Vintage check, set on an accentuated tread and tagged with our refreshed logo. Featuring a lace-up front fastening and a white rubber sole.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (16, N'Burberry Vintage Check AND Leather Sneakers', N'36-42', 3, N'19.jpg', 40, 2700000, N'Italian-made sneakers in the archival Vintage check, detailed with smooth leather accents and a logo-tagged ankle cuff.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (17, N'Burberry House Check Panel Sneakers', N'36-42', 3, N'20.jpg', 40, 3100000, N'Kickstart your days with these white calf leather, calf suede and sheepskin and Archive beige cotton blend House Check panel sneakers from Burberry.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (18, N'Giày Sneaker Burberry Logo-Print Vintage Check Sneakers Kẻ Phối Màu', N'36-42', 3, N'21.jpg', 40, 3200000, N'Giày Sneaker Burberry Logo-Print Vintage Check Sneakers K? Ph?i Màu d?n t? thuong hi?u Burberry n?i ti?ng. Ðôi giày thi?t k? don gi?n nhung vô cùng b?t m?t và n?i b?t.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (19, N'Burberry Check Print Sneakers', N'36-42', 3, N'22.jpg', 40, 2300000, N'Why blend in when you can stand out? These check print sneakers from Burberry were made to be noticed. Featuring a Haymarket check pattern, a round toe, a lace-up front fastening, a contrasting heel counter and a flat rubber sole. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (20, N'Burberry Crystal Detail Suede AND Mesh Arthur Sneakers', N'36-42', 3, N'23.jpg', 40, 2350000, N'Introducing our new runway sneaker crafted in crystal-embellished suede and technical mesh. The style is capped with a polished overshoe inspired by rain boots and a cross-detailed tread referencing our iconic check.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (21, N'VANS OLD SKOOL CLASSIC BLACK/WHITE', N'36-42', 4, N'24.jpg', 40, 2150000, N'VANS OFF THE WALL là thuong hi?u s?n xu?t giày và ph? ki?n cho các môn th? thao nhu tru?t ván, xe d?p BMX, lu?t sóng, tru?t tuy?t và mô tô dua, ho?t d?ng m?nh m? trong linh v?c th? thao m?o hi?m và linh v?c Custom sáng t?o.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (22, N'VANS CHECKERBOARD SLIP-ON CLASSIC BLACK/WHITE - VANS VIỆT NAM', N'36-42', 4, N'25.png', 40, 1500000, N'B?t d?u tr? nên n?i ti?ng khi du?c Sean Penn s? d?ng trong b? phim Fast Times vào nam 1982 và t? phong trào tr? thành m?t phong cách huy?n tho?i không h? l?i th?i và luôn n?m trong m?c "Best Seller" c?a VANS cho t?i th?i di?m hi?n t?i.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (23, N'VANS CLASSIC SLIP-ON TRUE WHITE', N'36-42', 4, N'26.png', 40, 1230000, N'VANS Classic Slip-on luôn có m?t lu?ng fan dông d?o trung thành, ki?u dáng don gi?n ch? là m?t dôi giày lu?i nhung thi?t k? l?i dành cho v?n d?ng viên tru?t ván, BMX và nhi?u môn th? thao m?o hi?m khác, di?u dó khi?n cho VANS Classic Slip-on tr? nên d?c bi?t khi ?n ch?a m?t n?i l?c dáng k? trong v? b? ngoài don gi?n. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (24, N'VANS CLASSIC OLD SKOOL NAVY/WHITE', N'36-42', 4, N'27.png', 40, 1100000, N'VANS OLD SKOOL là phiên b?n du?c fan hâm m? c?a VANS ua thích nh?t b?i ki?u dáng don gi?n nhung v?n h?p th?i trang. V?i d? cao su d? bám t?t cùng thi?t k? t?i uu cho môn tru?t ván, BMX và các môn th? thao m?o hi?m khác, nh?ng linh v?c VANS nh?m t?i hoàn toàn là th? thao m?o hi?m v?i nh?ng chuong trình và cu?c thi h?p d?n t?i US.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (25, N'VANS CLASSIC SK8-HI NAVY/WHITE', N'36-42', 4, N'28.png', 40, 1399000, N'VANS CLASSIC SK8-HI NAVY/WHITE v?i thi?t k? d? cao su d? bám t?t, cùng ch?t li?u Canvas b?n b? phù h?p các môn th? thao m?o hi?m nhu tru?t ván, xe d?p BMX, mô tô dua, tru?t tuy?t v.v...')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (26, N'VANS CLASSIC AUTHENTIC BLACK/WHITE', N'36-42', 4, N'29.png', 40, 2100000, N'Authentic là thi?t k? d?c bi?t k?t h?p gi?a VANS Classic Authentic và Sneaker, du?c ra m?t s?m nh?t t? nam 1966 v?i tên g?i Vans #44, du?c trang b? d? cao su d? bám t?t cho nh?ng môn th? thao m?o hi?m nhu tru?t ván, BMX v.v..., upper v?i canvas cao c?p, phong cách c? di?n h?p v?i c? nam l?n n?.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (27, N'VANS CLASSIC SK8-HI BLACK/WHITE', N'36-42', 4, N'30.png', 40, 2650000, N'VANS SK8 xu?t hi?n l?n d?u nam 1978 v?i tên g?i "Style 38" v?i thi?t k? cao qua m?t cá chân, b?o v? ph?n quan tr?ng noi mà các v?n d?ng viên tru?t ván l?m d?ng nhi?u d? có nh?ng Tricks d?c dáo, và d?ng th?i Sk8 cung mang l?i phong cách th?i trang d?c bi?t di?m màu cho công viên th?i b?y gi?. ')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (28, N'VANS CANVAS OLD SKOOL CLASSIC TRUE WHITE', N'36-42', 4, N'31.png', 40, 2222000, N'L?i là m?t phiên b?n Best Seller c?a VANS m?i th?i d?i, dôi giày ch? v?i m?t màu tr?ng tinh này dã mang d?n cho thuong hi?u khá nhi?u l?i nhu?n dù khá kén ngu?i ch?n. Là phiên b?n du?c VANS s? d?ng ch? y?u trong các s? ki?n Custom giày, du?c các fan hâm m? c?a VANS v? ra r?t nhi?u ki?u dáng khác nhau và luôn du?c hãng VANS ?ng h? và th?m chí là tài tr? d? có nh?ng phiên b?n Custom d?c s?c.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (29, N'Giày Thể Thao New Balance ME420C', N'36-42', 5, N'32.png', 40, 3150000, N'Giày Th? Thao New Balance ME420C du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (30, N'Giày Thể Thao New Balance CT05', N'36-42', 5, N'33.jpg', 40, 2299000, N'Giày Th? Thao New Balance CT05 du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (31, N'Giày Thể Thao New Balance MS24LHB2 CLASSIC', N'36-42', 5, N'34.jpg', 40, 1299000, N'Giày Th? Thao New Balance MS24LHB2 CLASSIC du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (32, N'Giày Thể Thao New Balance MS997LOF 997 Sport', N'36-42', 5, N'35.jpg', 40, 2400000, N'Giày Th? Thao New Balance MS997LOF 997 Sport có màu s?c trang nhã, phong cách hi?n d?i s? góp ph?n kh?ng d?nh phong cách th?i trang c?a b?n.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (33, N'Giày thể thao New Balance WS24', N'36-42', 5, N'36.jpg', 40, 2800000, N'Ðu?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (34, N'Giày Thể Thao New Balance MTARISB1 Fresh Foam Arishi Trail', N'36-42', 5, N'37.jpg', 40, 2680000, N'Giày Th? Thao New Balance MTARISB1 Fresh Foam Arishi Trail có màu s?c trang nhã, phong cách hi?n d?i s? góp ph?n kh?ng d?nh phong cách th?i trang c?a b?n.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (35, N'Giày Thể Thao New Balance MKOZEHB2 CUSHIONING', N'36-42', 5, N'38.jpg', 40, 1900000, N'Giày Th? Thao New Balance MKOZEHB2 CUSHIONING du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (36, N'Giày Thể Thao New Balance CT20LM1 CT20', N'36-42', 5, N'39.jpg', 40, 2999000, N'Giày Th? Thao New Balance CT20LM1 CT20 du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (37, N'Giay the thao Y3', N'40', 11, N'122.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (38, N'Giay the thao Y3', N'40', 11, N'123.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (39, N'Giay the thao Y3', N'40', 11, N'124.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (40, N'Giay the thao Y3', N'40', 11, N'125.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (41, N'Giay the thao Y3', N'40', 11, N'126.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (42, N'Giay the thao Y3', N'40', 11, N'127.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (43, N'Giay the thao Y3', N'40', 11, N'128.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (44, N'Thuong hieu giay Fendi', N'40', 12, N'129.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (45, N'Thuong hieu giay Fendi', N'40', 12, N'130.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (46, N'Thuong hieu giay Fendi', N'40', 12, N'131.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (47, N'Thuong hieu giay Fendi', N'40', 12, N'132.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (48, N'Thuong hieu giay Fendi', N'40', 12, N'133.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (49, N'Thuong hieu giay Fendi', N'40', 12, N'134.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (50, N'Thuong hieu giay Fendi', N'40', 12, N'135.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (51, N'Thuong hieu giay Fendi', N'40', 12, N'136.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (52, N'Thuong hieu giay Fendi', N'40', 12, N'137.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (53, N'Giày Thể Thao New Balance ME420C', N'36-42', 5, N'32.png', 40, 3150000, N'Giày Th? Thao New Balance ME420C du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (54, N'Giày Thể Thao New Balance CT05', N'36-42', 5, N'33.jpg', 40, 2299000, N'Giày Th? Thao New Balance CT05 du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (55, N'Giày Thể Thao New Balance MS24LHB2 CLASSIC', N'36-42', 5, N'34.jpg', 40, 1299000, N'Giày Th? Thao New Balance MS24LHB2 CLASSIC du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (56, N'Giày Thể Thao New Balance MS997LOF 997 Sport', N'36-42', 5, N'35.jpg', 40, 2400000, N'Giày Th? Thao New Balance MS997LOF 997 Sport có màu s?c trang nhã, phong cách hi?n d?i s? góp ph?n kh?ng d?nh phong cách th?i trang c?a b?n.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (57, N'Giày thể thao New Balance WS24', N'36-42', 5, N'36.jpg', 40, 2800000, N'Ðu?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (58, N'Giày Thể Thao New Balance MTARISB1 Fresh Foam Arishi Trail', N'36-42', 5, N'37.jpg', 40, 2680000, N'Giày Th? Thao New Balance MTARISB1 Fresh Foam Arishi Trail có màu s?c trang nhã, phong cách hi?n d?i s? góp ph?n kh?ng d?nh phong cách th?i trang c?a b?n.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (59, N'Giày Thể Thao New Balance MKOZEHB2 CUSHIONING', N'36-42', 5, N'38.jpg', 40, 1900000, N'Giày Th? Thao New Balance MKOZEHB2 CUSHIONING du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (60, N'Giày Thể Thao New Balance CT20LM1 CT20', N'36-42', 5, N'39.jpg', 40, 2999000, N'Giày Th? Thao New Balance CT20LM1 CT20 du?c thi?t k? nh? g?n, ôm sát bàn chân ngu?i di, giúp tôn dáng ngu?i hi?u qu?, v?i thi?t k? ph?n c? giày r?ng và có d?m êm ái d? b?n di giày d? dàng.')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (62, N'Giay the thao Balenciaga', N'40', 6, N'81.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (63, N'Giay the thao Balenciaga', N'40', 6, N'82.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (64, N'Giay the thao Balenciaga', N'40', 6, N'83.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (65, N'Giay the thao Balenciaga', N'40', 6, N'84.jpeg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (66, N'Giay the thao Balenciaga', N'40', 6, N'85.jpeg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (67, N'Giay the thao Balenciaga', N'40', 6, N'86.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (68, N'Giay the thao Balenciaga', N'40', 6, N'87.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (69, N'Giay the thao Balenciaga', N'40', 6, N'88.jpeg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (70, N'Giay the thao Gucci', N'40', 7, N'89.jpeg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (71, N'Giay the thao Gucci', N'40', 7, N'90.jpeg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (72, N'Giay the thao Gucci', N'40', 7, N'91.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (73, N'Giay the thao Gucci', N'40', 7, N'92.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (74, N'Giay the thao Gucci', N'40', 7, N'93.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (75, N'Giay the thao Gucci', N'40', 7, N'94.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (76, N'Giay the thao Gucci', N'40', 7, N'95.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (77, N'Giay the thao Gucci', N'40', 7, N'96.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (78, N'Giay the thao Gucci', N'40', 7, N'97.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (79, N'Giay the thao Anta', N'40', 8, N'98.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (80, N'Giay the thao Anta', N'40', 8, N'99.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (81, N'Giay the thao Anta', N'40', 8, N'100.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (82, N'Giay the thao Anta', N'40', 8, N'101.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (83, N'Giay the thao Anta', N'40', 8, N'102.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (84, N'Giay the thao Anta', N'40', 8, N'103.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (85, N'Giay the thao Anta', N'40', 8, N'104.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (86, N'Giay the thao Anta', N'40', 8, N'105.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (87, N'Giay the thao Dolce va Gabbana', N'40', 9, N'106.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (88, N'Giay the thao Dolce va Gabbana', N'40', 9, N'107.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (89, N'Giay the thao Dolce va Gabbana', N'40', 9, N'108.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (90, N'Giay the thao Dolce va Gabbana', N'40', 9, N'109.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (91, N'Giay the thao Dolce va Gabbana', N'40', 9, N'110.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (92, N'Giay the thao Dolce va Gabbana', N'40', 9, N'111.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (93, N'Giay the thao Dolce va Gabbana', N'40', 9, N'112.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (94, N'Giay the thao Dolce va Gabbana', N'40', 9, N'113.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (95, N'Giay the thao MLB', N'40', 10, N'114.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (96, N'Giay the thao MLB', N'40', 10, N'115.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (97, N'Giay the thao MLB', N'40', 10, N'116.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (98, N'Giay the thao MLB', N'40', 10, N'117.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (99, N'Giay the thao MLB', N'40', 10, N'118.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (100, N'Giay the thao MLB', N'40', 10, N'119.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
GO
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (101, N'Giay the thao MLB', N'40', 10, N'120.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
INSERT [dbo].[Giay] ([maGiay], [tenGiay], [size], [maDanhMuc], [hinh], [slTon], [DonGia], [moTa]) VALUES (102, N'Giay the thao MLB', N'40', 10, N'121.jpg', 15, 2000000, N'Giày chính hãng (giày auth) là dòng giày được sản xuất hoàn toàn chính hãng, từ những chất liệu cao cấp chính hãng,')
SET IDENTITY_INSERT [dbo].[Giay] OFF
ALTER TABLE [dbo].[Giay] ADD  DEFAULT ((0)) FOR [slTon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_G] FOREIGN KEY([maGiay])
REFERENCES [dbo].[Giay] ([maGiay])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_CTHD_G]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HD] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_CTHD_HD]
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD  CONSTRAINT [fk_G_DMG] FOREIGN KEY([maDanhMuc])
REFERENCES [dbo].[DanhMucGiay] ([maDanhMuc])
GO
ALTER TABLE [dbo].[Giay] CHECK CONSTRAINT [fk_G_DMG]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_TTTK] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[ThongTinTaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_TTTK]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD CHECK  (([slMua]>(0)))
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD CHECK  (([thanhTien]>(0)))
GO
ALTER TABLE [dbo].[Giay]  WITH CHECK ADD CHECK  (([donGia]>(0)))
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD CHECK  (([tongTien]>(0)))
GO
