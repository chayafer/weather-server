USE [master]
GO

/****** Object:  Database [AccWeather]    Script Date: 11/06/2021 15:14:50 ******/
CREATE DATABASE [AccWeather]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AccWeather', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AccWeather.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AccWeather_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AccWeather_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccWeather].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [AccWeather] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [AccWeather] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [AccWeather] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [AccWeather] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [AccWeather] SET ARITHABORT OFF 
GO

ALTER DATABASE [AccWeather] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [AccWeather] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [AccWeather] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [AccWeather] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [AccWeather] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [AccWeather] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [AccWeather] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [AccWeather] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [AccWeather] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [AccWeather] SET  ENABLE_BROKER 
GO

ALTER DATABASE [AccWeather] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [AccWeather] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [AccWeather] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [AccWeather] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [AccWeather] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [AccWeather] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [AccWeather] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [AccWeather] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [AccWeather] SET  MULTI_USER 
GO

ALTER DATABASE [AccWeather] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [AccWeather] SET DB_CHAINING OFF 
GO

ALTER DATABASE [AccWeather] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [AccWeather] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [AccWeather] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [AccWeather] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [AccWeather] SET QUERY_STORE = OFF
GO

ALTER DATABASE [AccWeather] SET  READ_WRITE 
GO


USE [AccWeather]
GO

/****** Object:  Table [dbo].[FavoritesCity]    Script Date: 11/06/2021 15:15:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FavoritesCity](
	[CityKey] [varchar](20) NOT NULL,
	[LocalizedName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_FavouritesCity] PRIMARY KEY CLUSTERED 
(
	[CityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [AccWeather]
GO

/****** Object:  Table [dbo].[LocationWeather]    Script Date: 11/06/2021 15:15:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LocationWeather](
	[CityKey] [varchar](20) NOT NULL,
	[LocalizedName] [varchar](20) NULL,
	[Date] [date] NULL,
	[Temperature] [float] NULL,
	[WeatherText] [varchar](20) NULL,
 CONSTRAINT [PK_LocationWeather] PRIMARY KEY CLUSTERED 
(
	[CityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO