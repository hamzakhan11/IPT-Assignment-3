USE [EFDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/7/2017 7:21:56 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
USE [master]
GO
/****** Object:  Database [EFDB]    Script Date: 12/7/2017 7:21:56 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'EFDB')
DROP DATABASE [EFDB]
GO
/****** Object:  Database [EFDB]    Script Date: 12/7/2017 7:21:56 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'EFDB')
BEGIN
CREATE DATABASE [EFDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EFDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\EFDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EFDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\EFDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [EFDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EFDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EFDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EFDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EFDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EFDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EFDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EFDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EFDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EFDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EFDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EFDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EFDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EFDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EFDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EFDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EFDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EFDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EFDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EFDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EFDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EFDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EFDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EFDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EFDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EFDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EFDB] SET  MULTI_USER 
GO
ALTER DATABASE [EFDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EFDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EFDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EFDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EFDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/7/2017 7:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [EFDB] SET  READ_WRITE 
GO
