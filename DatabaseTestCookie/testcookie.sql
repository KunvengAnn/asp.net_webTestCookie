USE [master]
GO
/****** Object:  Database [testCookie]    Script Date: 11/13/2023 4:38:17 PM ******/
CREATE DATABASE [testCookie]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'testCookie', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testCookie.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'testCookie_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\testCookie_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [testCookie] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testCookie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testCookie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testCookie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testCookie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testCookie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testCookie] SET ARITHABORT OFF 
GO
ALTER DATABASE [testCookie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testCookie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testCookie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testCookie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testCookie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testCookie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testCookie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testCookie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testCookie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testCookie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [testCookie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testCookie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testCookie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testCookie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testCookie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testCookie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testCookie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testCookie] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [testCookie] SET  MULTI_USER 
GO
ALTER DATABASE [testCookie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testCookie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testCookie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testCookie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testCookie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testCookie] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [testCookie] SET QUERY_STORE = ON
GO
ALTER DATABASE [testCookie] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [testCookie]
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 11/13/2023 4:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cookie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masv] [nvarchar](50) NULL,
	[cookie] [varchar](50) NULL,
 CONSTRAINT [PK_Cookie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/13/2023 4:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[masv] [nvarchar](50) NOT NULL,
	[pass] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[lop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cookie] ON 

INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (237, N'100', N'D0AB8B96-5FCC-450F-8E15-72563503C571')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (238, N'200', N'3543539F-0F9F-4F68-90E1-682955D5AEE2')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (239, N'200', N'D4A35F88-B7AC-4CEA-9B56-A06251B86C55')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (240, N'200', N'114CB55C-B3FD-4F3D-9317-9D4147843CEE')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (241, N'200', N'15A45394-05AC-46FB-A959-46F75B6A0C01')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (242, N'200', N'F9CCA3A6-F6F3-454B-843F-4F82F98EFD30')
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (243, N'ma01', N'DDAF5966-7C74-4439-A2A2-EC0BF57581C0')
SET IDENTITY_INSERT [dbo].[Cookie] OFF
GO
INSERT [dbo].[SinhVien] ([masv], [pass], [hoten], [lop]) VALUES (N'100', N'123', N'van a', N'k56kdt')
INSERT [dbo].[SinhVien] ([masv], [pass], [hoten], [lop]) VALUES (N'200', N'123', N'van b', N'kdf')
INSERT [dbo].[SinhVien] ([masv], [pass], [hoten], [lop]) VALUES (N'ma01', N'123', N'van c', N'kdfj')
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 11/13/2023 4:38:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LOGIN]	
	@action nvarchar(50) null,
	@masv nvarchar(50) = null,
	@pw nvarchar(50) = null,
	@cc varchar(50) = null
AS
BEGIN
	if(@action='login')
	begin
	  --kiểm tra xem @masv+@pw có ok ko?
	  --ok:
	    -- đẻ ra 1 cc riêng biệt NEWID()
		-- lưu vào db table Cookie cho @masv
	    -- trả về 1 row chứa thông tin sv này+cc
	  --not ok: trả về NULL (ko row nào cả)
	  if exists(select masv,hoten,lop from SinhVien where masv=@masv and pass=@pw and HASHBYTES('md5', pass)=HASHBYTES('md5', @pw))
	  begin
		set @cc = NewID(); --random, unique    
		--delete để chỉ 1 máy cuối cùng đc login hoạt động
		--delete from Cookie where masv=@masv;
		insert into Cookie(masv,cookie)values(@masv,@cc);
		select masv,hoten,lop,@cc as cc from SinhVien where masv=@masv and pass = @pw and HASHBYTES('md5',pass) = HASHBYTES('md5',@pw) 
	  end
	end
	else if(@action='check_cc')
	begin
		--input: @masv, @cc
		--output: 1 row nếu cc đúng, empty row nếu cc sai
		if exists(select * from Cookie where masv=@masv and cookie=@cc and HASHBYTES('md5', cookie)=HASHBYTES('md5', @cc))
			select masv,hoten,lop,@cc as cc from SinhVien where masv=@masv;
		else
			select masv,hoten,lop,@cc as cc from SinhVien where 1=0;
	end
END
GO
USE [master]
GO
ALTER DATABASE [testCookie] SET  READ_WRITE 
GO
