USE [master]
GO
/****** Domingo de la Rosa Matricula 17-MIIN-1-165 Seccion 0541 ******/

CREATE DATABASE [D&D Soluciones Automotrices Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'D&D Soluciones Automotrices Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\D&D Soluciones Automotrices Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'D&D Soluciones Automotrices Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\D&D Soluciones Automotrices Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D&D Soluciones Automotrices Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET  MULTI_USER 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET QUERY_STORE = OFF
GO
USE [D&D Soluciones Automotrices Db]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[Telefono] [varchar](10) NULL,
	[Celular] [varchar](10) NULL,
	[Edad] [char](3) NULL,
	[Email] [varchar](50) NULL,
	[Sexo] [char](1) NULL,
	[Provincia] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricacion]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricacion](
	[FabricacionId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Fabricacion] PRIMARY KEY CLUSTERED 
(
	[FabricacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimientos]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimientos](
	[MantenimientoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Tiempo_Estimado] [time](7) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_Mantenimiento] PRIMARY KEY CLUSTERED 
(
	[MantenimientoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MantenimientosaRealizar]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MantenimientosaRealizar](
	[Mantenimientos_a_RealizarId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[MantenimientoId] [int] NULL,
	[MarcaId] [int] NULL,
	[ModeloId] [int] NULL,
	[Año] [varchar](4) NULL,
	[Color] [varchar](50) NULL,
	[Chasis] [varchar](50) NULL,
	[FabricacionId] [int] NULL,
	[Placa] [char](7) NULL,
 CONSTRAINT [PK_Mantenimientos a Realizar] PRIMARY KEY CLUSTERED 
(
	[Mantenimientos_a_RealizarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[MarcaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Marcass] PRIMARY KEY CLUSTERED 
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos](
	[ModelosId] [int] NOT NULL,
	[Modelos_HondaId] [int] NULL,
	[Modelos_NissanId] [int] NULL,
	[Modelos_ToyotaId] [int] NULL,
 CONSTRAINT [PK_Modelos] PRIMARY KEY CLUSTERED 
(
	[ModelosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos Honda]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos Honda](
	[Modelo_HondaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Modelo Honda] PRIMARY KEY CLUSTERED 
(
	[Modelo_HondaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos Nissan]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos Nissan](
	[Modelo_NissanId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Modelo Nissan] PRIMARY KEY CLUSTERED 
(
	[Modelo_NissanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos Toyota]    Script Date: 4/8/2020 8:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos Toyota](
	[Modelo_ToyotaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Modelo Toyota] PRIMARY KEY CLUSTERED 
(
	[Modelo_ToyotaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (1, N'Amado 
', N'Cruz
', N'C/ Federico Bermudez #15
', N'8094281320', N'8296327698', N'21 ', N'AmadoCruz@gmail.com
', N'H', N'Santo Domingo
', N'La Puya
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (2, N'Alfredo
', N'Suarez
', N'C/ 4 Edf.5 Apt.2-b
', N'8096278900', N'8294623120', N'30 ', N'AlfredoSuarez@gmail.com
', N'H', N'La Vega
', N'Las Caobas
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (3, N'Benis
', N'Jimenez
', N'Manuel Ubaldo Gomez #115
', N'8095679562', N'8096452325', N'52 ', N'BenisJimenez@gmail.com
', N'M', N'Santo Domingo
', N'Mirador Norte
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (4, N'Carolina
', N'Volquez
', N'8va #78
', N'8096345216', N'8296458236', N'35 ', N'CarolinaVolquez@gmail.com
', N'F', N'San Francisco
', N'Gualey
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (5, N'Katerinne
', N'Medina
', N'Marcelino Nouel esq. Agripino Collado #13
', N'8097569843', N'8495643201', N'28 ', N'KaterinneMedina@gmail.com
', N'F', N'Santo Domingo
', N'Los Casicasgos
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (6, N'Kenya
', N'Torres
', N'C/ San Velero S/N
', N'8097416589', N'8095623658', N'24 ', N'KenyaTorres@gmail.com
', N'F', N'Santiago
', N'Bella Vista
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (7, N'Laura
', N'Concepcion
', N'C/ Vladimir Putting #1
', N'8093654587', N'8496529854', N'20 ', N'LauraConcepcion@gmail.com
', N'F', N'Santo Domingo
', N'Buena Vista 1
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (8, N'Lurdes
', N'Bueno
', N'C/ Casandra Damiron #8
', N'8096695487', N'8492569658', N'19 ', N'LurdesBueno@gmail.com
', N'F', N'Santo Domingo
', N'El Millon
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (9, N'Miguel
', N'Lorenzo
', N'C/ Fernando Valerio #13
', N'8093256589', N'8296584866', N'43 ', N'MiguelLorenzo@gmail.com
', N'M', N'San Cristobal
', N'Las Flores
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (10, N'Manuel
', N'Puello
', N'C/ Winston Churchill #1325
', N'8094456598', N'8296542802', N'52 ', N'ManuelPuello@gmail.com
', N'M', N'Santo Domingo
', N'El Embrujo
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (11, N'Micaela
', N'Fortuna
', N'C/ Fantino Falcon #13 
', N'8095687623', N'8095658826', N'36 ', N'MicaelaFortuna@gmail.com
', N'F', N'Santo Domingo
', N'Las Palmas
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (12, N'Moises
', N'De Leon
', N'Primaveral #15
', N'8094563258', N'8094865236', N'37 ', N'MoisesDeLeon@gmail.com
', N'M', N'Santo Domingo
', N'La Julia
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (13, N'Milciades
', N'Ramos
', N'Residencial Las Flores #201
', N'8094532546', N'8095846268', N'40 ', N'MilciadesRamos@gmail.com
', N'M', N'Santo Domingo
', N'El Millon
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (14, N'Nilkauris
', N'Del Orbe
', N'C/ Ubaldo Ruiz #10
', N'8092364587', N'8295468263', N'28 ', N'NilkaurisDelOrbe@gmail.com
', N'F', N'Santo Domingo
', N'Gazcue
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (15, N'Nelson
', N'Batista
', N'C/ Principal #12
', N'8097556485', N'8293569465', N'20 ', N'NelsonBatista@gmail.com
', N'M', N'Santo Domingo
', N'Ensanche Naco
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (16, N'Teresa
', N'Belen
', N'Calle F #15
', N'8095669876', N'8094568558', N'35 ', N'TeresaBelen@gmail.com
', N'F', N'Santo Domingo
', N'El Paraiso
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (17, N'Sonia
', N'Subero
', N'Av. Maximo Gomez #2001
', N'8099566466', N'8495624682', N'28 ', N'SoniaSubero@gmail.com
', N'F', N'Santo Domingo
', N'La FE
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (18, N'Wanda
', N'Portorreal
', N'Av. Los Restauradores #1503
', N'8095632465', N'8494522565', N'24 ', N'WandaPortorreal@gmail.com
', N'F', N'Santo Domingo
', N'Los Ciruelitos
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (19, N'Wendy
', N'Montilla
', N'C/ Charles de Gaulle #16
', N'8095649876', N'8495652446', N'26 ', N'WendyMontilla@gmail.com
', N'F', N'Santo Domingo
', N'Piantini
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (20, N'Wilson
', N'Chavez
', N'Av. Los Trinitarios #1
', N'8092356598', N'8496552625', N'55 ', N'WilsonChavez@gmail.com
', N'M', N'Santo Domingo
', N'Arroyo Hondo
')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Edad], [Email], [Sexo], [Provincia], [Sector]) VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (1, N'Americana
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (2, N'Brasileña
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (3, N'Canadiense
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (4, N'China
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (5, N'Europea')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (6, N'Japones')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (7, N'Koreana
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (8, N'Mexicana
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (9, N'Alemana
')
INSERT [dbo].[Fabricacion] ([FabricacionId], [Nombre]) VALUES (10, N'Taiwanes')
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (1, N'Motor
', CAST(N'06:00:00' AS Time), 1500.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (2, N'Neumaticos
', CAST(N'02:00:00' AS Time), 500.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (3, N'Sistema de Combustible
', CAST(N'02:00:00' AS Time), 1000.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (4, N'Sistema de Freno
', CAST(N'04:00:00' AS Time), 700.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (5, N'Sistema de Puertas
', CAST(N'02:00:00' AS Time), 300.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (6, N'Sistema de Refrigeracion
', CAST(N'04:00:00' AS Time), 1000.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (7, N'Sistema Electrico
', CAST(N'06:00:00' AS Time), 1500.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (8, N'Transmision
', CAST(N'08:00:00' AS Time), 1500.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (9, N'Tren Delantero
', CAST(N'03:00:00' AS Time), 500.0000)
INSERT [dbo].[Mantenimientos] ([MantenimientoId], [Nombre], [Tiempo_Estimado], [Precio]) VALUES (10, N'Tren Trasero
', CAST(N'03:00:00' AS Time), 500.0000)
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (1, 1, 9, 10, 3, N'2001', N'AZUL', N'J625A516D211ASD21125
', 1, N'A523649')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (2, 2, 10, 17, 2, N'2003', N'VERDE', N'K625A516D211ASD21126
', 2, N'G254369')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (3, 3, 1, 16, 3, N'2012', N'DORADO', N'P625A516D211ASD21127
', 3, N'L562649')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (4, 4, 2, 10, 1, N'2015', N'NARANJA', N'L625A516D211ASD21128
', 4, N'A265946')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (5, 5, 3, 10, 4, N'2017', N'AMARILLO', N'M625A516D211ASD21129
', 5, N'L568456')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (6, 6, 4, 17, 2, N'2008', N'VERDE', N'A625A516D211ASD21130
', 6, N'G598756')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (7, 7, 5, 16, 5, N'2005', N'GRIS', N'J625A516D211ASD21131
', 7, N'A564958')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (8, 8, 6, 16, 3, N'2016', N'PURPURA', N'P625A516D211ASD21132
', 8, N'L598875')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (9, 9, 7, 10, 6, N'2020', N'VERDE', N'G625A516D211ASD21133
', 9, N'A556444')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (10, 10, 8, 17, 3, N'2019', N'AZUL', N'J625A516D211ASD21135
', 10, N'A215698')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (11, 1, 1, 10, 3, N'2018', N'ROJO', N'H625A516D211ASD21134
', 2, N'G512365')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (12, 2, 2, 16, 4, N'2012', N'AMARILLO', N'K625A516D211ASD21136
', 3, N'G569583')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (13, 3, 3, 17, 4, N'2011', N'NARANJA', N'C625A516D211ASD21137
', 5, N'L546284')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (14, 4, 4, 10, 12, N'2016', N'VERDE', N'B625A516D211ASD21138
', 6, N'A542163')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (15, 5, 7, 16, 5, N'2019', N'AZUL', N'A625A516D211ASD21139
', 4, N'A879546')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (16, 6, 5, 17, 5, N'2020', N'GRIS', N'B625A516D211ASD21140
', 9, N'A125635')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (17, 7, 6, 17, 6, N'2014', N'DORADO', N'1625A516D211ASD21141
', 7, N'A577846')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (18, 8, 9, 16, 6, N'2017', N'BLANCO', N'2625A516D211ASD21142
', 8, N'L569854')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (19, 9, 5, 16, 7, N'2010', N'VERDE', N'G625A516D211ASD21143
', 1, N'L451236')
INSERT [dbo].[MantenimientosaRealizar] ([Mantenimientos_a_RealizarId], [ClientId], [MantenimientoId], [MarcaId], [ModeloId], [Año], [Color], [Chasis], [FabricacionId], [Placa]) VALUES (20, 10, 1, 10, 8, N'2009', N'ROJO', N'K625A516D211ASD21144
', 10, N'G546985')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (1, N'AUDI')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (2, N'ACURA')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (3, N'BMW')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (4, N'BYD')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (5, N'CADILLAC')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (6, N'CHEVROLET')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (7, N'DODGE')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (8, N'FIAT')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (9, N'FORD')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (10, N'HONDA')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (11, N'HYUNDAI')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (12, N'INFINITI')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (13, N'ISUZU')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (14, N'KIA')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (15, N'MITSUBISHI')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (16, N'NISSAN')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (17, N'TOYOTA')
INSERT [dbo].[Marcas] ([MarcaId], [Nombre]) VALUES (18, N'VOLKSWAGEN')
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (1, 1, 1, 15)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (2, 2, 2, 2)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (3, 3, 3, 8)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (4, 4, 4, 9)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (5, 5, 5, 4)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (6, 6, 6, 6)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (7, 7, 7, 7)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (8, 8, 8, 3)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (9, 9, 9, 5)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (10, 10, 10, 1)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (11, 8, 1, 12)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (12, 1, 5, 13)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (13, 2, 13, 10)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (14, 3, 15, 5)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (15, 5, 18, 4)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (16, 6, 16, 3)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (17, 8, 12, 2)
INSERT [dbo].[Modelos] ([ModelosId], [Modelos_HondaId], [Modelos_NissanId], [Modelos_ToyotaId]) VALUES (18, 3, 11, 1)
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (1, N'ACCORD
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (2, N'CAPA
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (3, N'CIVIC
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (4, N'CR-V
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (5, N'FIT
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (6, N'HR-V
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (7, N'INSIGHT
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (8, N'JAZZ
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (9, N'LOGO
')
INSERT [dbo].[Modelos Honda] ([Modelo_HondaId], [Nombre]) VALUES (10, N'ST 2000
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (1, N'ALMERA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (2, N'ALTIMA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (3, N'CUBE
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (4, N'EVALIA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (5, N'FRONTIER
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (6, N'JUKE
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (7, N'LEAF
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (8, N'MICRA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (9, N'MURANO
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (10, N'NAVARA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (11, N'NOTE
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (12, N'NP-300
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (13, N'PATHFANDER
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (14, N'PATROL
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (15, N'PRIMERA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (16, N'QASHQAI
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (17, N'SENTRA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (18, N'TERRANO
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (19, N'TIIDA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (20, N'VERSA
')
INSERT [dbo].[Modelos Nissan] ([Modelo_NissanId], [Nombre]) VALUES (21, N'X-TRAIL
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (1, N'4RUNNER
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (2, N'AYGA
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (3, N'CAMRY
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (4, N'COROLLA
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (5, N'ECO
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (6, N'HIGHLANDER
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (7, N'HILUX
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (8, N'LAND CRUISER
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (9, N'LAND CRUISER PRADO
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (10, N'PASSO
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (11, N'PRADO
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (12, N'PRIUS
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (13, N'RAV-4
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (14, N'T-100
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (15, N'TACOMA
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (16, N'TUNDRA
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (17, N'VITZ
')
INSERT [dbo].[Modelos Toyota] ([Modelo_ToyotaId], [Nombre]) VALUES (18, N'YARIS
')
ALTER TABLE [dbo].[MantenimientosaRealizar]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos a Realizar_Clientes1] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clientes] ([ClientesId])
GO
ALTER TABLE [dbo].[MantenimientosaRealizar] CHECK CONSTRAINT [FK_Mantenimientos a Realizar_Clientes1]
GO
ALTER TABLE [dbo].[MantenimientosaRealizar]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos a Realizar_Fabricacion] FOREIGN KEY([FabricacionId])
REFERENCES [dbo].[Fabricacion] ([FabricacionId])
GO
ALTER TABLE [dbo].[MantenimientosaRealizar] CHECK CONSTRAINT [FK_Mantenimientos a Realizar_Fabricacion]
GO
ALTER TABLE [dbo].[MantenimientosaRealizar]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos a Realizar_Mantenimientos] FOREIGN KEY([MantenimientoId])
REFERENCES [dbo].[Mantenimientos] ([MantenimientoId])
GO
ALTER TABLE [dbo].[MantenimientosaRealizar] CHECK CONSTRAINT [FK_Mantenimientos a Realizar_Mantenimientos]
GO
ALTER TABLE [dbo].[MantenimientosaRealizar]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos a Realizar_Marcas] FOREIGN KEY([MarcaId])
REFERENCES [dbo].[Marcas] ([MarcaId])
GO
ALTER TABLE [dbo].[MantenimientosaRealizar] CHECK CONSTRAINT [FK_Mantenimientos a Realizar_Marcas]
GO
ALTER TABLE [dbo].[MantenimientosaRealizar]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimientos a Realizar_Modelos] FOREIGN KEY([ModeloId])
REFERENCES [dbo].[Modelos] ([ModelosId])
GO
ALTER TABLE [dbo].[MantenimientosaRealizar] CHECK CONSTRAINT [FK_Mantenimientos a Realizar_Modelos]
GO
ALTER TABLE [dbo].[Modelos]  WITH CHECK ADD  CONSTRAINT [FK_Modelos_Modelos Honda] FOREIGN KEY([Modelos_HondaId])
REFERENCES [dbo].[Modelos Honda] ([Modelo_HondaId])
GO
ALTER TABLE [dbo].[Modelos] CHECK CONSTRAINT [FK_Modelos_Modelos Honda]
GO
ALTER TABLE [dbo].[Modelos]  WITH CHECK ADD  CONSTRAINT [FK_Modelos_Modelos Nissan] FOREIGN KEY([Modelos_NissanId])
REFERENCES [dbo].[Modelos Nissan] ([Modelo_NissanId])
GO
ALTER TABLE [dbo].[Modelos] CHECK CONSTRAINT [FK_Modelos_Modelos Nissan]
GO
ALTER TABLE [dbo].[Modelos]  WITH CHECK ADD  CONSTRAINT [FK_Modelos_Modelos Toyota] FOREIGN KEY([Modelos_ToyotaId])
REFERENCES [dbo].[Modelos Toyota] ([Modelo_ToyotaId])
GO
ALTER TABLE [dbo].[Modelos] CHECK CONSTRAINT [FK_Modelos_Modelos Toyota]
GO
USE [master]
GO
ALTER DATABASE [D&D Soluciones Automotrices Db] SET  READ_WRITE 
GO
