USE [PropertyManagerDB]
GO
/****** Object:  Table [dbo].[CategoriaDespesa]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaDespesa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CategoriaDespesa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concelhos]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concelhos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodConcelho] [int] NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[IdDistrito] [int] NOT NULL,
	[Coeficiente] [float] NOT NULL,
 CONSTRAINT [PK_Concelhos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distritos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Distritos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistritosConcelhos]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistritosConcelhos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoDistrito] [varchar](4) NULL,
	[DesignacaoDistrito] [nvarchar](50) NULL,
	[CodigoConcelho] [nvarchar](6) NULL,
	[DesignacaoConcelho] [nvarchar](100) NULL,
 CONSTRAINT [PK_DistritosConcelhos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTypeCategories]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTypeCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nchar](50) NOT NULL,
 CONSTRAINT [PK_DocumentTypeCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTypes]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Description] [nvarchar](512) NULL,
	[CreatedBy] [nvarchar](70) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedBy] [nvarchar](70) NULL,
	[LastModifiedOn] [datetime] NULL,
	[TypeCategoryId] [int] NULL,
 CONSTRAINT [PK_DocumentTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](30) NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoConservacao]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoConservacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](30) NULL,
 CONSTRAINT [PK_EstadoConservacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoPagamentoRenda]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoPagamentoRenda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SituacaoPagamentoRenda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaPagamento]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPagamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](75) NOT NULL,
 CONSTRAINT [PK_FormaPagamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SituacaoFracao]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SituacaoFracao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SituacaoFracao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCertificadoEnergetico]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCertificadoEnergetico](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TipoCertificadoEnergetico] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContacto]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContacto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_TipoContacto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDespesa]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDespesa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NOT NULL,
	[Id_CategoriaDespesa] [int] NOT NULL,
 CONSTRAINT [PK__TipoDesp__3214EC0798D2EC09] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipologiaFracao]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipologiaFracao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](3) NOT NULL,
 CONSTRAINT [PK_TipologiaFracao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPropriedade]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPropriedade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TipoPropriedade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoRecebimento]    Script Date: 23/01/2024 10:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRecebimento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NULL,
 CONSTRAINT [PK_TipoRecebimento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoriaDespesa] ON 

INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (5, N'Comissões pagas a imobiliárias.')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (7, N'Custas judiciais')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (4, N'Despesas correntes')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (1, N'Impostos')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (3, N'Melhoramentos em frações')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (2, N'Melhoramentos no imóvel')
INSERT [dbo].[CategoriaDespesa] ([Id], [Descricao]) VALUES (6, N'Sem classificação')
SET IDENTITY_INSERT [dbo].[CategoriaDespesa] OFF
GO
SET IDENTITY_INSERT [dbo].[Concelhos] ON 

INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (1, 1401, N'Abrantes', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (2, 101, N'Águeda', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (3, 901, N'Aguiar da Beira', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (4, 701, N'Alandroal', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (5, 102, N'Albergaria-a-Velha', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (6, 801, N'Albufeira', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (7, 1501, N'Alcácer do Sal', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (8, 1402, N'Alcanena', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (9, 1001, N'Alcobaça', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (10, 1502, N'Alcochete', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (11, 802, N'Alcoutim', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (12, 1101, N'Alenquer', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (13, 401, N'Alfândega da Fé', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (14, 1701, N'Alijó', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (15, 803, N'Aljezur', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (16, 201, N'Aljustrel', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (17, 1503, N'Almada', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (18, 902, N'Almeida', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (19, 1403, N'Almeirim', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (20, 202, N'Almodôvar', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (21, 1404, N'Alpiarça', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (22, 1201, N'Alter do Chão', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (23, 1002, N'Alvaiázere', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (24, 203, N'Alvito', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (25, 1115, N'Amadora', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (26, 1301, N'Amarante', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (27, 301, N'Amares', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (28, 103, N'Anadia', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (29, 1003, N'Ansião', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (30, 1601, N'Arcos de Valdevez', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (31, 601, N'Arganil', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (32, 1801, N'Armamar', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (33, 104, N'Arouca', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (34, 702, N'Arraiolos', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (35, 1202, N'Arronches', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (36, 1102, N'Arruda dos Vinhos', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (37, 105, N'Aveiro', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (38, 1203, N'Avis', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (39, 1103, N'Azambuja', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (40, 1302, N'Baião', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (41, 302, N'Barcelos', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (42, 204, N'Barrancos', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (43, 1504, N'Barreiro', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (44, 1004, N'Batalha', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (45, 205, N'Beja', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (46, 501, N'Belmonte', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (47, 1405, N'Benavente', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (48, 1005, N'Bombarral', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (49, 703, N'Borba', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (50, 1702, N'Boticas', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (51, 303, N'Braga', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (52, 402, N'Bragança', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (53, 304, N'Cabeceiras de Basto', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (54, 1104, N'Cadaval', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (55, 1006, N'Caldas da Rainha', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (56, 1602, N'Caminha', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (57, 1204, N'Campo Maior', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (58, 602, N'Cantanhede', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (59, 403, N'Carrazeda de Ansiães', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (60, 1802, N'Carregal do Sal', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (61, 1406, N'Cartaxo', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (62, 1105, N'Cascais', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (63, 1007, N'Castanheira de Pêra', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (64, 502, N'Castelo Branco', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (65, 106, N'Castelo de Paiva', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (66, 1205, N'Castelo de Vide', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (67, 1803, N'Castro Daire', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (68, 804, N'Castro Marim', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (69, 206, N'Castro Verde', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (70, 903, N'Celorico da Beira', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (71, 305, N'Celorico de Basto', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (72, 1407, N'Chamusca', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (73, 1703, N'Chaves', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (74, 1804, N'Cinfães', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (75, 603, N'Coimbra', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (76, 604, N'Condeixa-a-Nova', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (77, 1408, N'Constância', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (78, 1409, N'Coruche', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (79, 503, N'Covilhã', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (80, 1206, N'Crato', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (81, 207, N'Cuba', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (82, 1207, N'Elvas', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (83, 1410, N'Entroncamento', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (84, 107, N'Espinho', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (85, 306, N'Esposende', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (86, 108, N'Estarreja', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (87, 704, N'Estremoz', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (88, 705, N'Évora', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (89, 307, N'Fafe', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (90, 805, N'Faro', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (91, 1303, N'Felgueiras', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (92, 208, N'Ferreira do Alentejo', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (93, 1411, N'Ferreira do Zêzere', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (94, 605, N'Figueira da Foz', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (95, 904, N'Figueira de Castelo Rodrigo', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (96, 1008, N'Figueiró dos Vinhos', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (97, 905, N'Fornos de Algodres', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (98, 404, N'Freixo de Espada à Cinta', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (99, 1208, N'Fronteira', 12, 0.0033)
GO
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (100, 504, N'Fundão', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (101, 1209, N'Gavião', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (102, 606, N'Góis', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (103, 1412, N'Golegã', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (104, 1304, N'Gondomar', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (105, 906, N'Gouveia', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (106, 1505, N'Grândola', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (107, 907, N'Guarda', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (108, 308, N'Guimarães', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (109, 505, N'Idanha-a-Nova', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (110, 110, N'Ílhavo', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (111, 806, N'Lagoa', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (112, 807, N'Lagos', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (113, 1805, N'Lamego', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (114, 1009, N'Leiria', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (115, 1106, N'Lisboa', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (116, 808, N'Loulé', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (117, 1107, N'Loures', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (118, 1108, N'Lourinhã', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (119, 607, N'Lousã', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (120, 1305, N'Lousada', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (121, 1413, N'Mação', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (122, 405, N'Macedo de Cavaleiros', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (123, 1109, N'Mafra', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (124, 1306, N'Maia', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (125, 1806, N'Mangualde', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (126, 908, N'Manteigas', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (127, 1307, N'Marco de Canaveses', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (128, 1010, N'Marinha Grande', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (129, 1210, N'Marvão', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (130, 1308, N'Matosinhos', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (131, 111, N'Mealhada', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (132, 909, N'Mêda', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (133, 1603, N'Melgaço', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (134, 209, N'Mértola', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (135, 1704, N'Mesão Frio', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (136, 608, N'Mira', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (137, 609, N'Miranda do Corvo', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (138, 406, N'Miranda do Douro', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (139, 407, N'Mirandela', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (140, 408, N'Mogadouro', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (141, 1807, N'Moimenta da Beira', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (142, 1506, N'Moita', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (143, 1604, N'Monção', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (144, 809, N'Monchique', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (145, 1705, N'Mondim de Basto', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (146, 1211, N'Monforte', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (147, 1706, N'Montalegre', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (148, 706, N'Montemor-o-Novo', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (149, 610, N'Montemor-o-Velho', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (150, 1507, N'Montijo', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (151, 707, N'Mora', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (152, 1808, N'Mortágua', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (153, 210, N'Moura', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (154, 708, N'Mourão', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (155, 1707, N'Murça', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (156, 112, N'Murtosa', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (157, 1011, N'Nazaré', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (158, 1809, N'Nelas', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (159, 1212, N'Nisa', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (160, 1012, N'Óbidos', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (161, 211, N'Odemira', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (162, 1116, N'Odivelas', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (163, 1110, N'Oeiras', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (164, 506, N'Oleiros', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (165, 810, N'Olhão', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (166, 113, N'Oliveira de Azeméis', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (167, 1810, N'Oliveira de Frades', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (168, 114, N'Oliveira do Bairro', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (169, 611, N'Oliveira do Hospital', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (170, 1421, N'Ourém', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (171, 212, N'Ourique', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (172, 115, N'Ovar', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (173, 1309, N'Paços de Ferreira', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (174, 1508, N'Palmela', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (175, 612, N'Pampilhosa da Serra', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (176, 1310, N'Paredes', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (177, 1605, N'Paredes de Coura', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (178, 1013, N'Pedrógão Grande', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (179, 613, N'Penacova', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (180, 1311, N'Penafiel', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (181, 1811, N'Penalva do Castelo', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (182, 507, N'Penamacor', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (183, 1812, N'Penedono', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (184, 614, N'Penela', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (185, 1014, N'Peniche', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (186, 1708, N'Peso da Régua', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (187, 910, N'Pinhel', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (188, 1015, N'Pombal', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (189, 1606, N'Ponte da Barca', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (190, 1607, N'Ponte de Lima', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (191, 1213, N'Ponte de Sor', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (192, 1214, N'Portalegre', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (193, 709, N'Portel', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (194, 811, N'Portimão', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (195, 1312, N'Porto', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (196, 1016, N'Porto de Mós', 10, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (197, 309, N'Póvoa de Lanhoso', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (198, 1313, N'Póvoa de Varzim', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (199, 508, N'Proença-a-Nova', 5, 0.0033)
GO
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (200, 710, N'Redondo', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (201, 711, N'Reguengos de Monsaraz', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (202, 1813, N'Resende', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (203, 1709, N'Ribeira de Pena', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (204, 1414, N'Rio Maior', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (205, 1710, N'Sabrosa', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (206, 911, N'Sabugal', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (207, 1415, N'Salvaterra de Magos', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (208, 1814, N'Santa Comba Dão', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (209, 109, N'Santa Maria da Feira', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (210, 1711, N'Santa Marta de Penaguião', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (211, 1416, N'Santarém', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (212, 1509, N'Santiago do Cacém', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (213, 1314, N'Santo Tirso', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (214, 812, N'São Brás de Alportel', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (215, 116, N'São João da Madeira', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (216, 1815, N'São João da Pesqueira', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (217, 1816, N'São Pedro do Sul', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (218, 1417, N'Sardoal', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (219, 1817, N'Sátão', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (220, 912, N'Seia', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (221, 1510, N'Seixal', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (222, 1818, N'Sernancelhe', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (223, 213, N'Serpa', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (224, 509, N'Sertã', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (225, 1511, N'Sesimbra', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (226, 1512, N'Setúbal', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (227, 117, N'Sever do Vouga', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (228, 813, N'Silves', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (229, 1513, N'Sines', 15, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (230, 1111, N'Sintra', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (231, 1112, N'Sobral de Monte Agraço', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (232, 615, N'Soure', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (233, 1215, N'Sousel', 12, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (234, 616, N'Tábua', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (235, 1819, N'Tabuaço', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (236, 1820, N'Tarouca', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (237, 814, N'Tavira', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (238, 310, N'Terras de Bouro', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (239, 1418, N'Tomar', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (240, 1821, N'Tondela', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (241, 409, N'Torre de Moncorvo', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (242, 1419, N'Torres Novas', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (243, 1113, N'Torres Vedras', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (244, 913, N'Trancoso', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (245, 1318, N'Trofa', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (246, 118, N'Vagos', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (247, 119, N'Vale de Cambra', 1, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (248, 1608, N'Valença', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (249, 1315, N'Valongo', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (250, 1712, N'Valpaços', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (251, 712, N'Vendas Novas', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (252, 713, N'Viana do Alentejo', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (253, 1609, N'Viana do Castelo', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (254, 214, N'Vidigueira', 2, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (255, 311, N'Vieira do Minho', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (256, 510, N'Vila de Rei', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (257, 815, N'Vila do Bispo', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (258, 1316, N'Vila do Conde', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (259, 410, N'Vila Flor', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (260, 1114, N'Vila Franca de Xira', 11, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (261, 1420, N'Vila Nova da Barquinha', 14, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (262, 1610, N'Vila Nova de Cerveira', 16, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (263, 312, N'Vila Nova de Famalicão', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (264, 914, N'Vila Nova de Foz Côa', 9, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (265, 1317, N'Vila Nova de Gaia', 13, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (266, 1822, N'Vila Nova de Paiva', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (267, 617, N'Vila Nova de Poiares', 6, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (268, 1713, N'Vila Pouca de Aguiar', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (269, 1714, N'Vila Real', 17, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (270, 816, N'Vila Real de Santo António', 8, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (271, 511, N'Vila Velha de Ródão', 5, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (272, 313, N'Vila Verde', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (273, 714, N'Vila Viçosa', 7, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (274, 411, N'Vimioso', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (275, 412, N'Vinhais', 4, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (276, 1823, N'Viseu', 18, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (277, 314, N'Vizela', 3, 0.0033)
INSERT [dbo].[Concelhos] ([Id], [CodConcelho], [Descricao], [IdDistrito], [Coeficiente]) VALUES (278, 1824, N'Vouzela', 18, 0.0033)
SET IDENTITY_INSERT [dbo].[Concelhos] OFF
GO
SET IDENTITY_INSERT [dbo].[Distritos] ON 

INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (1, N'Aveiro')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (2, N'Beja')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (3, N'Braga')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (4, N'Bragança')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (5, N'Castelo Branco')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (6, N'Coimbra')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (7, N'Évora')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (8, N'Faro')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (9, N'Guarda')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (10, N'Leiria')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (11, N'Lisboa')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (12, N'Portalegre')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (13, N'Porto')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (14, N'Santarém')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (15, N'Setúbal')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (16, N'Viana do Castelo')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (17, N'Vila Real')
INSERT [dbo].[Distritos] ([Id], [Descricao]) VALUES (18, N'Viseu')
SET IDENTITY_INSERT [dbo].[Distritos] OFF
GO
SET IDENTITY_INSERT [dbo].[DistritosConcelhos] ON 

INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (1, N'''01''', N'Aveiro', N'''0101''', N'Águeda')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (2, N'''01''', N'Aveiro', N'''0102''', N'Albergaria-a-Velha')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (3, N'''01''', N'Aveiro', N'''0103''', N'Anadia')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (4, N'''01''', N'Aveiro', N'''0104''', N'Arouca')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (5, N'''01''', N'Aveiro', N'''0105''', N'Aveiro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (6, N'''01''', N'Aveiro', N'''0106''', N'Castelo de Paiva')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (7, N'''01''', N'Aveiro', N'''0107''', N'Espinho')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (8, N'''01''', N'Aveiro', N'''0108''', N'Estarreja')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (9, N'''01''', N'Aveiro', N'''0109''', N'Santa Maria da Feira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (10, N'''01''', N'Aveiro', N'''0110''', N'Ílhavo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (11, N'''01''', N'Aveiro', N'''0111''', N'Mealhada')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (12, N'''01''', N'Aveiro', N'''0112''', N'Murtosa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (13, N'''01''', N'Aveiro', N'''0113''', N'Oliveira de Azeméis')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (14, N'''01''', N'Aveiro', N'''0114''', N'Oliveira do Bairro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (15, N'''01''', N'Aveiro', N'''0115''', N'Ovar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (16, N'''01''', N'Aveiro', N'''0116''', N'São João da Madeira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (17, N'''01''', N'Aveiro', N'''0117''', N'Sever do Vouga')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (18, N'''01''', N'Aveiro', N'''0118''', N'Vagos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (19, N'''01''', N'Aveiro', N'''0119''', N'Vale de Cambra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (20, N'''02''', N'Beja', N'''0201''', N'Aljustrel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (21, N'''02''', N'Beja', N'''0202''', N'Almodôvar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (22, N'''02''', N'Beja', N'''0203''', N'Alvito')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (23, N'''02''', N'Beja', N'''0204''', N'Barrancos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (24, N'''02''', N'Beja', N'''0205''', N'Beja')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (25, N'''02''', N'Beja', N'''0206''', N'Castro Verde')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (26, N'''02''', N'Beja', N'''0207''', N'Cuba')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (27, N'''02''', N'Beja', N'''0208''', N'Ferreira do Alentejo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (28, N'''02''', N'Beja', N'''0209''', N'Mértola')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (29, N'''02''', N'Beja', N'''0210''', N'Moura')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (30, N'''02''', N'Beja', N'''0211''', N'Odemira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (31, N'''02''', N'Beja', N'''0212''', N'Ourique')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (32, N'''02''', N'Beja', N'''0213''', N'Serpa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (33, N'''02''', N'Beja', N'''0214''', N'Vidigueira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (34, N'''03''', N'Braga', N'''0301''', N'Amares')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (35, N'''03''', N'Braga', N'''0302''', N'Barcelos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (36, N'''03''', N'Braga', N'''0303''', N'Braga')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (37, N'''03''', N'Braga', N'''0304''', N'Cabeceiras de Basto')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (38, N'''03''', N'Braga', N'''0305''', N'Celorico de Basto')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (39, N'''03''', N'Braga', N'''0306''', N'Esposende')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (40, N'''03''', N'Braga', N'''0307''', N'Fafe')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (41, N'''03''', N'Braga', N'''0308''', N'Guimarães')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (42, N'''03''', N'Braga', N'''0309''', N'Póvoa de Lanhoso')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (43, N'''03''', N'Braga', N'''0310''', N'Terras de Bouro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (44, N'''03''', N'Braga', N'''0311''', N'Vieira do Minho')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (45, N'''03''', N'Braga', N'''0312''', N'Vila Nova de Famalicão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (46, N'''03''', N'Braga', N'''0313''', N'Vila Verde')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (47, N'''03''', N'Braga', N'''0314''', N'Vizela')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (48, N'''04''', N'Bragança', N'''0401''', N'Alfândega da Fé')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (49, N'''04''', N'Bragança', N'''0402''', N'Bragança')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (50, N'''04''', N'Bragança', N'''0403''', N'Carrazeda de Ansiães')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (51, N'''04''', N'Bragança', N'''0404''', N'Freixo de Espada à Cinta')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (52, N'''04''', N'Bragança', N'''0405''', N'Macedo de Cavaleiros')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (53, N'''04''', N'Bragança', N'''0406''', N'Miranda do Douro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (54, N'''04''', N'Bragança', N'''0407''', N'Mirandela')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (55, N'''04''', N'Bragança', N'''0408''', N'Mogadouro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (56, N'''04''', N'Bragança', N'''0409''', N'Torre de Moncorvo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (57, N'''04''', N'Bragança', N'''0410''', N'Vila Flor')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (58, N'''04''', N'Bragança', N'''0411''', N'Vimioso')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (59, N'''04''', N'Bragança', N'''0412''', N'Vinhais')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (60, N'''05''', N'Castelo Branco', N'''0501''', N'Belmonte')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (61, N'''05''', N'Castelo Branco', N'''0502''', N'Castelo Branco')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (62, N'''05''', N'Castelo Branco', N'''0503''', N'Covilhã')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (63, N'''05''', N'Castelo Branco', N'''0504''', N'Fundão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (64, N'''05''', N'Castelo Branco', N'''0505''', N'Idanha-a-Nova')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (65, N'''05''', N'Castelo Branco', N'''0506''', N'Oleiros')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (66, N'''05''', N'Castelo Branco', N'''0507''', N'Penamacor')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (67, N'''05''', N'Castelo Branco', N'''0508''', N'Proença-a-Nova')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (68, N'''05''', N'Castelo Branco', N'''0509''', N'Sertã')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (69, N'''05''', N'Castelo Branco', N'''0510''', N'Vila de Rei')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (70, N'''05''', N'Castelo Branco', N'''0511''', N'Vila Velha de Ródão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (71, N'''06''', N'Coimbra', N'''0601''', N'Arganil')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (72, N'''06''', N'Coimbra', N'''0602''', N'Cantanhede')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (73, N'''06''', N'Coimbra', N'''0603''', N'Coimbra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (74, N'''06''', N'Coimbra', N'''0604''', N'Condeixa-a-Nova')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (75, N'''06''', N'Coimbra', N'''0605''', N'Figueira da Foz')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (76, N'''06''', N'Coimbra', N'''0606''', N'Góis')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (77, N'''06''', N'Coimbra', N'''0607''', N'Lousã')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (78, N'''06''', N'Coimbra', N'''0608''', N'Mira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (79, N'''06''', N'Coimbra', N'''0609''', N'Miranda do Corvo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (80, N'''06''', N'Coimbra', N'''0610''', N'Montemor-o-Velho')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (81, N'''06''', N'Coimbra', N'''0611''', N'Oliveira do Hospital')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (82, N'''06''', N'Coimbra', N'''0612''', N'Pampilhosa da Serra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (83, N'''06''', N'Coimbra', N'''0613''', N'Penacova')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (84, N'''06''', N'Coimbra', N'''0614''', N'Penela')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (85, N'''06''', N'Coimbra', N'''0615''', N'Soure')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (86, N'''06''', N'Coimbra', N'''0616''', N'Tábua')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (87, N'''06''', N'Coimbra', N'''0617''', N'Vila Nova de Poiares')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (88, N'''07''', N'Évora', N'''0701''', N'Alandroal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (89, N'''07''', N'Évora', N'''0702''', N'Arraiolos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (90, N'''07''', N'Évora', N'''0703''', N'Borba')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (91, N'''07''', N'Évora', N'''0704''', N'Estremoz')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (92, N'''07''', N'Évora', N'''0705''', N'Évora')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (93, N'''07''', N'Évora', N'''0706''', N'Montemor-o-Novo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (94, N'''07''', N'Évora', N'''0707''', N'Mora')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (95, N'''07''', N'Évora', N'''0708''', N'Mourão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (96, N'''07''', N'Évora', N'''0709''', N'Portel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (97, N'''07''', N'Évora', N'''0710''', N'Redondo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (98, N'''07''', N'Évora', N'''0711''', N'Reguengos de Monsaraz')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (99, N'''07''', N'Évora', N'''0712''', N'Vendas Novas')
GO
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (100, N'''07''', N'Évora', N'''0713''', N'Viana do Alentejo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (101, N'''07''', N'Évora', N'''0714''', N'Vila Viçosa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (102, N'''08''', N'Faro', N'''0801''', N'Albufeira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (103, N'''08''', N'Faro', N'''0802''', N'Alcoutim')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (104, N'''08''', N'Faro', N'''0803''', N'Aljezur')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (105, N'''08''', N'Faro', N'''0804''', N'Castro Marim')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (106, N'''08''', N'Faro', N'''0805''', N'Faro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (107, N'''08''', N'Faro', N'''0806''', N'Lagoa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (108, N'''08''', N'Faro', N'''0807''', N'Lagos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (109, N'''08''', N'Faro', N'''0808''', N'Loulé')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (110, N'''08''', N'Faro', N'''0809''', N'Monchique')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (111, N'''08''', N'Faro', N'''0810''', N'Olhão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (112, N'''08''', N'Faro', N'''0811''', N'Portimão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (113, N'''08''', N'Faro', N'''0812''', N'São Brás de Alportel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (114, N'''08''', N'Faro', N'''0813''', N'Silves')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (115, N'''08''', N'Faro', N'''0814''', N'Tavira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (116, N'''08''', N'Faro', N'''0815''', N'Vila do Bispo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (117, N'''08''', N'Faro', N'''0816''', N'Vila Real de Santo António')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (118, N'''09''', N'Guarda', N'''0901''', N'Aguiar da Beira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (119, N'''09''', N'Guarda', N'''0902''', N'Almeida')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (120, N'''09''', N'Guarda', N'''0903''', N'Celorico da Beira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (121, N'''09''', N'Guarda', N'''0904''', N'Figueira de Castelo Rodrigo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (122, N'''09''', N'Guarda', N'''0905''', N'Fornos de Algodres')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (123, N'''09''', N'Guarda', N'''0906''', N'Gouveia')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (124, N'''09''', N'Guarda', N'''0907''', N'Guarda')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (125, N'''09''', N'Guarda', N'''0908''', N'Manteigas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (126, N'''09''', N'Guarda', N'''0909''', N'Mêda')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (127, N'''09''', N'Guarda', N'''0910''', N'Pinhel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (128, N'''09''', N'Guarda', N'''0911''', N'Sabugal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (129, N'''09''', N'Guarda', N'''0912''', N'Seia')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (130, N'''09''', N'Guarda', N'''0913''', N'Trancoso')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (131, N'''09''', N'Guarda', N'''0914''', N'Vila Nova de Foz Côa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (132, N'''10''', N'Leiria', N'''1001''', N'Alcobaça')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (133, N'''10''', N'Leiria', N'''1002''', N'Alvaiázere')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (134, N'''10''', N'Leiria', N'''1003''', N'Ansião')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (135, N'''10''', N'Leiria', N'''1004''', N'Batalha')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (136, N'''10''', N'Leiria', N'''1005''', N'Bombarral')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (137, N'''10''', N'Leiria', N'''1006''', N'Caldas da Rainha')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (138, N'''10''', N'Leiria', N'''1007''', N'Castanheira de Pêra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (139, N'''10''', N'Leiria', N'''1008''', N'Figueiró dos Vinhos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (140, N'''10''', N'Leiria', N'''1009''', N'Leiria')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (141, N'''10''', N'Leiria', N'''1010''', N'Marinha Grande')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (142, N'''10''', N'Leiria', N'''1011''', N'Nazaré')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (143, N'''10''', N'Leiria', N'''1012''', N'Óbidos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (144, N'''10''', N'Leiria', N'''1013''', N'Pedrógão Grande')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (145, N'''10''', N'Leiria', N'''1014''', N'Peniche')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (146, N'''10''', N'Leiria', N'''1015''', N'Pombal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (147, N'''10''', N'Leiria', N'''1016''', N'Porto de Mós')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (148, N'''11''', N'Lisboa', N'''1101''', N'Alenquer')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (149, N'''11''', N'Lisboa', N'''1102''', N'Arruda dos Vinhos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (150, N'''11''', N'Lisboa', N'''1103''', N'Azambuja')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (151, N'''11''', N'Lisboa', N'''1104''', N'Cadaval')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (152, N'''11''', N'Lisboa', N'''1105''', N'Cascais')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (153, N'''11''', N'Lisboa', N'''1106''', N'Lisboa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (154, N'''11''', N'Lisboa', N'''1107''', N'Loures')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (155, N'''11''', N'Lisboa', N'''1108''', N'Lourinhã')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (156, N'''11''', N'Lisboa', N'''1109''', N'Mafra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (157, N'''11''', N'Lisboa', N'''1110''', N'Oeiras')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (158, N'''11''', N'Lisboa', N'''1111''', N'Sintra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (159, N'''11''', N'Lisboa', N'''1112''', N'Sobral de Monte Agraço')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (160, N'''11''', N'Lisboa', N'''1113''', N'Torres Vedras')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (161, N'''11''', N'Lisboa', N'''1114''', N'Vila Franca de Xira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (162, N'''11''', N'Lisboa', N'''1115''', N'Amadora')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (163, N'''11''', N'Lisboa', N'''1116''', N'Odivelas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (164, N'''12''', N'Portalegre', N'''1201''', N'Alter do Chão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (165, N'''12''', N'Portalegre', N'''1202''', N'Arronches')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (166, N'''12''', N'Portalegre', N'''1203''', N'Avis')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (167, N'''12''', N'Portalegre', N'''1204''', N'Campo Maior')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (168, N'''12''', N'Portalegre', N'''1205''', N'Castelo de Vide')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (169, N'''12''', N'Portalegre', N'''1206''', N'Crato')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (170, N'''12''', N'Portalegre', N'''1207''', N'Elvas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (171, N'''12''', N'Portalegre', N'''1208''', N'Fronteira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (172, N'''12''', N'Portalegre', N'''1209''', N'Gavião')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (173, N'''12''', N'Portalegre', N'''1210''', N'Marvão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (174, N'''12''', N'Portalegre', N'''1211''', N'Monforte')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (175, N'''12''', N'Portalegre', N'''1212''', N'Nisa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (176, N'''12''', N'Portalegre', N'''1213''', N'Ponte de Sor')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (177, N'''12''', N'Portalegre', N'''1214''', N'Portalegre')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (178, N'''12''', N'Portalegre', N'''1215''', N'Sousel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (179, N'''13''', N'Porto', N'''1301''', N'Amarante')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (180, N'''13''', N'Porto', N'''1302''', N'Baião')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (181, N'''13''', N'Porto', N'''1303''', N'Felgueiras')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (182, N'''13''', N'Porto', N'''1304''', N'Gondomar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (183, N'''13''', N'Porto', N'''1305''', N'Lousada')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (184, N'''13''', N'Porto', N'''1306''', N'Maia')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (185, N'''13''', N'Porto', N'''1307''', N'Marco de Canaveses')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (186, N'''13''', N'Porto', N'''1308''', N'Matosinhos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (187, N'''13''', N'Porto', N'''1309''', N'Paços de Ferreira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (188, N'''13''', N'Porto', N'''1310''', N'Paredes')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (189, N'''13''', N'Porto', N'''1311''', N'Penafiel')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (190, N'''13''', N'Porto', N'''1312''', N'Porto')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (191, N'''13''', N'Porto', N'''1313''', N'Póvoa de Varzim')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (192, N'''13''', N'Porto', N'''1314''', N'Santo Tirso')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (193, N'''13''', N'Porto', N'''1315''', N'Valongo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (194, N'''13''', N'Porto', N'''1316''', N'Vila do Conde')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (195, N'''13''', N'Porto', N'''1317''', N'Vila Nova de Gaia')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (196, N'''13''', N'Porto', N'''1318''', N'Trofa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (197, N'''14''', N'Santarém', N'''1401''', N'Abrantes')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (198, N'''14''', N'Santarém', N'''1402''', N'Alcanena')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (199, N'''14''', N'Santarém', N'''1403''', N'Almeirim')
GO
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (200, N'''14''', N'Santarém', N'''1404''', N'Alpiarça')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (201, N'''14''', N'Santarém', N'''1405''', N'Benavente')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (202, N'''14''', N'Santarém', N'''1406''', N'Cartaxo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (203, N'''14''', N'Santarém', N'''1407''', N'Chamusca')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (204, N'''14''', N'Santarém', N'''1408''', N'Constância')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (205, N'''14''', N'Santarém', N'''1409''', N'Coruche')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (206, N'''14''', N'Santarém', N'''1410''', N'Entroncamento')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (207, N'''14''', N'Santarém', N'''1411''', N'Ferreira do Zêzere')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (208, N'''14''', N'Santarém', N'''1412''', N'Golegã')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (209, N'''14''', N'Santarém', N'''1413''', N'Mação')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (210, N'''14''', N'Santarém', N'''1414''', N'Rio Maior')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (211, N'''14''', N'Santarém', N'''1415''', N'Salvaterra de Magos')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (212, N'''14''', N'Santarém', N'''1416''', N'Santarém')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (213, N'''14''', N'Santarém', N'''1417''', N'Sardoal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (214, N'''14''', N'Santarém', N'''1418''', N'Tomar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (215, N'''14''', N'Santarém', N'''1419''', N'Torres Novas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (216, N'''14''', N'Santarém', N'''1420''', N'Vila Nova da Barquinha')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (217, N'''14''', N'Santarém', N'''1421''', N'Ourém')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (218, N'''15''', N'Setúbal', N'''1501''', N'Alcácer do Sal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (219, N'''15''', N'Setúbal', N'''1502''', N'Alcochete')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (220, N'''15''', N'Setúbal', N'''1503''', N'Almada')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (221, N'''15''', N'Setúbal', N'''1504''', N'Barreiro')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (222, N'''15''', N'Setúbal', N'''1505''', N'Grândola')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (223, N'''15''', N'Setúbal', N'''1506''', N'Moita')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (224, N'''15''', N'Setúbal', N'''1507''', N'Montijo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (225, N'''15''', N'Setúbal', N'''1508''', N'Palmela')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (226, N'''15''', N'Setúbal', N'''1509''', N'Santiago do Cacém')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (227, N'''15''', N'Setúbal', N'''1510''', N'Seixal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (228, N'''15''', N'Setúbal', N'''1511''', N'Sesimbra')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (229, N'''15''', N'Setúbal', N'''1512''', N'Setúbal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (230, N'''15''', N'Setúbal', N'''1513''', N'Sines')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (231, N'''16''', N'Viana do Castelo', N'''1601''', N'Arcos de Valdevez')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (232, N'''16''', N'Viana do Castelo', N'''1602''', N'Caminha')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (233, N'''16''', N'Viana do Castelo', N'''1603''', N'Melgaço')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (234, N'''16''', N'Viana do Castelo', N'''1604''', N'Monção')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (235, N'''16''', N'Viana do Castelo', N'''1605''', N'Paredes de Coura')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (236, N'''16''', N'Viana do Castelo', N'''1606''', N'Ponte da Barca')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (237, N'''16''', N'Viana do Castelo', N'''1607''', N'Ponte de Lima')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (238, N'''16''', N'Viana do Castelo', N'''1608''', N'Valença')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (239, N'''16''', N'Viana do Castelo', N'''1609''', N'Viana do Castelo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (240, N'''16''', N'Viana do Castelo', N'''1610''', N'Vila Nova de Cerveira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (241, N'''17''', N'Vila Real', N'''1701''', N'Alijó')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (242, N'''17''', N'Vila Real', N'''1702''', N'Boticas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (243, N'''17''', N'Vila Real', N'''1703''', N'Chaves')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (244, N'''17''', N'Vila Real', N'''1704''', N'Mesão Frio')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (245, N'''17''', N'Vila Real', N'''1705''', N'Mondim de Basto')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (246, N'''17''', N'Vila Real', N'''1706''', N'Montalegre')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (247, N'''17''', N'Vila Real', N'''1707''', N'Murça')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (248, N'''17''', N'Vila Real', N'''1708''', N'Peso da Régua')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (249, N'''17''', N'Vila Real', N'''1709''', N'Ribeira de Pena')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (250, N'''17''', N'Vila Real', N'''1710''', N'Sabrosa')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (251, N'''17''', N'Vila Real', N'''1711''', N'Santa Marta de Penaguião')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (252, N'''17''', N'Vila Real', N'''1712''', N'Valpaços')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (253, N'''17''', N'Vila Real', N'''1713''', N'Vila Pouca de Aguiar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (254, N'''17''', N'Vila Real', N'''1714''', N'Vila Real')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (255, N'''18''', N'Viseu', N'''1801''', N'Armamar')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (256, N'''18''', N'Viseu', N'''1802''', N'Carregal do Sal')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (257, N'''18''', N'Viseu', N'''1803''', N'Castro Daire')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (258, N'''18''', N'Viseu', N'''1804''', N'Cinfães')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (259, N'''18''', N'Viseu', N'''1805''', N'Lamego')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (260, N'''18''', N'Viseu', N'''1806''', N'Mangualde')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (261, N'''18''', N'Viseu', N'''1807''', N'Moimenta da Beira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (262, N'''18''', N'Viseu', N'''1808''', N'Mortágua')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (263, N'''18''', N'Viseu', N'''1809''', N'Nelas')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (264, N'''18''', N'Viseu', N'''1810''', N'Oliveira de Frades')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (265, N'''18''', N'Viseu', N'''1811''', N'Penalva do Castelo')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (266, N'''18''', N'Viseu', N'''1812''', N'Penedono')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (267, N'''18''', N'Viseu', N'''1813''', N'Resende')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (268, N'''18''', N'Viseu', N'''1814''', N'Santa Comba Dão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (269, N'''18''', N'Viseu', N'''1815''', N'São João da Pesqueira')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (270, N'''18''', N'Viseu', N'''1816''', N'São Pedro do Sul')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (271, N'''18''', N'Viseu', N'''1817''', N'Sátão')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (272, N'''18''', N'Viseu', N'''1818''', N'Sernancelhe')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (273, N'''18''', N'Viseu', N'''1819''', N'Tabuaço')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (274, N'''18''', N'Viseu', N'''1820''', N'Tarouca')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (275, N'''18''', N'Viseu', N'''1821''', N'Tondela')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (276, N'''18''', N'Viseu', N'''1822''', N'Vila Nova de Paiva')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (277, N'''18''', N'Viseu', N'''1823''', N'Viseu')
INSERT [dbo].[DistritosConcelhos] ([Id], [CodigoDistrito], [DesignacaoDistrito], [CodigoConcelho], [DesignacaoConcelho]) VALUES (278, N'''18''', N'Viseu', N'''1824''', N'Vouzela')
SET IDENTITY_INSERT [dbo].[DistritosConcelhos] OFF
GO
SET IDENTITY_INSERT [dbo].[DocumentTypeCategories] ON 

INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (1, N'Imóveis                                           ')
INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (2, N'Fracões                                           ')
INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (3, N'Inquilinos                                        ')
INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (4, N'Contratos                                         ')
INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (5, N'Pagamentos                                        ')
INSERT [dbo].[DocumentTypeCategories] ([Id], [Descricao]) VALUES (6, N'Outros                                            ')
SET IDENTITY_INSERT [dbo].[DocumentTypeCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[DocumentTypes] ON 

INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (1, N'Fotografias digitais', NULL, N'1', CAST(N'2023-01-31T12:23:48.560' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (2, N'Imagens de papel digitalizadas', NULL, N'1', CAST(N'2023-01-31T12:25:40.370' AS DateTime), NULL, NULL, 2)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (3, N'Contratos de gestão de projetos', NULL, N'1', CAST(N'2023-01-31T12:25:53.343' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (4, N'Contratos imobiliários', NULL, N'1', CAST(N'2023-01-31T12:26:35.873' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (5, N'Registos de pagamento', NULL, N'1', CAST(N'2023-01-31T12:27:16.897' AS DateTime), NULL, NULL, 5)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (6, N'Arquivos de locatário
', NULL, N'1', CAST(N'2023-01-31T12:28:45.223' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (7, N'Estatutos', NULL, N'1', CAST(N'2023-01-31T12:29:28.400' AS DateTime), NULL, NULL, 6)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (8, N'Regras e regulamentações', NULL, N'1', CAST(N'2023-01-31T12:29:46.337' AS DateTime), NULL, NULL, 6)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (9, N'Pedidos de manutenção', NULL, N'1', CAST(N'2023-01-31T12:30:03.217' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (10, N'Convénios', NULL, N'1', CAST(N'2023-01-31T12:30:36.567' AS DateTime), NULL, NULL, 6)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (11, N'Arquivos do proprietário', NULL, N'1', CAST(N'2023-01-31T12:31:06.950' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (12, N'Livros-razão', NULL, N'1', CAST(N'2023-01-31T12:31:31.680' AS DateTime), NULL, NULL, 5)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (13, N'Faturas e Recibos', NULL, N'1', CAST(N'2023-01-31T12:31:49.393' AS DateTime), NULL, NULL, 5)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (14, N'Relatórios de inspeção', NULL, N'1', CAST(N'2023-01-31T12:32:13.740' AS DateTime), NULL, NULL, 1)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (15, N'Contrato de arrendamento', NULL, N'1', CAST(N'2023-01-31T12:33:12.150' AS DateTime), NULL, NULL, 4)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (16, N'Carta de atualização de renda', NULL, N'1', CAST(N'2023-04-21T00:00:00.000' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (17, N'Carta de revogação', NULL, N'1', CAST(N'2023-04-21T00:00:00.000' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (18, N'Carta de atraso no pagamento da renda', NULL, N'1', CAST(N'2023-04-21T20:34:37.277' AS DateTime), NULL, NULL, 3)
INSERT [dbo].[DocumentTypes] ([Id], [Name], [Description], [CreatedBy], [CreatedOn], [LastModifiedBy], [LastModifiedOn], [TypeCategoryId]) VALUES (19, N'Cadernetas prediais', NULL, N'1', CAST(N'2024-01-07T15:12:19.267' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[DocumentTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoCivil] ON 

INSERT [dbo].[EstadoCivil] ([Id], [Descricao]) VALUES (2, N'Casado')
INSERT [dbo].[EstadoCivil] ([Id], [Descricao]) VALUES (3, N'Divorciado')
INSERT [dbo].[EstadoCivil] ([Id], [Descricao]) VALUES (5, N'Separado')
INSERT [dbo].[EstadoCivil] ([Id], [Descricao]) VALUES (1, N'Solteiro')
INSERT [dbo].[EstadoCivil] ([Id], [Descricao]) VALUES (4, N'Viúvo')
SET IDENTITY_INSERT [dbo].[EstadoCivil] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoConservacao] ON 

INSERT [dbo].[EstadoConservacao] ([Id], [Descricao]) VALUES (7, N'A necessitar de obras')
INSERT [dbo].[EstadoConservacao] ([Id], [Descricao]) VALUES (1, N'Bom')
INSERT [dbo].[EstadoConservacao] ([Id], [Descricao]) VALUES (3, N'Degradado')
INSERT [dbo].[EstadoConservacao] ([Id], [Descricao]) VALUES (12, N'Muito Bom')
SET IDENTITY_INSERT [dbo].[EstadoConservacao] OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoPagamentoRenda] ON 

INSERT [dbo].[EstadoPagamentoRenda] ([Id], [Descricao]) VALUES (1, N'Pago')
INSERT [dbo].[EstadoPagamentoRenda] ([Id], [Descricao]) VALUES (2, N'Pago parcialmente')
INSERT [dbo].[EstadoPagamentoRenda] ([Id], [Descricao]) VALUES (3, N'Em dívida')
SET IDENTITY_INSERT [dbo].[EstadoPagamentoRenda] OFF
GO
SET IDENTITY_INSERT [dbo].[FormaPagamento] ON 

INSERT [dbo].[FormaPagamento] ([Id], [Descricao]) VALUES (1, N'Dinheiro')
INSERT [dbo].[FormaPagamento] ([Id], [Descricao]) VALUES (2, N'Transferência bancária')
INSERT [dbo].[FormaPagamento] ([Id], [Descricao]) VALUES (3, N'Cheque')
INSERT [dbo].[FormaPagamento] ([Id], [Descricao]) VALUES (4, N'Visa')
INSERT [dbo].[FormaPagamento] ([Id], [Descricao]) VALUES (5, N'Outro')
SET IDENTITY_INSERT [dbo].[FormaPagamento] OFF
GO
SET IDENTITY_INSERT [dbo].[SituacaoFracao] ON 

INSERT [dbo].[SituacaoFracao] ([Id], [Descricao]) VALUES (1, N'Alugada')
INSERT [dbo].[SituacaoFracao] ([Id], [Descricao]) VALUES (5, N'Em contencioso')
INSERT [dbo].[SituacaoFracao] ([Id], [Descricao]) VALUES (2, N'Livre')
INSERT [dbo].[SituacaoFracao] ([Id], [Descricao]) VALUES (3, N'Reservada')
INSERT [dbo].[SituacaoFracao] ([Id], [Descricao]) VALUES (4, N'Vendida')
SET IDENTITY_INSERT [dbo].[SituacaoFracao] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCertificadoEnergetico] ON 

INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (1, N'A+ (0% a 25%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (2, N'A (26% a 50%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (3, N'B (51% a 75%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (4, N'B- (76% a 100%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (5, N'C (101% a 150%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (6, N'D (151% a 200%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (7, N'E (201% a 250%)')
INSERT [dbo].[TipoCertificadoEnergetico] ([Id], [Descricao]) VALUES (8, N'F (mais de 251%)')
SET IDENTITY_INSERT [dbo].[TipoCertificadoEnergetico] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoContacto] ON 

INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (1, N'Pinturas', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (2, N'Limpeza', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (3, N'Mediador imobiliário', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (4, N'Advogado', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (5, N'Reparações comuns', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (6, N'Úteis', N'')
INSERT [dbo].[TipoContacto] ([Id], [Descricao], [Notas]) VALUES (13, N'Outro', N'')
SET IDENTITY_INSERT [dbo].[TipoContacto] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDespesa] ON 

INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (1, N'Eletricidade', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (2, N'Limpeza da escada', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (3, N'IMI', 1)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (4, N'IRS', 1)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (5, N'Água', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (6, N'Condomínio', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (7, N'Consumíveis', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (8, N'Obras em Imóvel', 2)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (22, N'Benfeitorias em Fração', 3)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (23, N'Imposto de Selo', 1)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (36, N'Advogados', 7)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (37, N'Custas de processos', 7)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (38, N'Seguros', 4)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (39, N'Pedido de documentos - atraso no pagamento - pagamento de multa', 7)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (40, N'Pagamento de avença - Condomínio da JJM', 6)
INSERT [dbo].[TipoDespesa] ([Id], [Descricao], [Id_CategoriaDespesa]) VALUES (41, N'Avenças - gestão de condomínios', 4)
SET IDENTITY_INSERT [dbo].[TipoDespesa] OFF
GO
SET IDENTITY_INSERT [dbo].[TipologiaFracao] ON 

INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (1, N'T0')
INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (2, N'T1')
INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (3, N'T2')
INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (4, N'T3')
INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (5, N'T4')
INSERT [dbo].[TipologiaFracao] ([Id], [Descricao]) VALUES (6, N'T5')
SET IDENTITY_INSERT [dbo].[TipologiaFracao] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPropriedade] ON 

INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (1, N'Apartamento')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (11, N'Armazém')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (2, N'Escritório')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (3, N'Escritório')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (8, N'Moradia')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (6, N'Other')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (7, N'Quinta')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (4, N'Terreno')
INSERT [dbo].[TipoPropriedade] ([Id], [Descricao]) VALUES (5, N'Villa')
SET IDENTITY_INSERT [dbo].[TipoPropriedade] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoRecebimento] ON 

INSERT [dbo].[TipoRecebimento] ([Id], [Descricao]) VALUES (12, N'Acerto de renda')
INSERT [dbo].[TipoRecebimento] ([Id], [Descricao]) VALUES (14, N'Caução')
INSERT [dbo].[TipoRecebimento] ([Id], [Descricao]) VALUES (11, N'Pagamento de renda')
INSERT [dbo].[TipoRecebimento] ([Id], [Descricao]) VALUES (1, N'Pagamento parcial')
INSERT [dbo].[TipoRecebimento] ([Id], [Descricao]) VALUES (4, N'Renda em atraso')
SET IDENTITY_INSERT [dbo].[TipoRecebimento] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__EstadoCo__008BA9EF8E35619D]    Script Date: 23/01/2024 10:44:02 ******/
ALTER TABLE [dbo].[EstadoConservacao] ADD UNIQUE NONCLUSTERED 
(
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TipoCont__008BA9EF92983270]    Script Date: 23/01/2024 10:44:02 ******/
ALTER TABLE [dbo].[TipoContacto] ADD UNIQUE NONCLUSTERED 
(
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tipologi__008BA9EFD9EA73B7]    Script Date: 23/01/2024 10:44:02 ******/
ALTER TABLE [dbo].[TipologiaFracao] ADD UNIQUE NONCLUSTERED 
(
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Concelhos] ADD  CONSTRAINT [DF_Concelhos_Coeficiente]  DEFAULT ((0.033)) FOR [Coeficiente]
GO
ALTER TABLE [dbo].[DocumentTypes] ADD  CONSTRAINT [DF_DocumentTypes_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[DocumentTypes] ADD  CONSTRAINT [DF_DocumentTypes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Concelhos]  WITH CHECK ADD  CONSTRAINT [FK_Concelhos_Concelhos] FOREIGN KEY([Id])
REFERENCES [dbo].[Concelhos] ([Id])
GO
ALTER TABLE [dbo].[Concelhos] CHECK CONSTRAINT [FK_Concelhos_Concelhos]
GO
