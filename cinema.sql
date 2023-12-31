﻿USE [master]
GO

CREATE DATABASE [AppXemPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AppXemPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AppXemPhim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AppXemPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AppXemPhim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AppXemPhim] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AppXemPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AppXemPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AppXemPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AppXemPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AppXemPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AppXemPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [AppXemPhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AppXemPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AppXemPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AppXemPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AppXemPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AppXemPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AppXemPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AppXemPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AppXemPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AppXemPhim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AppXemPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AppXemPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AppXemPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AppXemPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AppXemPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AppXemPhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AppXemPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AppXemPhim] SET RECOVERY FULL 
GO
ALTER DATABASE [AppXemPhim] SET  MULTI_USER 
GO
ALTER DATABASE [AppXemPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AppXemPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AppXemPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AppXemPhim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AppXemPhim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AppXemPhim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AppXemPhim', N'ON'
GO
ALTER DATABASE [AppXemPhim] SET QUERY_STORE = OFF
GO
USE [AppXemPhim]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calendar](
	[month] [int] NOT NULL,
 CONSTRAINT [PK_calendar] PRIMARY KEY CLUSTERED 
(
	[month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] NOT NULL,
	[Phone] [nchar](13) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[Email] [nchar](30) NOT NULL,
	[Ho] [nchar](30) NOT NULL,
	[Ten] [nchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NgayDangKi] [date] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiemThuong] [int] NULL,
	[LoaiThanhVien] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ID] [int] NOT NULL,
	[ten] [nchar](30) NULL,
	[thoi_luong] [int] NULL,
	[gioi_han_tuoi] [nchar](10) NULL,
	[ngay_cong_chieu] [date] NULL,
	[ngon_ngu] [nchar](30) NULL,
	[dao_dien] [nchar](50) NULL,
	[dien_vien] [nchar](100) NULL,
	[quoc_gia] [nchar](20) NULL,
	[tom_tat] [nchar](300) NULL,
	[trang_thai] [bit] NULL,
	[loai_phim] [int] NULL,
	[nha_cung_cap] [int] NULL,
	[poster_link] [nchar](100) NULL,
	[trailer] [nvarchar](100) NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[ID] [nchar](50) NOT NULL,
	[TrangThai] [bit] NULL,
	[PhongID] [int] NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[ID] [int] NOT NULL,
	[Ten] [nchar](50) NULL,
	[DieuKien] [nchar](100) NULL,
	[PhanTramDoiDiem] [float] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVe](
	[ID] [int] NOT NULL,
	[Ten] [nchar](20) NULL,
	[PhanTramCongThem] [float] NULL,
 CONSTRAINT [PK_LoaiVe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ID] [int] NOT NULL,
	[Ten] [nchar](30) NULL,
	[Phone] [nchar](13) NULL,
	[Email] [nchar](40) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] NOT NULL,
	[TenTK] [nchar](50) NULL,
	[Password] [nchar](50) NULL,
	[Ho] [nchar](30) NULL,
	[Ten] [nchar](20) NULL,
	[SDT] [nchar](13) NULL,
	[NgaySinh] [date] NULL,
	[NgayVaoLam] [date] NULL,
	[GioiTinh] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[ID] [int] NOT NULL,
	[SoLuongGhe] [nchar](10) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[ID] [int] NOT NULL,
	[GioBatDau] [datetime2](7) NULL,
	[PhongID] [int] NULL,
	[PhimID] [int] NULL,
	[Gia] [float] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SuatChieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuKien](
	[ID] [int] NOT NULL,
	[Ten] [nchar](50) NULL,
	[NgayApDung] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[PhanTramGiam] [float] NULL,
	[linkposter] [nchar](100) NULL,
 CONSTRAINT [PK_SuKien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[id] [int] NOT NULL,
	[ten_the_loai] [nchar](40) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai_Phim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhimID] [int] NOT NULL,
	[LoaiPhimID] [int] NOT NULL,
 CONSTRAINT [PK_TheLoai_Phim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[ID] [int] NOT NULL,
	[NgayBan] [datetime2](7) NULL,
	[Ghe] [nchar](50) NULL,
	[NVID] [int] NULL,
	[CusId] [int] NULL,
	[name] [nchar](60) NULL,
	[sdt] [nchar](20) NULL,
	[email] [nchar](50) NULL,
	[Gia] [float] NULL,
	[IDGiamGia] [int] NULL,
	[SuatChieuID] [int] NULL,
	[LoaVe] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[calendar] ([month]) VALUES (1)
INSERT [dbo].[calendar] ([month]) VALUES (2)
INSERT [dbo].[calendar] ([month]) VALUES (3)
INSERT [dbo].[calendar] ([month]) VALUES (4)
INSERT [dbo].[calendar] ([month]) VALUES (5)
INSERT [dbo].[calendar] ([month]) VALUES (6)
INSERT [dbo].[calendar] ([month]) VALUES (7)
INSERT [dbo].[calendar] ([month]) VALUES (8)
INSERT [dbo].[calendar] ([month]) VALUES (9)
INSERT [dbo].[calendar] ([month]) VALUES (10)
INSERT [dbo].[calendar] ([month]) VALUES (11)
INSERT [dbo].[calendar] ([month]) VALUES (12)
GO
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (11, N'0907471645   ', N'lu0c+GqlVMQ=                                      ', N'nhatnguyenn0802@gmail.com     ', N'nguyen le                     ', N'thu van             ', CAST(N'2023-04-12' AS Date), CAST(N'2023-04-26' AS Date), 1, 3, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (12, N'0908012046   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'nhat                ', CAST(N'2023-04-22' AS Date), CAST(N'2023-04-28' AS Date), 1, 0, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (13, N'0986553475   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'nhat                ', CAST(N'2023-04-11' AS Date), CAST(N'2023-04-28' AS Date), 1, 0, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (14, N'0907471648   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'nhat                ', CAST(N'2023-04-18' AS Date), CAST(N'2023-04-28' AS Date), 1, 0, 3)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (15, N'0907471234   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'nhat                ', CAST(N'2023-04-14' AS Date), CAST(N'2023-04-28' AS Date), 1, 0, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (16, N'1234567890   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'nhat                ', CAST(N'2023-04-15' AS Date), CAST(N'2023-04-28' AS Date), 1, 7, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (17, N'0987654321   ', N'lu0c+GqlVMQ=                                      ', N'nhat@gmail.com                ', N'nguyen minh                   ', N'cho phuc            ', CAST(N'2023-05-26' AS Date), CAST(N'2023-05-01' AS Date), 1, 0, 4)
INSERT [dbo].[Customer] ([ID], [Phone], [Password], [Email], [Ho], [Ten], [NgaySinh], [NgayDangKi], [GioiTinh], [DiemThuong], [LoaiThanhVien]) VALUES (18, N'234567991    ', N'lu0c+GqlVMQ=                                      ', N'asdasd@asdsad                 ', N'dasda                         ', N'asdasd              ', CAST(N'2023-05-17' AS Date), CAST(N'2023-05-08' AS Date), 1, 0, 4)
GO
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (2, N'SHAZAM! THE ANGERS OF THE GODS', 130, N'13+       ', CAST(N'2023-05-05' AS Date), N'Mỹ - ViệtSub                  ', N'David F. Sandberg                                 ', N' Zachary Levi, Asher Angel, Jack Dylan Grazer, Adam Brody, Ross Butler, Meagan Good, D.J. Cotrona   ', N'Mỹ                  ', N'Một tác phẩm từ New Line Cinema mang tên “Shazam! Fury of the Gods,” tiếp tục câu chuyện về chàng trai Billy Batson, và bản ngã Siêu anh hùng trưởng thành của mình sau khi hô cụm từ “SHAZAM !,” ma thuật.                                                                                                 ', 1, NULL, 2, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1679577876/0016747_0_s43kzk.jpg                  ', N'https://www.youtube.com/watch?v=VPdzrS5xlWA')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (3, N'65 - TRẬN CHIẾN THỜI TIỀN SỬ  ', 90, N'13+       ', CAST(N'2023-05-06' AS Date), N'Mỹ - ViệtSub                  ', N'Scott Beck, Bryan Woods                           ', N' Adam Driver, Ariana Greenblatt, Chloe Coleman…                                                     ', N'Mỹ                  ', N'Sau cú va chạm thảm khốc, tàu vũ trụ của Mills (Adam Driver) bay thẳng đến một hành tinh không xác...                                                                                                                                                                                                       ', 1, NULL, 3, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1679663988/a1_ez4kaa.jpg                         ', N'https://www.youtube.com/watch?v=5ieCIed2At0')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (4, N'CATS IN THE MUSEUM            ', 80, N'8+        ', CAST(N'2023-05-08' AS Date), N'Phim có phụ đề                ', N'Vasiliy Rovenskiy                                 ', N'                                                                                                    ', N'Mỹ                  ', N'Chú mèo nhỏ Vincent và chú chuột Maurice thoát khỏi trận lụt nhờ trốn trong piano cũ, được các thủy thủ cứu và gửi vào bảo tàng. Ở đó, chúng gặp một đội mèo ưu tú đã bảo vệ các tác phẩm nghệ thuật khỏi chuột và các loài gây hại khác trong nhiều thế kỷ...                                              ', 1, NULL, 4, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682603369/HO00002659_jacqdm.jpg                 ', N'https://www.youtube.com/watch?v=8luiie842wA')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (5, N'INHUMAN KISS : THE LAST BREATH', 122, N'18+       ', CAST(N'2023-05-08' AS Date), N'Phim có phụ đề                ', N'Haruo Sotozaki                                    ', N'JJ Krissanapoom Pipulsonggram, Nink Chanya McClory                                                  ', N'Mỹ                  ', N'20 năm sau thảm kịch đầu tiên, Sao trở thành "bình chứa" tiếp theo của Ma Lai. Sao gặp gỡ và bén duyên với Cloud, cặp đôi ngang trái phải đối mặt với những trắc trở điên rồ của số phận: nhóm người săn lùng Ma Lai trong khi Sao đang đánh mất chính mình...                                              ', 1, NULL, 3, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682603640/HO00002667_m5d5zf.jpg                 ', N'https://www.youtube.com/watch?v=Pgn32mkcOTI')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (6, N'
FAST & FURIOUS X            ', 93, N'16+       ', CAST(N'2023-05-22' AS Date), N'Phim có phụ đề                ', N'Vin Diesel                                        ', N'Vin Diesel                                                                                          ', N'Mỹ                  ', N'Dom Toretto và gia đình của anh ấy bị trở thành mục tiêu của người con trai đầy thù hận của ông trùm ma túy Hernan Reyes                                                                                                                                                                                    ', 1, NULL, 2, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682603874/HO00002671_zk0bqr.jpg                 ', N'https://www.youtube.com/watch?v=k9UNZ4rFdEs')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (7, N'GUARDIANS OF THE GALAXY 3     ', 149, N'13+       ', CAST(N'2023-05-21' AS Date), N'Phim có phụ đề                ', N'James Gunn                                        ', N'Chris Pratt, Zoe Saldana                                                                            ', N'Mỹ                  ', N'Cho dù vũ trụ này có bao la đến đâu, các Vệ Binh của chúng ta cũng không thể trốn chạy mãi mãi...                                                                                                                                                                                                           ', 1, NULL, 2, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682604111/HO00002647_gmz85j.png                 ', N'https://www.youtube.com/watch?v=89aYxQcGGA4')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (9, N'
INSIDIOUS 5                 ', 93, N'18+       ', CAST(N'2023-05-24' AS Date), N'Phim có phụ đề                ', N'Patrick Wilson                                    ', N'Ty Simpkins                                                                                         ', N'Mỹ                  ', N'10 năm sau các sự kiện xảy ra ở Quỷ Quyệt 2, khi Dalton, cậu con trai của Josh đã trưởng thành, chuẩn bị bước vào ngưỡng cửa đại học và phần còn lại của gia đình Lambert phải đối mặt với hậu quả từ quyết định của họ trong quá khứ cách đây gần một thập kỉ                                              ', 1, NULL, 3, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682604394/HO00002696_onfwjd.jpg                 ', N'https://www.youtube.com/watch?v=ZuQuOnYnr3Q')
INSERT [dbo].[Film] ([ID], [ten], [thoi_luong], [gioi_han_tuoi], [ngay_cong_chieu], [ngon_ngu], [dao_dien], [dien_vien], [quoc_gia], [tom_tat], [trang_thai], [loai_phim], [nha_cung_cap], [poster_link], [trailer]) VALUES (10, N'
HYPNOTIC                    ', 93, N'18+       ', CAST(N'2023-05-20' AS Date), N'Phim có phụ đề                ', N'Robert Rodriguez                                  ', N'William Fichtner, Ben Affleck                                                                       ', N'Mỹ                  ', N'Theo chân thám tử Daniel Rourke trong hành trình tìm kiếm cô con gái bị mất tích. Anh sớm nhận ra tất cả những chuyện bí ẩn này đều liên quan đến một người đàn ông có sức mạnh thôi miên, bẻ cong thực tại, Daniel phải tìm mọi cách để tìm thấy con gái...                                                ', 1, NULL, 4, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682604394/HO00002696_onfwjd.jpg                 ', N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682604683/HO00002686_phs6ir.jpg')
GO
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A01                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A02                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A03                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A04                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A05                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A06                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A07                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A08                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1A09                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B01                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B02                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B03                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B04                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B05                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B06                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B07                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B08                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1B09                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C01                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C02                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C03                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C04                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C05                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C06                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C07                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C08                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1C09                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D01                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D02                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D03                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D04                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D05                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D06                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D07                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D08                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'1D09                                              ', 1, 1)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A01                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A02                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A03                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A04                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A05                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A06                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A07                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A08                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2A09                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B01                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B02                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B03                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B04                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B05                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B06                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B07                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B08                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2B09                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C01                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C02                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C03                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C04                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C05                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C06                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C07                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C08                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2C09                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D01                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D02                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D03                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D04                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D05                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D06                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D07                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D08                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'2D09                                              ', 1, 2)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A01                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A02                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A03                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A04                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A05                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A06                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A07                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A08                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3A09                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B01                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B02                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B03                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B04                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B05                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B06                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B07                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B08                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3B09                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C01                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C02                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C03                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C04                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C05                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C06                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C07                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C08                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3C09                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D01                                              ', 1, 3)
GO
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D02                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D03                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D04                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D05                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D06                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D07                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D08                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'3D09                                              ', 1, 3)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A01                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A02                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A03                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A04                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A05                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A06                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A07                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A08                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4A09                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B01                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B02                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B03                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B04                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B05                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B06                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B07                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B08                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4B09                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C01                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C02                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C03                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C04                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C05                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C06                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C07                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C08                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4C09                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D01                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D02                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D03                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D04                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D05                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D06                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D07                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D08                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'4D09                                              ', 1, 4)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A01                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A02                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A03                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A04                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A05                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A06                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A07                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A08                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5A09                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B01                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B02                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B03                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B04                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B05                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B06                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B07                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B08                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5B09                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C01                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C02                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C03                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C04                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C05                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C06                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C07                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C08                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5C09                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D01                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D02                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D03                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D04                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D05                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D06                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D07                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D08                                              ', 1, 5)
INSERT [dbo].[Ghe] ([ID], [TrangThai], [PhongID]) VALUES (N'5D09                                              ', 1, 5)
GO
INSERT [dbo].[LoaiThanhVien] ([ID], [Ten], [DieuKien], [PhanTramDoiDiem]) VALUES (1, N'Vàng                                              ', NULL, 10)
INSERT [dbo].[LoaiThanhVien] ([ID], [Ten], [DieuKien], [PhanTramDoiDiem]) VALUES (2, N'Bạc                                               ', NULL, 7)
INSERT [dbo].[LoaiThanhVien] ([ID], [Ten], [DieuKien], [PhanTramDoiDiem]) VALUES (3, N'Đồng                                              ', NULL, 5)
INSERT [dbo].[LoaiThanhVien] ([ID], [Ten], [DieuKien], [PhanTramDoiDiem]) VALUES (4, N'Mặc định                                          ', NULL, 0)
GO
INSERT [dbo].[LoaiVe] ([ID], [Ten], [PhanTramCongThem]) VALUES (1, N'Người lớn           ', 10)
INSERT [dbo].[LoaiVe] ([ID], [Ten], [PhanTramCongThem]) VALUES (2, N'Trẻ em              ', 0)
GO
INSERT [dbo].[NhaCungCap] ([ID], [Ten], [Phone], [Email]) VALUES (2, N'Warner Bros                   ', N'456789123    ', N'werner.bros@gmail.com                   ')
INSERT [dbo].[NhaCungCap] ([ID], [Ten], [Phone], [Email]) VALUES (3, N'TSG Entertainment             ', N'111111111    ', N'tsg@gmail.com                           ')
INSERT [dbo].[NhaCungCap] ([ID], [Ten], [Phone], [Email]) VALUES (4, N'321321                        ', N'321321       ', N'3212@123213                             ')
INSERT [dbo].[NhaCungCap] ([ID], [Ten], [Phone], [Email]) VALUES (5, N'nhat 2                        ', N'0907471648   ', N'nhat@gmail.com                          ')
GO
INSERT [dbo].[NhanVien] ([ID], [TenTK], [Password], [Ho], [Ten], [SDT], [NgaySinh], [NgayVaoLam], [GioiTinh]) VALUES (1, N'vang111                                           ', N'dw0RNMm7fVs=                                      ', N'Nguyễn Phú                    ', N'Vang                ', N'0902521475   ', CAST(N'2002-07-30' AS Date), CAST(N'2023-03-23' AS Date), 0)
INSERT [dbo].[NhanVien] ([ID], [TenTK], [Password], [Ho], [Ten], [SDT], [NgaySinh], [NgayVaoLam], [GioiTinh]) VALUES (2, N'abc                                               ', N'lu0c+GqlVMQ=                                      ', N'nguyen minh                   ', N'nhat123             ', N'0902521474   ', CAST(N'2023-04-05' AS Date), CAST(N'2023-04-12' AS Date), 1)
INSERT [dbo].[NhanVien] ([ID], [TenTK], [Password], [Ho], [Ten], [SDT], [NgaySinh], [NgayVaoLam], [GioiTinh]) VALUES (3, N'phuc123                                           ', N'lu0c+GqlVMQ=                                      ', N'choa                          ', N'phuc                ', N'123456789    ', CAST(N'2023-05-26' AS Date), CAST(N'2023-05-04' AS Date), 1)
GO
INSERT [dbo].[Phong] ([ID], [SoLuongGhe]) VALUES (1, N'50        ')
INSERT [dbo].[Phong] ([ID], [SoLuongGhe]) VALUES (2, N'60        ')
INSERT [dbo].[Phong] ([ID], [SoLuongGhe]) VALUES (3, N'70        ')
INSERT [dbo].[Phong] ([ID], [SoLuongGhe]) VALUES (4, N'70        ')
INSERT [dbo].[Phong] ([ID], [SoLuongGhe]) VALUES (5, N'80        ')
GO
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (1, CAST(N'2023-05-05T00:00:00.0000000' AS DateTime2), 1, NULL, 65000, NULL)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (2, CAST(N'2023-05-08T15:28:00.0000000' AS DateTime2), 4, 2, 65000, NULL)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (3, CAST(N'2023-05-06T22:53:00.0000000' AS DateTime2), 1, 2, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (4, CAST(N'2023-05-10T22:54:00.0000000' AS DateTime2), 1, 2, 70000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (5, CAST(N'2023-05-12T22:55:00.0000000' AS DateTime2), 2, 2, 70000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (6, CAST(N'2023-05-11T22:56:00.0000000' AS DateTime2), 3, 2, 75000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (7, CAST(N'2023-05-07T20:57:00.0000000' AS DateTime2), 1, 2, 70000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (8, CAST(N'2023-05-10T22:59:00.0000000' AS DateTime2), 5, 3, 78000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (9, CAST(N'2023-05-08T02:04:00.0000000' AS DateTime2), 1, 3, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (10, CAST(N'2023-05-08T20:05:00.0000000' AS DateTime2), 4, 3, 75000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (11, CAST(N'2023-05-09T18:07:00.0000000' AS DateTime2), 1, 3, 60000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (12, CAST(N'2023-05-08T23:09:00.0000000' AS DateTime2), 4, 4, 75000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (13, CAST(N'2023-05-10T23:10:00.0000000' AS DateTime2), 4, 4, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (14, CAST(N'2023-05-12T23:11:00.0000000' AS DateTime2), 3, 4, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (15, CAST(N'2023-05-16T23:17:00.0000000' AS DateTime2), 3, 4, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (16, CAST(N'2023-05-17T23:18:00.0000000' AS DateTime2), 5, 4, 65000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (17, CAST(N'2023-05-08T20:25:00.0000000' AS DateTime2), 3, 2, 75000, 1)
INSERT [dbo].[SuatChieu] ([ID], [GioBatDau], [PhongID], [PhimID], [Gia], [TrangThai]) VALUES (18, CAST(N'2023-05-08T15:15:00.0000000' AS DateTime2), 4, 2, 75000, 1)
GO
INSERT [dbo].[SuKien] ([ID], [Ten], [NgayApDung], [NgayKetThuc], [PhanTramGiam], [linkposter]) VALUES (1, N'Giỗ tổ Hùng Vương                                 ', CAST(N'2023-05-07' AS Date), CAST(N'2023-05-09' AS Date), 10, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682606024/gioto_pxrbxp.jpg                      ')
INSERT [dbo].[SuKien] ([ID], [Ten], [NgayApDung], [NgayKetThuc], [PhanTramGiam], [linkposter]) VALUES (2, N'Lễ 30/4 -1/5                                      ', CAST(N'2023-04-30' AS Date), CAST(N'2023-05-02' AS Date), 15, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682606240/304_v5c7lh.jpg                        ')
INSERT [dbo].[SuKien] ([ID], [Ten], [NgayApDung], [NgayKetThuc], [PhanTramGiam], [linkposter]) VALUES (3, N'Sinh nhật LetHimCook                              ', CAST(N'2023-05-05' AS Date), CAST(N'2023-05-10' AS Date), 20, N'https://res.cloudinary.com/dexbjwfjg/image/upload/v1682606610/OIP_2_wc7mv8.jpg                      ')
GO
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (2, N'Khoa học viễn tưởng                     ')
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (3, N'Tình cảm                                ')
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (4, N'Kinh dị                                 ')
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (5, N'Hành động                               ')
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (6, N'Hoạt hình                               ')
INSERT [dbo].[TheLoai] ([id], [ten_the_loai]) VALUES (7, N'Hài                                     ')
GO
SET IDENTITY_INSERT [dbo].[TheLoai_Phim] ON 

INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (5, 2, 5)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (15, 2, 7)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (16, 3, 5)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (17, 4, 6)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (18, 4, 7)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (19, 5, 4)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (20, 6, 3)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (21, 6, 5)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (22, 7, 7)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (23, 7, 5)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (24, 9, 4)
INSERT [dbo].[TheLoai_Phim] ([ID], [PhimID], [LoaiPhimID]) VALUES (25, 10, 5)
SET IDENTITY_INSERT [dbo].[TheLoai_Phim] OFF
GO
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (1, CAST(N'2023-04-05T00:00:00.0000000' AS DateTime2), N'1A01                                              ', NULL, NULL, N'Nhat                                                        ', N'0986553475          ', N'nhat@gmail.com                                    ', 100000, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (2, CAST(N'2023-04-27T23:34:44.1644176' AS DateTime2), N'4C05                                              ', NULL, NULL, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 71500, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (3, CAST(N'2023-04-27T23:34:44.1704872' AS DateTime2), N'4A02                                              ', NULL, NULL, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 65000, NULL, 2, 2)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (9, CAST(N'2023-08-08T00:00:00.0000000' AS DateTime2), N'1A02                                              ', NULL, NULL, N'vang                                                        ', N'0908012046          ', N'aaaaa                                             ', 165000, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (10, CAST(N'2023-04-28T13:35:00.1229118' AS DateTime2), N'4A06                                              ', NULL, 15, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 71500, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (11, CAST(N'2023-04-28T13:35:00.1273523' AS DateTime2), N'4B08                                              ', NULL, 15, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 71500, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (12, CAST(N'2023-04-28T13:35:00.1273523' AS DateTime2), N'4C08                                              ', NULL, 15, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 65000, NULL, 2, 2)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (13, CAST(N'2023-04-28T13:35:00.1283897' AS DateTime2), N'4D07                                              ', NULL, 15, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 65000, NULL, 2, 2)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (14, CAST(N'2023-04-28T13:39:29.6095372' AS DateTime2), N'4C02                                              ', NULL, 16, N'nhat                                                        ', N'1234567890          ', N'nhat@gmail.com                                    ', 71500, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (15, CAST(N'2023-04-28T13:39:29.6129036' AS DateTime2), N'4B05                                              ', NULL, 16, N'nhat                                                        ', N'1234567890          ', N'nhat@gmail.com                                    ', 71500, NULL, 2, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (16, CAST(N'2023-05-01T11:12:23.5607407' AS DateTime2), N'3A01                                              ', NULL, NULL, N'Nhat                                                        ', N'09865534745         ', N'nhat@gmail.com                                    ', 82500, NULL, 6, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (17, CAST(N'2023-05-08T20:34:12.4717324' AS DateTime2), N'4D06                                              ', NULL, NULL, N'nhat                                                        ', N'1232                ', N'nhat@gmail.com                                    ', 82500, NULL, 12, 1)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (18, CAST(N'2023-05-08T20:34:12.4797110' AS DateTime2), N'4A03                                              ', NULL, NULL, N'nhat                                                        ', N'1232                ', N'nhat@gmail.com                                    ', 75000, NULL, 12, 2)
INSERT [dbo].[Ve] ([ID], [NgayBan], [Ghe], [NVID], [CusId], [name], [sdt], [email], [Gia], [IDGiamGia], [SuatChieuID], [LoaVe]) VALUES (19, CAST(N'2023-05-08T20:35:11.8660769' AS DateTime2), N'2A01                                              ', NULL, NULL, N'vang                                                        ', N'123                 ', N'nguyenphuvang3007@gmail.com                       ', 77000, NULL, 5, 1)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer] ON [dbo].[Customer]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Film] ON [dbo].[Film]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

CREATE NONCLUSTERED INDEX [IX_Ghe] ON [dbo].[Ghe]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_LoaiThanhVien] ON [dbo].[LoaiThanhVien]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_LoaiVe] ON [dbo].[LoaiVe]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_NhaCungCap] ON [dbo].[NhaCungCap]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_NhanVien] ON [dbo].[NhanVien]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Phong] ON [dbo].[Phong]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_SuatChieu] ON [dbo].[SuatChieu]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_SuKien] ON [dbo].[SuKien]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_TheLoai] ON [dbo].[TheLoai]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_Ve] ON [dbo].[Ve]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_LoaiThanhVien] FOREIGN KEY([LoaiThanhVien])
REFERENCES [dbo].[LoaiThanhVien] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_LoaiThanhVien]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_NhaCungCap] FOREIGN KEY([nha_cung_cap])
REFERENCES [dbo].[NhaCungCap] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_NhaCungCap]
GO
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([PhongID])
REFERENCES [dbo].[Phong] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Film] FOREIGN KEY([PhimID])
REFERENCES [dbo].[Film] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Film]
GO
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Phong] FOREIGN KEY([PhongID])
REFERENCES [dbo].[Phong] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Phong]
GO
ALTER TABLE [dbo].[TheLoai_Phim]  WITH CHECK ADD  CONSTRAINT [FK_TheLoai_Phim_Film] FOREIGN KEY([PhimID])
REFERENCES [dbo].[Film] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TheLoai_Phim] CHECK CONSTRAINT [FK_TheLoai_Phim_Film]
GO
ALTER TABLE [dbo].[TheLoai_Phim]  WITH CHECK ADD  CONSTRAINT [FK_TheLoai_Phim_TheLoai] FOREIGN KEY([LoaiPhimID])
REFERENCES [dbo].[TheLoai] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TheLoai_Phim] CHECK CONSTRAINT [FK_TheLoai_Phim_TheLoai]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Customer] FOREIGN KEY([CusId])
REFERENCES [dbo].[Customer] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Customer]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe] FOREIGN KEY([Ghe])
REFERENCES [dbo].[Ghe] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Ghe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LoaiVe] FOREIGN KEY([LoaVe])
REFERENCES [dbo].[LoaiVe] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LoaiVe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([NVID])
REFERENCES [dbo].[NhanVien] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuKien] FOREIGN KEY([IDGiamGia])
REFERENCES [dbo].[SuKien] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuKien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonGiaTrungBinh] @tbDonGia int
AS
	
	select ID 
	from Ve
	where Gia > @tbDonGia
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonGiaTrungBinh2] @tbDonGia int output
AS
	
	Select @tbDonGia = AVG(Gia) from Ve
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonGiaTrungBinh4] 
AS
	declare @tb int;
	exec DonGiaTrungBinh2 @tb output;
	Select ID  from Ve where Gia > @tb
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DonGiaTrungBinhHangHoa]
AS
	Select AVG(Gia) from Ve
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[report_year] @year int
as
begin
SELECT calendar.month,  COALESCE(Sum(Gia), 0) AS total 
FROM calendar left join Ve  on calendar.month = month(NgayBan) and YEAR(NgayBan) = @year
group by calendar.month
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ThongKeTheoNam]
@Year int 
as
begin
select YEAR(NgayBan) as year,MONTH(NgayBan) as month, Sum(Gia) as tong 
from dbo.Ve
where YEAR(NgayBan) = @Year
group by YEAR(NgayBan),MONTH(NgayBan)
order by year
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[ThongKeTheoNamAndMonth]
@Year int ,
@month int
as
begin
select YEAR(NgayBan) as year,MONTH(NgayBan) as month, Sum(Gia) as tong 
from dbo.Ve
where YEAR(NgayBan) = @Year and MONTH(NgayBan) = @month
group by YEAR(NgayBan),MONTH(NgayBan)
order by year
end
GO
USE [master]
GO
ALTER DATABASE [AppXemPhim] SET  READ_WRITE 
GO
