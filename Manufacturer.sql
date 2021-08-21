USE [master]
GO

/****** Object:  Database [Manufacturer]    Script Date: 19.08.2021 21:16:30 ******/
CREATE DATABASE [Manufacturer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chocolate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CINARBILISIM\MSSQL\DATA\Chocolate.mdf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Chocolate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CINARBILISIM\MSSQL\DATA\Chocolate_log.ldf' , SIZE = 12288KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Manufacturer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Manufacturer] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Manufacturer] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Manufacturer] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Manufacturer] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Manufacturer] SET ARITHABORT OFF 
GO

ALTER DATABASE [Manufacturer] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Manufacturer] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Manufacturer] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Manufacturer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Manufacturer] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Manufacturer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Manufacturer] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Manufacturer] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Manufacturer] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Manufacturer] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Manufacturer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Manufacturer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Manufacturer] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Manufacturer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Manufacturer] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Manufacturer] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Manufacturer] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Manufacturer] SET RECOVERY FULL 
GO

ALTER DATABASE [Manufacturer] SET  MULTI_USER 
GO

ALTER DATABASE [Manufacturer] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Manufacturer] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Manufacturer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Manufacturer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Manufacturer] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Manufacturer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [Manufacturer] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Manufacturer] SET  READ_WRITE 
GO
