USE [master]
GO
/****** Object:  Database [ConvencionesDB]    Script Date: 18/01/2022 07:35:48 p. m. ******/
CREATE DATABASE [ConvencionesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConvencionesDB', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL12.TEW_SQLEXPRESS\MSSQL\DATA\ConvencionesDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ConvencionesDB_log', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL12.TEW_SQLEXPRESS\MSSQL\DATA\ConvencionesDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ConvencionesDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConvencionesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConvencionesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConvencionesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConvencionesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConvencionesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConvencionesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConvencionesDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConvencionesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConvencionesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConvencionesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConvencionesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConvencionesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConvencionesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConvencionesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConvencionesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConvencionesDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConvencionesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConvencionesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConvencionesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConvencionesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConvencionesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConvencionesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConvencionesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConvencionesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ConvencionesDB] SET  MULTI_USER 
GO
ALTER DATABASE [ConvencionesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConvencionesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConvencionesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConvencionesDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ConvencionesDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ConvencionesDB]
GO
/****** Object:  Table [dbo].[tblEntrada]    Script Date: 18/01/2022 07:35:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEntrada](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[Convencion] [varchar](50) NOT NULL,
	[Categoria] [varchar](15) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
	[Etiquetas] [varchar](200) NOT NULL,
	[Thumbnail] [varchar](200) NOT NULL,
	[URLEntrada] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblEntrada] ON 
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (1, N'Podcast 001', N'Belém do Pará', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-001')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (2, N'Infografía 001', N'Belém do Pará', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-001')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (3, N'Ficha 001', N'Belém do Pará', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-001')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (4, N'Podcast 003', N'Belém do Pará', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-003')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (5, N'Infografía 003', N'Belém do Pará', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-003')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (6, N'Ficha 003', N'Belém do Pará', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-003')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (7, N'Podcast 007', N'Belém do Pará', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-007')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (8, N'Infografía 007', N'Belém do Pará', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-007')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (9, N'Ficha 007', N'Belém do Pará', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-007')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (10, N'Podcast 005', N'Belém do Pará', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-005')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (11, N'Infografía 005', N'Belém do Pará', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-005')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (12, N'Ficha 005', N'Belém do Pará', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-005')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (13, N'Podcast 002', N'CEDAW', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-002')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (14, N'Infografía 002', N'CEDAW', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-002')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (15, N'Ficha 002', N'CEDAW', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-002')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (16, N'Podcast 004', N'CEDAW', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-004')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (17, N'Infografía 004', N'CEDAW', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-004')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (18, N'Ficha 004', N'CEDAW', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-004')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (19, N'Podcast 006', N'CEDAW', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialuno.jpg', N'/podcast/podcast-006')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (20, N'Infografía 006', N'CEDAW', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/infografia/infografia-006')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (21, N'Ficha 006', N'CEDAW', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-006')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (22, N'Podcast 008', N'CEDAW', N'Podcast', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialdos.jpg', N'/podcast/podcast-008')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (23, N'Infografía 008', N'CEDAW', N'Infografía', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/infografia/infografia-008')
GO
INSERT [dbo].[tblEntrada] ([Id], [Titulo], [Convencion], [Categoria], [Descripcion], [Etiquetas], [Thumbnail], [URLEntrada]) VALUES (24, N'Ficha 008', N'CEDAW', N'Ficha', N'La obligación de tomar medidas para eliminar la discriminación de la mujer en la vida política y pública', N'IgualdadYNoDiscriminación TiposDeIgualdad IgualdadFormal IgualdadSustantiva', N'assets/images/materialtres.jpg', N'/ficha/ficha-008')
GO
SET IDENTITY_INSERT [dbo].[tblEntrada] OFF
GO
USE [master]
GO
ALTER DATABASE [ConvencionesDB] SET  READ_WRITE 
GO
