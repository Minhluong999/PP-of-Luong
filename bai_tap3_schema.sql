USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 30/03/2025 8:47:50 CH ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LUONGM\MSSQL\DATA\QLSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LUONGM\MSSQL\DATA\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[maBM] [varchar](10) NOT NULL,
	[tenBM] [varchar](100) NOT NULL,
	[maKhoa] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [int] NOT NULL,
	[id_dk] [int] NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK__Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [int] NOT NULL,
	[maLopHP] [varchar](10) NULL,
	[maSV] [varchar](10) NULL,
	[DiemThi] [float] NULL,
	[PhanTramThi] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[maGV] [varchar](10) NOT NULL,
	[hoTen] [varchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[maBM] [varchar](10) NULL,
 CONSTRAINT [PK__GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[maLop] [varchar](10) NOT NULL,
	[maGV] [varchar](10) NOT NULL,
	[HK] [varchar](10) NOT NULL,
 CONSTRAINT [PK__GVCN] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maGV] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[maKhoa] [varchar](10) NOT NULL,
	[tenKhoa] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Khoa] PRIMARY KEY CLUSTERED 
(
	[maKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [varchar](10) NOT NULL,
	[tenLop] [varchar](100) NOT NULL,
 CONSTRAINT [PK__Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[maLopHP] [varchar](10) NOT NULL,
	[tenLopHP] [varchar](100) NOT NULL,
	[HK] [varchar](10) NULL,
	[maMon] [varchar](10) NULL,
	[maGV] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[maLop] [varchar](10) NOT NULL,
	[maSV] [varchar](10) NOT NULL,
	[ChucVu] [varchar](50) NULL,
 CONSTRAINT [PK__LopSV] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC,
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMon] [varchar](10) NOT NULL,
	[tenMon] [varchar](100) NOT NULL,
	[STC] [int] NULL,
 CONSTRAINT [PK__MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 30/03/2025 8:47:50 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[maSV] [varchar](10) NOT NULL,
	[hoTen] [varchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK__SinhVien] PRIMARY KEY CLUSTERED 
(
	[maSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BoMon]    Script Date: 30/03/2025 8:47:50 CH ******/
CREATE NONCLUSTERED INDEX [IX_BoMon] ON [dbo].[BoMon]
(
	[maBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK__GVCN] FOREIGN KEY([maGV])
REFERENCES [dbo].[GiaoVien] ([maGV])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK__GVCN]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK__LopSV] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK__LopSV]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV] FOREIGN KEY([maSV])
REFERENCES [dbo].[SinhVien] ([maSV])
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD CHECK  (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD CHECK  (([DiemThi]>=(0) AND [DiemThi]<=(10)))
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD CHECK  (([PhanTramThi]>=(0) AND [PhanTramThi]<=(100)))
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD CHECK  (([STC]>(0)))
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
