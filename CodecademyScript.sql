﻿USE [Codecademy] --maak eerst deze database aan [Codecademy]
GO
/****** Object:  Table [dbo].[Bekijkt]    Script Date: 1-12-2022 11:47
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bekijkt](
	[EmailAdres] [nvarchar](50) NOT NULL,
	[ContentItemID] [int] NOT NULL,
	[Datum] [date] NULL,
 CONSTRAINT [PK_Bekijkt] PRIMARY KEY CLUSTERED 
(
	[EmailAdres] ASC,
	[ContentItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificaat]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificaat](
	[CertificaatID] [int] NOT NULL,
	[Cijfer] [int] NULL,
	[NaamMedewerker] [nvarchar](50) NULL,
	[CursusID] [int] NULL,
 CONSTRAINT [PK_Certificaat] PRIMARY KEY CLUSTERED 
(
	[CertificaatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentItem]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentItem](
	[ContentItemID] [int] NOT NULL,
	[PublicatieDatum] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContentItem] PRIMARY KEY CLUSTERED 
(
	[ContentItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursist]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursist](
	[EmailAdres] [nvarchar](50) NOT NULL,
	[Naam] [nvarchar](50) NULL,
	[GeboorteDatum] [date] NULL,
	[Geslacht] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Woonplaats] [nvarchar](50) NULL,
	[Land] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cursist] PRIMARY KEY CLUSTERED 
(
	[EmailAdres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursus]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursus](
	[CursusID] [int] NOT NULL,
	[CursusNaam] [nvarchar](50) NOT NULL,
	[Onderwerp] [nvarchar](50) NULL,
	[IntroductieTekst] [nvarchar](200) NULL,
	[NiveauAanduiding] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cursus] PRIMARY KEY CLUSTERED 
(
	[CursusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inschrijving]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inschrijving](
	[CursusID] [int] NOT NULL,
	[EmailAdresCursist] [nvarchar](50) NOT NULL,
	[Datum] [date] NOT NULL,
 CONSTRAINT [PK_Inschrijving] PRIMARY KEY CLUSTERED 
(
	[CursusID] ASC,
	[EmailAdresCursist] ASC,
	[Datum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Titel] [nvarchar](50) NOT NULL,
	[Versie] [int] NOT NULL,
	[Beschrijving] [nvarchar](200) NULL,
	[NaamContactpersoon] [nvarchar](50) NULL,
	[e-mailAdres] [nvarchar](50) NULL,
	[Volgnummer] [int] NULL,
	[CursusID] [int] NOT NULL,
	[ContentItemID] [int] NOT NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Titel] ASC,
	[Versie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Webcast]    Script Date: 1-12-2022 11:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Webcast](
	[ContentItemID] [int] NOT NULL,
	[Titel] [nvarchar](50) NOT NULL,
	[Beschrijving] [nvarchar](200) NULL,
	[NaamSpreker] [nvarchar](50) NULL,
	[Organisatie] [nvarchar](50) NULL,
	[Tijdsduur] [time](7) NULL,
	[DatumPublicatie] [date] NULL,
	[URL] [nvarchar](50) NULL,
 CONSTRAINT [PK_Webcast_1] PRIMARY KEY CLUSTERED 
(
	[Titel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bekijkt]  WITH CHECK ADD  CONSTRAINT [FK_Bekijkt_ContentItem] FOREIGN KEY([ContentItemID])
REFERENCES [dbo].[ContentItem] ([ContentItemID])
GO
ALTER TABLE [dbo].[Bekijkt] CHECK CONSTRAINT [FK_Bekijkt_ContentItem]
GO
ALTER TABLE [dbo].[Bekijkt]  WITH CHECK ADD  CONSTRAINT [FK_Bekijkt_Cursist] FOREIGN KEY([EmailAdres])
REFERENCES [dbo].[Cursist] ([EmailAdres])
GO
ALTER TABLE [dbo].[Bekijkt] CHECK CONSTRAINT [FK_Bekijkt_Cursist]
GO
ALTER TABLE [dbo].[Inschrijving]  WITH CHECK ADD  CONSTRAINT [FK_Inschrijving_Certificaat] FOREIGN KEY([CursusID])
REFERENCES [dbo].[Certificaat] ([CertificaatID])
GO
ALTER TABLE [dbo].[Inschrijving] CHECK CONSTRAINT [FK_Inschrijving_Certificaat]
GO
ALTER TABLE [dbo].[Inschrijving]  WITH CHECK ADD  CONSTRAINT [FK_Inschrijving_Cursist] FOREIGN KEY([EmailAdresCursist])
REFERENCES [dbo].[Cursist] ([EmailAdres])
GO
ALTER TABLE [dbo].[Inschrijving] CHECK CONSTRAINT [FK_Inschrijving_Cursist]
GO
ALTER TABLE [dbo].[Inschrijving]  WITH CHECK ADD  CONSTRAINT [FK_Inschrijving_Cursus] FOREIGN KEY([CursusID])
REFERENCES [dbo].[Cursus] ([CursusID])
GO
ALTER TABLE [dbo].[Inschrijving] CHECK CONSTRAINT [FK_Inschrijving_Cursus]
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_Module_ContentItem] FOREIGN KEY([ContentItemID])
REFERENCES [dbo].[ContentItem] ([ContentItemID])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK_Module_ContentItem]
GO
ALTER TABLE [dbo].[Module]  WITH CHECK ADD  CONSTRAINT [FK_Module_Cursus] FOREIGN KEY([CursusID])
REFERENCES [dbo].[Cursus] ([CursusID])
GO
ALTER TABLE [dbo].[Module] CHECK CONSTRAINT [FK_Module_Cursus]
GO
ALTER TABLE [dbo].[Webcast]  WITH CHECK ADD  CONSTRAINT [FK_Webcast_ContentItem] FOREIGN KEY([ContentItemID])
REFERENCES [dbo].[ContentItem] ([ContentItemID])
GO
ALTER TABLE [dbo].[Webcast] CHECK CONSTRAINT [FK_Webcast_ContentItem]
GO
