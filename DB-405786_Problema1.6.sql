USE [master]
GO
/****** Object:  Database [405786_Problema1.6]    Script Date: 14/9/2023 21:17:03 ******/
CREATE DATABASE [405786_Problema1.6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'405786_Problema1.6', FILENAME = N'D:\SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\405786_Problema1.6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'405786_Problema1.6_log', FILENAME = N'D:\SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\405786_Problema1.6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [405786_Problema1.6] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [405786_Problema1.6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [405786_Problema1.6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET ARITHABORT OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [405786_Problema1.6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [405786_Problema1.6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [405786_Problema1.6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET  ENABLE_BROKER 
GO
ALTER DATABASE [405786_Problema1.6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [405786_Problema1.6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [405786_Problema1.6] SET  MULTI_USER 
GO
ALTER DATABASE [405786_Problema1.6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [405786_Problema1.6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [405786_Problema1.6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [405786_Problema1.6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [405786_Problema1.6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [405786_Problema1.6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [405786_Problema1.6] SET QUERY_STORE = ON
GO
ALTER DATABASE [405786_Problema1.6] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [405786_Problema1.6]
GO
/****** Object:  User [DESKTOP-B5Q8CSC\Benja]    Script Date: 14/9/2023 21:17:03 ******/
CREATE USER [DESKTOP-B5Q8CSC\Benja] FOR LOGIN [DESKTOP-B5Q8CSC\Benja] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[id_camion] [int] IDENTITY(1,1) NOT NULL,
	[patente] [varchar](20) NULL,
	[estado_camion] [int] NULL,
	[peso_maximo] [int] NULL,
 CONSTRAINT [pk_camiones] PRIMARY KEY CLUSTERED 
(
	[id_camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargas]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargas](
	[id_carga] [int] IDENTITY(1,1) NOT NULL,
	[peso] [decimal](10, 2) NULL,
	[tipo_carga] [int] NULL,
	[id_camion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_carga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_Camiones]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_Camiones](
	[id_estado_camion] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](30) NULL,
 CONSTRAINT [pk_estado_camion] PRIMARY KEY CLUSTERED 
(
	[id_estado_camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Carga]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Carga](
	[id_tipo_carga] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
 CONSTRAINT [pk_tipos_carga] PRIMARY KEY CLUSTERED 
(
	[id_tipo_carga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Camiones]  WITH CHECK ADD  CONSTRAINT [fk_estado_camion] FOREIGN KEY([estado_camion])
REFERENCES [dbo].[Estados_Camiones] ([id_estado_camion])
GO
ALTER TABLE [dbo].[Camiones] CHECK CONSTRAINT [fk_estado_camion]
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD  CONSTRAINT [fk_carga_camion] FOREIGN KEY([id_camion])
REFERENCES [dbo].[Camiones] ([id_camion])
GO
ALTER TABLE [dbo].[Cargas] CHECK CONSTRAINT [fk_carga_camion]
GO
ALTER TABLE [dbo].[Cargas]  WITH CHECK ADD  CONSTRAINT [fk_carga_tipo] FOREIGN KEY([tipo_carga])
REFERENCES [dbo].[Tipos_Carga] ([id_tipo_carga])
GO
ALTER TABLE [dbo].[Cargas] CHECK CONSTRAINT [fk_carga_tipo]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_CAMION]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ACTUALIZAR_CAMION]
@id int,
@patente varchar(20),
@estado int,
@peso int
AS
BEGIN
UPDATE Camiones
set patente = @patente,
	estado_camion = @estado,
	peso_maximo = @peso
where id_camion	= @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTA_CAMIONES]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTA_CAMIONES]
@patente varchar(20) = ''
AS
BEGIN
    SELECT C.id_camion, patente, estado, peso_maximo, ISNULL(SUM(Ca.peso), 0) AS 'Peso Ocupado'
    FROM Camiones C 
    JOIN Estados_Camiones E ON C.estado_camion = E.id_estado_camion
    LEFT JOIN Cargas Ca ON C.id_camion = Ca.id_camion
    WHERE patente LIKE '%' + @patente + '%'
    GROUP BY C.id_camion, patente, estado, peso_maximo
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CAMION]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CAMION]
@id int
AS
BEGIN
SELECT C.id_camion, patente, estado,peso_maximo
FROM Camiones C JOIN Estados_Camiones E
	ON c.estado_camion=e.id_estado_camion
WHERE C.id_camion = @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CAMIONES]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CAMIONES]
AS
BEGIN
SELECT id_camion, patente, estado,peso_maximo
FROM Camiones C JOIN Estados_Camiones E
	ON c.estado_camion=e.id_estado_camion
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CARGAS]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CARGAS]
@id int
AS
BEGIN
SELECT id_carga, peso, nombre
FROM Cargas c join Tipos_Carga tc
on c.tipo_carga=tc.id_tipo_carga
where id_camion	= @id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_ESTADOS]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_ESTADOS]
AS
BEGIN
SELECT * FROM Estados_Camiones
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_TIPOS_CARGA]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_TIPOS_CARGA]
AS
BEGIN
SELECT * FROM Tipos_Carga
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_CARGA]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_CARGA]
@idCarga int
AS
BEGIN
Delete Cargas
where id_carga = @idCarga
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_CARGAS]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_CARGAS]
@idCamion int
AS
BEGIN
Delete Cargas
where id_camion = @idCamion
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CAMION]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_CAMION]
@patente varchar(30),
@estadoCamion int,
@pesoMax int,
@proxCamion int output
AS
BEGIN
INSERT INTO Camiones(patente,estado_camion,peso_maximo) VALUES (@patente,@estadoCamion,@pesoMax)
SET @proxCamion = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CARGA]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_CARGA]
@peso decimal(10,2),
@tipo int,
@id_camion int
AS
BEGIN
INSERT INTO Cargas(peso, tipo_carga, id_camion) VALUES (@peso,@tipo,@id_camion)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMO_CAMION]    Script Date: 14/9/2023 21:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PROXIMO_CAMION]
@next int OUTPUT
AS
BEGIN
    SET @next = (SELECT max(id_camion)+1 FROM Camiones);
END
GO
USE [master]
GO
ALTER DATABASE [405786_Problema1.6] SET  READ_WRITE 
GO
