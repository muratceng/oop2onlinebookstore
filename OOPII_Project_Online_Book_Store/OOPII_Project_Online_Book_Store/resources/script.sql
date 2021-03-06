USE [master]
GO
/****** Object:  Database [bookstore]    Script Date: 18.04.2019 00:11:16 ******/
CREATE DATABASE [bookstore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookstore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bookstore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookstore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\bookstore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bookstore] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookstore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bookstore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bookstore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bookstore] SET ARITHABORT OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bookstore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bookstore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bookstore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bookstore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bookstore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bookstore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bookstore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bookstore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bookstore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bookstore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bookstore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bookstore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bookstore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bookstore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bookstore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bookstore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [bookstore] SET  MULTI_USER 
GO
ALTER DATABASE [bookstore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bookstore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bookstore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bookstore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bookstore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bookstore] SET QUERY_STORE = OFF
GO
USE [bookstore]
GO
/****** Object:  Table [dbo].[book]    Script Date: 18.04.2019 00:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[id] [int] NULL,
	[name] [nchar](30) NULL,
	[price] [float] NULL,
	[isbn] [nchar](15) NULL,
	[author] [nchar](30) NULL,
	[publisher] [nchar](40) NULL,
	[picture] [nchar](40) NULL,
	[page] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 18.04.2019 00:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[username] [nchar](25) NULL,
	[password] [nchar](25) NULL,
	[id] [int] NULL,
	[name] [nchar](30) NULL,
	[adress] [nchar](50) NULL,
	[email] [nchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magazine]    Script Date: 18.04.2019 00:11:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magazine](
	[id] [int] NULL,
	[name] [nchar](30) NULL,
	[price] [float] NULL,
	[type] [nchar](20) NULL,
	[issue] [nchar](240) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musicCD]    Script Date: 18.04.2019 00:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musicCD](
	[name] [nchar](30) NULL,
	[id] [int] NULL,
	[price] [float] NULL,
	[type] [nchar](20) NULL,
	[singer] [nchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 18.04.2019 00:11:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NULL,
	[name] [nchar](30) NULL,
	[price] [float] NULL,
	[type] [nchar](20) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [bookstore] SET  READ_WRITE 
GO
