USE [HotelDatabase]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenBaiViet] [nvarchar](500) NOT NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[NoiDungChiTiet] [nvarchar](max) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[HinhAnh] [varchar](200) NOT NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoPhong] [int] NOT NULL,
	[NgayVao] [date] NOT NULL,
	[NgayRa] [date] NOT NULL,
	[TenKhachHang] [nvarchar](200) NOT NULL,
	[CMND] [varchar](9) NOT NULL,
	[idNV] [int] NOT NULL,
 CONSTRAINT [PK_DatPhong_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoPhong] [int] NOT NULL,
	[NgayVao] [date] NOT NULL,
	[NgayRa] [date] NOT NULL,
	[TienPhong] [money] NOT NULL,
	[TienDichVu] [money] NOT NULL,
	[PhuThu] [money] NOT NULL,
	[TongTien] [money] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[GhiChu] [nvarchar](500) NOT NULL,
	[idNv] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[SoPhong] ASC,
	[NgayVao] ASC,
	[NgayRa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[CMND] [varchar](11) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](100) NOT NULL,
	[SĐT] [varchar](11) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[imgKhachHang] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang_1] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDichVu]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDichVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](200) NOT NULL,
	[DonViTinh] [nvarchar](100) NOT NULL,
	[Gia] [money] NOT NULL,
	[imgDichVu] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoaiDichVu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](200) NOT NULL,
	[GiaPhong] [money] NOT NULL,
	[imgLoaiPhong] [nvarchar](500) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](100) NOT NULL,
	[UserName] [varchar](200) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[idLoaiNV] [int] NOT NULL,
	[SĐT] [varchar](11) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_NhanVien_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhongKhachSan]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhongKhachSan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoPhong] [int] NOT NULL,
	[NgayVao] [date] NOT NULL,
	[NgayRa] [date] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[idKhachHang] [varchar](11) NOT NULL,
 CONSTRAINT [PK_PhieuDatPhongKhachPhong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDichVu]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDichVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[idDatPhong] [int] NOT NULL,
	[NgayDat] [date] NOT NULL,
	[idDichVu] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [money] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[idNv] [int] NOT NULL,
 CONSTRAINT [PK_PhieuDichVu_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[SoPhong] [int] NOT NULL,
	[idLoaiPhong] [int] NOT NULL,
	[Tang] [int] NOT NULL,
	[imgPhong] [nvarchar](500) NOT NULL,
	[TinhTrang] [bit] NOT NULL,
	[MoTaPhong] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Phong_1] PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiDichVu] ON 

INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (1, N'Nước ngọt', N'lon', 10.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (2, N'Bia 333', N'lon', 10.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (4, N'Khăn lạnh', N'chiếc', 5.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (5, N'Bim Bim', N'gói', 10.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (6, N'Nước suối ', N'chai', 10.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (7, N'Nước tăng lục', N'chai', 20.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (8, N'Thuốc lá', N'bao', 20.0000, NULL)
INSERT [dbo].[LoaiDichVu] ([ID], [TenDichVu], [DonViTinh], [Gia], [imgDichVu]) VALUES (9, N'Cơm hộp ', N'hộp', 30.0000, NULL)
SET IDENTITY_INSERT [dbo].[LoaiDichVu] OFF
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([ID], [TenLoaiPhong], [GiaPhong], [imgLoaiPhong]) VALUES (1, N'P001', 200.0000, NULL)
INSERT [dbo].[LoaiPhong] ([ID], [TenLoaiPhong], [GiaPhong], [imgLoaiPhong]) VALUES (2, N'P002', 150.0000, NULL)
INSERT [dbo].[LoaiPhong] ([ID], [TenLoaiPhong], [GiaPhong], [imgLoaiPhong]) VALUES (3, N'P003', 170.0000, NULL)
INSERT [dbo].[LoaiPhong] ([ID], [TenLoaiPhong], [GiaPhong], [imgLoaiPhong]) VALUES (4, N'P004', 170.0000, NULL)
INSERT [dbo].[LoaiPhong] ([ID], [TenLoaiPhong], [GiaPhong], [imgLoaiPhong]) VALUES (5, N'P005', 150.0000, NULL)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_NhanVien] FOREIGN KEY([idNV])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_NhanVien]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([idNv])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Phong]
GO
ALTER TABLE [dbo].[PhieuDatPhongKhachSan]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatPhongKhachSan_KhachHang] FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[KhachHang] ([CMND])
GO
ALTER TABLE [dbo].[PhieuDatPhongKhachSan] CHECK CONSTRAINT [FK_PhieuDatPhongKhachSan_KhachHang]
GO
ALTER TABLE [dbo].[PhieuDatPhongKhachSan]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatPhongKhachSan_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhongKhachSan] CHECK CONSTRAINT [FK_PhieuDatPhongKhachSan_Phong]
GO
ALTER TABLE [dbo].[PhieuDichVu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDichVu_DatPhong] FOREIGN KEY([idDatPhong])
REFERENCES [dbo].[DatPhong] ([ID])
GO
ALTER TABLE [dbo].[PhieuDichVu] CHECK CONSTRAINT [FK_PhieuDichVu_DatPhong]
GO
ALTER TABLE [dbo].[PhieuDichVu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDichVu_LoaiDichVu] FOREIGN KEY([idDichVu])
REFERENCES [dbo].[LoaiDichVu] ([ID])
GO
ALTER TABLE [dbo].[PhieuDichVu] CHECK CONSTRAINT [FK_PhieuDichVu_LoaiDichVu]
GO
ALTER TABLE [dbo].[PhieuDichVu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDichVu_NhanVien] FOREIGN KEY([idNv])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[PhieuDichVu] CHECK CONSTRAINT [FK_PhieuDichVu_NhanVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([idLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([ID])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
/****** Object:  StoredProcedure [dbo].[GET_LIST_ROOM]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GET_LIST_ROOM]
AS
BEGIN
  select * from LoaiPhong
END
GO
/****** Object:  StoredProcedure [dbo].[GET_LIST_SERVICE]    Script Date: 5/14/2019 3:58:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GET_LIST_SERVICE]
AS
BEGIN
  select * from LoaiDichVu
END
GO
