USE [master]
GO
/****** Object:  Database [TrabajoFifi]    Script Date: 30/06/2022 23:16:46 ******/
CREATE DATABASE [TrabajoFifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TrabajoFifi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TrabajoFifi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TrabajoFifi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TrabajoFifi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TrabajoFifi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TrabajoFifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TrabajoFifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrabajoFifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrabajoFifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrabajoFifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrabajoFifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrabajoFifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrabajoFifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrabajoFifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrabajoFifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrabajoFifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrabajoFifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrabajoFifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrabajoFifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrabajoFifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrabajoFifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrabajoFifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrabajoFifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrabajoFifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrabajoFifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrabajoFifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrabajoFifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrabajoFifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrabajoFifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TrabajoFifi] SET  MULTI_USER 
GO
ALTER DATABASE [TrabajoFifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrabajoFifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrabajoFifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrabajoFifi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TrabajoFifi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TrabajoFifi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TrabajoFifi] SET QUERY_STORE = OFF
GO
USE [TrabajoFifi]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 30/06/2022 23:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[ID_almacen] [int] IDENTITY(1,1) NOT NULL,
	[contenidoPetroleo] [int] NULL,
	[contenidoGasolina] [int] NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[ID_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 30/06/2022 23:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[ciudad] [varchar](50) NOT NULL,
	[contenidoPetroleo] [int] NULL,
	[contenidoGasolina] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteEntrada]    Script Date: 30/06/2022 23:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteEntrada](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[contenido] [int] NULL,
	[fecha_entrada] [int] NULL,
	[tipo] [varchar](50) NULL,
	[ID_almacen] [int] NULL,
 CONSTRAINT [PK_LoteEntrada] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoteSaliente]    Script Date: 30/06/2022 23:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoteSaliente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NULL,
	[fecha_salida] [int] NULL,
	[ciudad] [varchar](50) NULL,
	[ID_almacen] [int] NULL,
	[contenido] [int] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_LoteSaliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LoteEntrada]  WITH CHECK ADD  CONSTRAINT [FK_LoteEntrada_Almacen] FOREIGN KEY([ID_almacen])
REFERENCES [dbo].[Almacen] ([ID_almacen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoteEntrada] CHECK CONSTRAINT [FK_LoteEntrada_Almacen]
GO
ALTER TABLE [dbo].[LoteSaliente]  WITH CHECK ADD  CONSTRAINT [FK_LoteSaliente_Almacen] FOREIGN KEY([ID_almacen])
REFERENCES [dbo].[Almacen] ([ID_almacen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoteSaliente] CHECK CONSTRAINT [FK_LoteSaliente_Almacen]
GO
ALTER TABLE [dbo].[LoteSaliente]  WITH CHECK ADD  CONSTRAINT [FK_LoteSaliente_Ciudad] FOREIGN KEY([ciudad])
REFERENCES [dbo].[Ciudad] ([ciudad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoteSaliente] CHECK CONSTRAINT [FK_LoteSaliente_Ciudad]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Sell_Ordenarseguntipo2]    Script Date: 30/06/2022 23:16:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Sell_Ordenarseguntipo2] 
	
	
AS
BEGIN
	SELECT DISTINCT L.ID AS ID, L.fecha_entrada AS FechaEntrada, L.tipo As TIPO ,L.contenido as Contenido FROM LoteEntrada L
WHERE L.tipo = 'gasolina' or L.tipo = 'Petroleo' 
GROUP BY L.ID , L.fecha_entrada, L.tipo, L.contenido 
Order BY Contenido DESC ;
END
GO
USE [master]
GO
ALTER DATABASE [TrabajoFifi] SET  READ_WRITE 
GO
