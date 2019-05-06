USE [master]
GO
/****** Object:  Database [HotelDatabase]    Script Date: 2019-04-21 17:52:47 ******/
CREATE DATABASE [HotelDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HotelDatabase.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotelDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HotelDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HotelDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [HotelDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HotelDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HotelDatabase]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 2019-04-21 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 2019-04-21 17:52:47 ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 2019-04-21 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiDichVu]    Script Date: 2019-04-21 17:52:47 ******/
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
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 2019-04-21 17:52:47 ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2019-04-21 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDatPhongKhachSan]    Script Date: 2019-04-21 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDichVu]    Script Date: 2019-04-21 17:52:47 ******/
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
/****** Object:  Table [dbo].[Phong]    Script Date: 2019-04-21 17:52:47 ******/
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
USE [master]
GO
ALTER DATABASE [HotelDatabase] SET  READ_WRITE 
GO
