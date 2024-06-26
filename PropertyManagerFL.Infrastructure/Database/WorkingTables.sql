USE [PropertyManagerDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](256) NOT NULL,
	[Location] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](512) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[IsAllDay] [bit] NULL,
	[CategoryColor] [nvarchar](50) NOT NULL,
	[RecurrenceRule] [nvarchar](512) NOT NULL,
	[RecurrenceID] [int] NULL,
	[FollowingID] [int] NULL,
	[RecurrenceException] [nvarchar](1024) NOT NULL,
	[StartTimezone] [nvarchar](128) NOT NULL,
	[EndTimezone] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arrendamentos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arrendamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Inicio] [datetime] NOT NULL,
	[Data_Fim] [datetime] NOT NULL,
	[Data_Saida] [datetime] NULL,
	[Data_Pagamento] [datetime] NULL,
	[SaldoInicial] [decimal](10, 2) NULL,
	[Fiador] [bit] NOT NULL,
	[Prazo_Meses] [int] NOT NULL,
	[Prazo] [int] NOT NULL,
	[Valor_Renda] [decimal](10, 2) NOT NULL,
	[Caucao] [bit] NOT NULL,
	[Doc_IRS] [bit] NOT NULL,
	[Doc_Vencimento] [bit] NOT NULL,
	[Notas] [text] NULL,
	[ID_Fracao] [int] NOT NULL,
	[ID_Inquilino] [int] NOT NULL,
	[ID_Fiador] [int] NOT NULL,
	[ContratoEmitido] [bit] NOT NULL,
	[DocumentoGerado] [varchar](255) NULL,
	[EnvioCartaAtualizacaoRenda] [bit] NULL,
	[DataEnvioCartaAtualizacao] [datetime] NULL,
	[DocumentoAtualizacaoGerado] [varchar](255) NULL,
	[EnvioCartaRevogacao] [bit] NULL,
	[DataEnvioCartaRevogacao] [datetime] NULL,
	[DocumentoRevogacaoGerado] [varchar](255) NULL,
	[RespostaCartaRevogacao] [bit] NULL,
	[DataRespostaCartaRevogacao] [datetime] NULL,
	[EnvioCartaAtrasoRenda] [bit] NULL,
	[DocumentoAtrasoRendaGerado] [nvarchar](255) NULL,
	[DataEnvioCartaAtrasoRenda] [datetime] NULL,
	[RespostaCartaAtrasoRenda] [bit] NULL,
	[DataRespostaCartaAtrasoRenda] [datetime] NULL,
	[FormaPagamento] [int] NOT NULL,
	[Ativo] [bit] NOT NULL,
	[LeiVigente] [nvarchar](100) NOT NULL,
	[ArrendamentoNovo] [bit] NOT NULL,
	[EstadoPagamento] [varchar](50) NOT NULL,
	[RenovacaoAutomatica] [bit] NOT NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Arrendamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [text] NULL,
	[ClaimValue] [text] NULL,
	[RoleId] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](250) NOT NULL,
	[ConcurrencyStamp] [text] NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [text] NULL,
	[ClaimValue] [text] NULL,
	[UserId] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](250) NOT NULL,
	[ProviderKey] [nvarchar](250) NOT NULL,
	[ProviderDisplayName] [text] NULL,
	[UserId] [nvarchar](250) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](250) NOT NULL,
	[RoleId] [nvarchar](250) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](250) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](250) NOT NULL,
	[LoginProvider] [nvarchar](250) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Value] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audit_26_Jan_2023]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audit_26_Jan_2023](
	[AuditId] [bigint] IDENTITY(1,1) NOT NULL,
	[Area] [varchar](50) NULL,
	[ControllerName] [varchar](50) NULL,
	[ActionName] [varchar](50) NULL,
	[LoginStatus] [varchar](1) NULL,
	[LoggedInAt] [varchar](23) NULL,
	[LoggedOutAt] [varchar](23) NULL,
	[PageAccessed] [varchar](500) NULL,
	[IPAddress] [varchar](50) NULL,
	[SessionID] [varchar](50) NULL,
	[UserID] [varchar](50) NULL,
	[RoleId] [varchar](2) NULL,
	[LangId] [varchar](2) NULL,
	[IsFirstLogin] [varchar](2) NULL,
	[CurrentDatetime] [varchar](23) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTrails]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableName] [nvarchar](max) NULL,
	[DateTime] [datetime2](7) NOT NULL,
	[OldValues] [nvarchar](max) NULL,
	[NewValues] [nvarchar](max) NULL,
	[AffectedColumns] [nvarchar](max) NULL,
	[PrimaryKey] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditTrails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CC_Inquilinos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CC_Inquilinos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMovimento] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[ValorPago] [decimal](10, 2) NOT NULL,
	[ValorEmDivida] [decimal](10, 0) NOT NULL,
	[IdInquilino] [int] NOT NULL,
	[Renda] [bit] NOT NULL,
	[ID_TipoRecebimento] [int] NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Notas] [varchar](512) NULL,
 CONSTRAINT [PK_CC_Inquilinos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatHistory]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FromUserId] [nvarchar](450) NULL,
	[ToUserId] [nvarchar](450) NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ChatHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](70) NOT NULL,
	[Morada] [varchar](70) NULL,
	[Localidade] [varchar](50) NULL,
	[Contacto] [varchar](50) NOT NULL,
	[eMail] [varchar](128) NULL,
	[Notas] [text] NULL,
	[ID_TipoContacto] [int] NOT NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataCelebracao] [datetime] NOT NULL,
	[Data_Inicio] [datetime] NOT NULL,
	[Fiador] [bit] NOT NULL,
	[Prazo_Meses] [int] NOT NULL,
	[Valor_Renda] [decimal](10, 2) NOT NULL,
	[Doc_IRS] [bit] NOT NULL,
	[Doc_Vencimento] [bit] NOT NULL,
	[Notas] [text] NULL,
	[ID_Fracao] [int] NOT NULL,
	[ID_Inquilino] [int] NOT NULL,
	[ID_Fiador] [int] NOT NULL,
	[Caucao] [bit] NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Contratos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Despesas]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despesas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMovimento] [datetime] NOT NULL,
	[Valor_Pago] [decimal](10, 2) NOT NULL,
	[ID_TipoDespesa] [int] NOT NULL,
	[ID_CategoriaDespesa] [int] NOT NULL,
	[ID_ModoPagamento] [int] NOT NULL,
	[Notas] [text] NULL,
	[NumeroDocumento] [nvarchar](50) NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Despesas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentExtendedAttributes]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentExtendedAttributes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModifiedOn] [datetime2](7) NULL,
	[EntityId] [int] NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Key] [nvarchar](max) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[Decimal] [decimal](18, 2) NULL,
	[DateTime] [datetime2](7) NULL,
	[Json] [nvarchar](max) NULL,
	[ExternalId] [nvarchar](max) NULL,
	[Group] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentExtendedAttributes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentosInquilino]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentosInquilino](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NOT NULL,
	[DocumentType] [int] NULL,
	[DocumentPath] [varchar](256) NOT NULL,
	[Descricao] [varchar](512) NULL,
	[CreationDate] [datetime] NULL,
	[ReferralDate] [datetime] NULL,
	[StorageType] [char](1) NULL,
	[StorageFolder] [varchar](50) NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_DocumentosInquilino] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](512) NULL,
	[IsPublic] [bit] NOT NULL,
	[URL] [nvarchar](256) NULL,
	[DocumentTypeId] [int] NOT NULL,
	[DocumentCategoryId] [int] NULL,
	[LocalUpload] [bit] NOT NULL,
	[CreatedBy] [nvarchar](70) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedBy] [nvarchar](70) NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiadores]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiadores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdInquilino] [int] NOT NULL,
	[Ativo] [bit] NULL,
	[Nome] [varchar](60) NOT NULL,
	[Morada] [varchar](60) NOT NULL,
	[Identificacao] [varchar](20) NOT NULL,
	[ValidadeCC] [datetime] NOT NULL,
	[NIF] [varchar](9) NOT NULL,
	[ID_EstadoCivil] [int] NULL,
	[Contacto1] [varchar](20) NOT NULL,
	[Contacto2] [varchar](20) NULL,
	[eMail] [varchar](128) NULL,
	[IRSAnual] [decimal](10, 2) NOT NULL,
	[Vencimento] [decimal](10, 2) NOT NULL,
	[Notas] [text] NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Fiadores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fracoes]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fracoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ativa] [bit] NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[AreaBrutaPrivativa] [float] NOT NULL,
	[AreaBrutaDependente] [float] NOT NULL,
	[CasasBanho] [int] NOT NULL,
	[GasCanalizado] [bit] NULL,
	[CozinhaEquipada] [bit] NULL,
	[Varanda] [bit] NULL,
	[Garagem] [bit] NULL,
	[Terraco] [bit] NULL,
	[Arrecadacao] [bit] NULL,
	[LugarEstacionamento] [bit] NULL,
	[Fotos] [bit] NULL,
	[Notas] [text] NULL,
	[Tipologia] [int] NOT NULL,
	[LicencaHabitacao] [varchar](30) NOT NULL,
	[DataEmissaoLicencaHabitacao] [datetime] NULL,
	[ID_CertificadoEnergetico] [int] NOT NULL,
	[Matriz] [varchar](50) NOT NULL,
	[Letra] [varchar](2) NULL,
	[Andar] [varchar](20) NOT NULL,
	[Lado] [varchar](20) NOT NULL,
	[AnoUltAvaliacao] [varchar](4) NOT NULL,
	[ValorUltAvaliacao] [decimal](12, 2) NOT NULL,
	[ID_TipoPropriedade] [int] NOT NULL,
	[Id_Imovel] [int] NOT NULL,
	[Situacao] [int] NOT NULL,
	[Conservacao] [int] NOT NULL,
	[ValorRenda] [decimal](12, 2) NOT NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Fracoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelpIndex]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeForm] [nvarchar](50) NOT NULL,
	[Titulo] [varchar](128) NULL,
	[Descricao] [text] NULL,
	[Pagina] [smallint] NULL,
	[ID_Parent] [int] NULL,
 CONSTRAINT [PK_HelpIndex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HelpIndex_Parent]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HelpIndex_Parent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeProjeto] [varchar](50) NOT NULL,
	[NomeExe] [varchar](255) NULL,
	[NomeWord] [varchar](255) NULL,
	[NomePdf] [varchar](255) NULL,
	[Descricao] [text] NULL,
	[dCriacao] [datetime] NOT NULL,
 CONSTRAINT [PK__HelpInde__06A79189EF15DD88] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoAtualizacaoRendas]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoAtualizacaoRendas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitId] [int] NOT NULL,
	[DateProcessed] [datetime] NOT NULL,
	[PriorValue] [decimal](12, 2) NOT NULL,
	[UpdatedValue] [decimal](12, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagensFracoes]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagensFracoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Fracao] [int] NOT NULL,
	[Foto] [varchar](256) NOT NULL,
	[Descricao] [varchar](128) NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_ImagensFracoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imoveis]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imoveis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[Numero] [varchar](4) NOT NULL,
	[Morada] [varchar](60) NOT NULL,
	[CodPst] [varchar](4) NULL,
	[CodPstEx] [varchar](3) NULL,
	[AnoConstrucao] [varchar](4) NOT NULL,
	[Freguesia] [varchar](30) NOT NULL,
	[Concelho] [varchar](40) NOT NULL,
	[Elevador] [bit] NULL,
	[Notas] [text] NULL,
	[Foto] [varchar](256) NULL,
	[Conservacao] [int] NOT NULL,
	[DataUltimaInspecaoGas] [datetime] NOT NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Imoveis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquilinos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquilinos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ativo] [bit] NULL,
	[Nome] [varchar](60) NOT NULL,
	[Morada] [varchar](60) NOT NULL,
	[Naturalidade] [varchar](50) NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
	[ID_EstadoCivil] [int] NULL,
	[Identificacao] [varchar](20) NOT NULL,
	[ValidadeCC] [datetime] NOT NULL,
	[NIF] [varchar](9) NOT NULL,
	[Contacto1] [varchar](20) NOT NULL,
	[Contacto2] [varchar](20) NULL,
	[eMail] [varchar](128) NULL,
	[IRSAnual] [decimal](10, 2) NOT NULL,
	[Vencimento] [decimal](10, 2) NOT NULL,
	[SaldoCorrente] [decimal](10, 2) NOT NULL,
	[Notas] [text] NULL,
	[Titular] [bit] NOT NULL,
	[VerCol] [timestamp] NOT NULL,
 CONSTRAINT [PK_Inquilinos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IrsRendas]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IrsRendas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [int] NOT NULL,
 CONSTRAINT [PK_IrsRendas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IrsRendas_Percentagens]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IrsRendas_Percentagens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Escalao_1] [float] NOT NULL,
	[Descricao_1] [varchar](30) NOT NULL,
	[Escalao_2] [float] NULL,
	[Descricao_2] [varchar](30) NULL,
	[Escalao_3] [float] NULL,
	[Descricao_3] [varchar](30) NULL,
	[Escalao_4] [float] NULL,
	[Descricao_4] [varchar](30) NULL,
	[Escalao_5] [float] NULL,
	[Descricao_5] [varchar](30) NULL,
 CONSTRAINT [PK_IrsRendas_Percentagens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mediadores]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mediadores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NOT NULL,
	[Morada] [nvarchar](255) NULL,
	[Localidade] [nvarchar](255) NULL,
	[Contacto1] [nvarchar](255) NOT NULL,
	[Contacto2] [nvarchar](255) NULL,
	[Comissao_Venda] [float] NULL,
	[DataContacto] [datetime] NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_Mediadores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [int] IDENTITY(1,1) NOT NULL,
	[DestinationEmail] [nvarchar](128) NOT NULL,
	[SenderEmail] [nvarchar](128) NOT NULL,
	[SubjectTitle] [nvarchar](200) NOT NULL,
	[MessageContent] [nvarchar](1024) NOT NULL,
	[MessageSentOn] [date] NULL,
	[MessageReceivedOn] [date] NULL,
	[MessageType] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
	[ReferenceId] [varchar](50) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PMLogs]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PMLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](256) NULL,
	[MessageTemplate] [nvarchar](128) NULL,
	[Level] [nvarchar](256) NULL,
	[TimeStamp] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [text] NULL,
 CONSTRAINT [PK_PMLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopulacaoResidenteFreguesia$]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulacaoResidenteFreguesia$](
	[Distrito (DT)] [nvarchar](255) NULL,
	[Designação DT] [nvarchar](255) NULL,
	[Concelho (CC)] [nvarchar](255) NULL,
	[Designação CC] [nvarchar](255) NULL,
	[Freguesia (FR)] [nvarchar](255) NULL,
	[Designação FR] [nvarchar](255) NULL,
	[PopRes_2011 (nº)] [float] NULL,
	[Rural] [nvarchar](255) NULL,
	[Litorâneo] [nvarchar](255) NULL,
	[F10] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopulacaoResidenteFreguesia$_FilterDatabase]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopulacaoResidenteFreguesia$_FilterDatabase](
	[Distrito (DT)] [nvarchar](255) NULL,
	[Designação DT] [nvarchar](255) NULL,
	[Concelho (CC)] [nvarchar](255) NULL,
	[Designação CC] [nvarchar](255) NULL,
	[Freguesia (FR)] [nvarchar](255) NULL,
	[Designação FR] [nvarchar](255) NULL,
	[PopRes_2011 (nº)] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessamentoAtualizacaoRendas]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessamentoAtualizacaoRendas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [int] NOT NULL,
	[DataProcessamento] [datetime] NOT NULL,
 CONSTRAINT [PK_ProcessamentoAtalizacaoRendas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessamentoRendas]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessamentoRendas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mes] [int] NULL,
	[Ano] [int] NULL,
	[DataProcessamento] [datetime] NULL,
	[TotalRecebido] [decimal](12, 2) NULL,
 CONSTRAINT [PK_ProcessamentoRendas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proprietarios]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proprietarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[Morada] [varchar](60) NOT NULL,
	[Naturalidade] [varchar](50) NOT NULL,
	[ID_EstadoCivil] [int] NULL,
	[DataNascimento] [datetime] NOT NULL,
	[Identificacao] [varchar](20) NOT NULL,
	[ValidadeCC] [datetime] NOT NULL,
	[NIF] [varchar](9) NOT NULL,
	[Contacto] [varchar](20) NOT NULL,
	[eMail] [varchar](128) NULL,
	[Notas] [text] NULL,
	[VerCol] [timestamp] NOT NULL,
	[CodPostal] [varchar](50) NULL,
 CONSTRAINT [PK_Proprietarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recebimentos]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recebimentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMovimento] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[ID_Propriedade] [int] NOT NULL,
	[ID_TipoRecebimento] [int] NOT NULL,
	[ID_Inquilino] [int] NOT NULL,
	[GeradoPeloPrograma] [bit] NULL,
	[Renda] [bit] NOT NULL,
	[ValorPrevisto] [decimal](10, 2) NOT NULL,
	[ValorEmFalta] [decimal](10, 2) NOT NULL,
	[ValorRecebido] [decimal](10, 2) NOT NULL,
	[Notas] [varchar](512) NULL,
	[VerCol] [timestamp] NULL,
 CONSTRAINT [PK_Recebimentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecebimentosTemp]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecebimentosTemp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMovimento] [datetime] NOT NULL,
	[Estado] [int] NOT NULL,
	[ID_Propriedade] [int] NOT NULL,
	[ID_TipoRecebimento] [int] NOT NULL,
	[ID_Inquilino] [int] NOT NULL,
	[GeradoPeloPrograma] [bit] NULL,
	[RendaAtualizada] [bit] NULL,
	[Renda] [bit] NOT NULL,
	[ValorPrevisto] [decimal](10, 2) NOT NULL,
	[ValorEmFalta] [decimal](10, 2) NOT NULL,
	[ValorRecebido] [decimal](10, 2) NOT NULL,
	[Notas] [varchar](512) NULL,
	[VerCol] [timestamp] NULL,
 CONSTRAINT [PK_recebimentostemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](255) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogLogins]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogLogins](
	[UserId] [nchar](450) NOT NULL,
	[SessionId] [nvarchar](250) NOT NULL,
	[LoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblLogLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogOperacoes]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogOperacoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tabela] [nvarchar](255) NOT NULL,
	[IdReg] [int] NOT NULL,
	[QuemCriou] [nvarchar](450) NULL,
	[DataCriacao] [datetime] NULL,
	[QuemModificou] [nvarchar](450) NULL,
	[DataUltimaAlteracao] [datetime] NULL,
	[QuemApagou] [nvarchar](450) NULL,
	[DataAnulacao] [datetime] NULL,
 CONSTRAINT [tblLogOperacoes$PrimaryKey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Templates]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Templates](
	[Id] [int] NOT NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Info]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Info](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[User_Name] [nvarchar](50) NULL,
	[Pwd] [nvarchar](50) NULL,
	[First_Name] [nvarchar](50) NULL,
	[EMail] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Last_Login_Date] [datetime] NULL,
	[Password_Change_Date] [datetime] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_User_Info] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [varchar](60) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizadores]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizadores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Utilizadores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Identity].[RoleClaims]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Group] [nvarchar](max) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[Roles]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserClaims]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserLogins]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserRoles]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Identity].[Users]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ProfilePictureDataUrl] [text] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[LastModifiedOn] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpiryTime] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Identity].[UserTokens]    Script Date: 23/01/2024 10:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Identity].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_Caucao]  DEFAULT ((1)) FOR [Caucao]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_ContratoEmitido]  DEFAULT ((0)) FOR [ContratoEmitido]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_Ativo]  DEFAULT ((1)) FOR [Ativo]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_ArrendamentoNovo]  DEFAULT ((0)) FOR [ArrendamentoNovo]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_EstadoPagamento]  DEFAULT ('Pendente') FOR [EstadoPagamento]
GO
ALTER TABLE [dbo].[Arrendamentos] ADD  CONSTRAINT [DF_Arrendamento_RenovacaoAutomatica]  DEFAULT ((1)) FOR [RenovacaoAutomatica]
GO
ALTER TABLE [dbo].[CC_Inquilinos] ADD  CONSTRAINT [DF_CC_Inquilinos_Renda]  DEFAULT ((0)) FOR [Renda]
GO
ALTER TABLE [dbo].[Contratos] ADD  CONSTRAINT [DF__Contratos__Cauca__412EB0B6]  DEFAULT ((1)) FOR [Caucao]
GO
ALTER TABLE [dbo].[DocumentosInquilino] ADD  CONSTRAINT [DF_DocumentosInquilino_UploadDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF__Documents__Docum__7A672E12]  DEFAULT ((0)) FOR [DocumentTypeId]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_LocalUpload]  DEFAULT ((1)) FOR [LocalUpload]
GO
ALTER TABLE [dbo].[Fiadores] ADD  CONSTRAINT [DF__Fiador__Ident__44FF419A]  DEFAULT ((0)) FOR [Identificacao]
GO
ALTER TABLE [dbo].[Fiadores] ADD  CONSTRAINT [DF__Fiadores__NIF__440B1D61]  DEFAULT ((123456789)) FOR [NIF]
GO
ALTER TABLE [dbo].[Fiadores] ADD  CONSTRAINT [DF__Fiador__Conta__4316F928]  DEFAULT ((0)) FOR [Contacto2]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Ativa]  DEFAULT ((1)) FOR [Ativa]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_GasCanalizado]  DEFAULT ((0)) FOR [GasCanalizado]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_CozinhaEquipada]  DEFAULT ((0)) FOR [CozinhaEquipada]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Varanda]  DEFAULT ((0)) FOR [Varanda]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Garagem]  DEFAULT ((0)) FOR [Garagem]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Arrecadacao]  DEFAULT ((0)) FOR [Arrecadacao]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_LugarEstacionamento]  DEFAULT ((0)) FOR [LugarEstacionamento]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Fotos]  DEFAULT ((0)) FOR [Fotos]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_Tipologia]  DEFAULT ((1)) FOR [Tipologia]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_LicencaHabitacao]  DEFAULT ('') FOR [LicencaHabitacao]
GO
ALTER TABLE [dbo].[Fracoes] ADD  CONSTRAINT [DF_Fracoes_ValorRenda]  DEFAULT ((0)) FOR [ValorRenda]
GO
ALTER TABLE [dbo].[HelpIndex_Parent] ADD  DEFAULT (getdate()) FOR [dCriacao]
GO
ALTER TABLE [dbo].[Imoveis] ADD  CONSTRAINT [DF__Imoveis__Numero__3A81B327]  DEFAULT ('') FOR [Numero]
GO
ALTER TABLE [dbo].[Imoveis] ADD  CONSTRAINT [DF__Imoveis__Fregues__3B75D760]  DEFAULT ('') FOR [Freguesia]
GO
ALTER TABLE [dbo].[Imoveis] ADD  CONSTRAINT [DF__Imoveis__Concelh__3C69FB99]  DEFAULT ('') FOR [Concelho]
GO
ALTER TABLE [dbo].[Imoveis] ADD  CONSTRAINT [DF__Imoveis__Elevado__3D5E1FD2]  DEFAULT ((0)) FOR [Elevador]
GO
ALTER TABLE [dbo].[Imoveis] ADD  CONSTRAINT [DF__Imoveis__Conserv__3E52440B]  DEFAULT ((1)) FOR [Conservacao]
GO
ALTER TABLE [dbo].[Inquilinos] ADD  CONSTRAINT [DF__Inquilino__Ident__44FF419A]  DEFAULT ((43625894)) FOR [Identificacao]
GO
ALTER TABLE [dbo].[Inquilinos] ADD  CONSTRAINT [DF__Inquilinos__NIF__440B1D61]  DEFAULT ((122623878)) FOR [NIF]
GO
ALTER TABLE [dbo].[Inquilinos] ADD  CONSTRAINT [DF__Inquilino__Conta__4316F928]  DEFAULT ((0)) FOR [Contacto2]
GO
ALTER TABLE [dbo].[Inquilinos] ADD  CONSTRAINT [DF_Inquilinos_SaldoCorrente]  DEFAULT ((0)) FOR [SaldoCorrente]
GO
ALTER TABLE [dbo].[Inquilinos] ADD  CONSTRAINT [DF__Inquilino__Titul__45F365D3]  DEFAULT ((1)) FOR [Titular]
GO
ALTER TABLE [dbo].[Mediadores] ADD  DEFAULT (getdate()) FOR [DataContacto]
GO
ALTER TABLE [dbo].[ProcessamentoAtualizacaoRendas] ADD  CONSTRAINT [DF_ProcessamentoAtualizacaoRendas_DataProcessamento]  DEFAULT (getdate()) FOR [DataProcessamento]
GO
ALTER TABLE [dbo].[ProcessamentoRendas] ADD  CONSTRAINT [DF_ProcessamentoRendas_DataProcessamento]  DEFAULT (getdate()) FOR [DataProcessamento]
GO
ALTER TABLE [dbo].[Proprietarios] ADD  CONSTRAINT [DF__Proprieta__Ident__47DBAE45]  DEFAULT ((43625894)) FOR [Identificacao]
GO
ALTER TABLE [dbo].[Proprietarios] ADD  CONSTRAINT [DF__Proprietari__NIF__48CFD27E]  DEFAULT ((122623878)) FOR [NIF]
GO
ALTER TABLE [dbo].[Recebimentos] ADD  CONSTRAINT [DF_Recebimentos_Estado]  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[Recebimentos] ADD  CONSTRAINT [DF_Recebimentos_Renda]  DEFAULT ((1)) FOR [Renda]
GO
ALTER TABLE [Identity].[RoleClaims] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedOn]
GO
ALTER TABLE [Identity].[Roles] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Arrendamentos]  WITH CHECK ADD  CONSTRAINT [FK_Arrendamentos_Fracoes] FOREIGN KEY([ID_Fracao])
REFERENCES [dbo].[Fracoes] ([Id])
GO
ALTER TABLE [dbo].[Arrendamentos] CHECK CONSTRAINT [FK_Arrendamentos_Fracoes]
GO
ALTER TABLE [dbo].[Arrendamentos]  WITH CHECK ADD  CONSTRAINT [FK_Arrendamentos_Inquilinos] FOREIGN KEY([ID_Inquilino])
REFERENCES [dbo].[Inquilinos] ([Id])
GO
ALTER TABLE [dbo].[Arrendamentos] CHECK CONSTRAINT [FK_Arrendamentos_Inquilinos]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChatHistory]  WITH CHECK ADD  CONSTRAINT [FK_ChatHistory_Users_FromUserId] FOREIGN KEY([FromUserId])
REFERENCES [Identity].[Users] ([Id])
GO
ALTER TABLE [dbo].[ChatHistory] CHECK CONSTRAINT [FK_ChatHistory_Users_FromUserId]
GO
ALTER TABLE [dbo].[ChatHistory]  WITH CHECK ADD  CONSTRAINT [FK_ChatHistory_Users_ToUserId] FOREIGN KEY([ToUserId])
REFERENCES [Identity].[Users] ([Id])
GO
ALTER TABLE [dbo].[ChatHistory] CHECK CONSTRAINT [FK_ChatHistory_Users_ToUserId]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [FK_Contactos_TipoContacto] FOREIGN KEY([ID_TipoContacto])
REFERENCES [dbo].[TipoContacto] ([Id])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [FK_Contactos_TipoContacto]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Fiadores] FOREIGN KEY([ID_Fiador])
REFERENCES [dbo].[Fiadores] ([Id])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Fiadores]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Fracoes] FOREIGN KEY([ID_Fracao])
REFERENCES [dbo].[Fracoes] ([Id])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Fracoes]
GO
ALTER TABLE [dbo].[Contratos]  WITH CHECK ADD  CONSTRAINT [FK_Contratos_Inquilinos] FOREIGN KEY([ID_Inquilino])
REFERENCES [dbo].[Inquilinos] ([Id])
GO
ALTER TABLE [dbo].[Contratos] CHECK CONSTRAINT [FK_Contratos_Inquilinos]
GO
ALTER TABLE [dbo].[Despesas]  WITH CHECK ADD  CONSTRAINT [FK_Despesas_CategoriaDespesa] FOREIGN KEY([ID_CategoriaDespesa])
REFERENCES [dbo].[CategoriaDespesa] ([Id])
GO
ALTER TABLE [dbo].[Despesas] CHECK CONSTRAINT [FK_Despesas_CategoriaDespesa]
GO
ALTER TABLE [dbo].[Despesas]  WITH CHECK ADD  CONSTRAINT [FK_Despesas_FormaPagamento] FOREIGN KEY([ID_ModoPagamento])
REFERENCES [dbo].[FormaPagamento] ([Id])
GO
ALTER TABLE [dbo].[Despesas] CHECK CONSTRAINT [FK_Despesas_FormaPagamento]
GO
ALTER TABLE [dbo].[Despesas]  WITH CHECK ADD  CONSTRAINT [FK_Despesas_TipoDespesa] FOREIGN KEY([ID_TipoDespesa])
REFERENCES [dbo].[TipoDespesa] ([Id])
GO
ALTER TABLE [dbo].[Despesas] CHECK CONSTRAINT [FK_Despesas_TipoDespesa]
GO
ALTER TABLE [dbo].[DocumentExtendedAttributes]  WITH CHECK ADD  CONSTRAINT [FK_DocumentExtendedAttributes_Documents_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentExtendedAttributes] CHECK CONSTRAINT [FK_DocumentExtendedAttributes_Documents_EntityId]
GO
ALTER TABLE [dbo].[DocumentosInquilino]  WITH CHECK ADD  CONSTRAINT [FK_DocumentosInquilino_Inquilinos] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Inquilinos] ([Id])
GO
ALTER TABLE [dbo].[DocumentosInquilino] CHECK CONSTRAINT [FK_DocumentosInquilino_Inquilinos]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_DocumentTypes] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentTypes] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_DocumentTypes]
GO
ALTER TABLE [dbo].[Fiadores]  WITH CHECK ADD  CONSTRAINT [FK_Fiadores_EstadoCivil] FOREIGN KEY([ID_EstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id])
GO
ALTER TABLE [dbo].[Fiadores] CHECK CONSTRAINT [FK_Fiadores_EstadoCivil]
GO
ALTER TABLE [dbo].[Fiadores]  WITH CHECK ADD  CONSTRAINT [FK_Fiadores_Inquilinos] FOREIGN KEY([IdInquilino])
REFERENCES [dbo].[Inquilinos] ([Id])
GO
ALTER TABLE [dbo].[Fiadores] CHECK CONSTRAINT [FK_Fiadores_Inquilinos]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_EstadoConservacao] FOREIGN KEY([Conservacao])
REFERENCES [dbo].[EstadoConservacao] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_EstadoConservacao]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_Imoveis] FOREIGN KEY([Id_Imovel])
REFERENCES [dbo].[Imoveis] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_Imoveis]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_SituacaoFracao] FOREIGN KEY([Situacao])
REFERENCES [dbo].[SituacaoFracao] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_SituacaoFracao]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_TipoCertificadoEnergetico] FOREIGN KEY([ID_CertificadoEnergetico])
REFERENCES [dbo].[TipoCertificadoEnergetico] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_TipoCertificadoEnergetico]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_TipologiaFracao] FOREIGN KEY([Tipologia])
REFERENCES [dbo].[TipologiaFracao] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_TipologiaFracao]
GO
ALTER TABLE [dbo].[Fracoes]  WITH CHECK ADD  CONSTRAINT [FK_Fracoes_TipoPropriedade] FOREIGN KEY([ID_TipoPropriedade])
REFERENCES [dbo].[TipoPropriedade] ([Id])
GO
ALTER TABLE [dbo].[Fracoes] CHECK CONSTRAINT [FK_Fracoes_TipoPropriedade]
GO
ALTER TABLE [dbo].[HelpIndex]  WITH CHECK ADD  CONSTRAINT [FK_HelpIndex_HelpIndex_Parent] FOREIGN KEY([ID_Parent])
REFERENCES [dbo].[HelpIndex_Parent] ([Id])
GO
ALTER TABLE [dbo].[HelpIndex] CHECK CONSTRAINT [FK_HelpIndex_HelpIndex_Parent]
GO
ALTER TABLE [dbo].[ImagensFracoes]  WITH CHECK ADD  CONSTRAINT [FK_ImagensFracoes_Fracoes] FOREIGN KEY([Id_Fracao])
REFERENCES [dbo].[Fracoes] ([Id])
GO
ALTER TABLE [dbo].[ImagensFracoes] CHECK CONSTRAINT [FK_ImagensFracoes_Fracoes]
GO
ALTER TABLE [dbo].[Imoveis]  WITH CHECK ADD  CONSTRAINT [FK_Imoveis_EstadoConservacao] FOREIGN KEY([Conservacao])
REFERENCES [dbo].[EstadoConservacao] ([Id])
GO
ALTER TABLE [dbo].[Imoveis] CHECK CONSTRAINT [FK_Imoveis_EstadoConservacao]
GO
ALTER TABLE [dbo].[Inquilinos]  WITH CHECK ADD  CONSTRAINT [FK_Inquilinos_EstadoCivil] FOREIGN KEY([ID_EstadoCivil])
REFERENCES [dbo].[EstadoCivil] ([Id])
GO
ALTER TABLE [dbo].[Inquilinos] CHECK CONSTRAINT [FK_Inquilinos_EstadoCivil]
GO
ALTER TABLE [dbo].[Recebimentos]  WITH CHECK ADD  CONSTRAINT [FK_Recebimentos_Fracoes] FOREIGN KEY([ID_Propriedade])
REFERENCES [dbo].[Fracoes] ([Id])
GO
ALTER TABLE [dbo].[Recebimentos] CHECK CONSTRAINT [FK_Recebimentos_Fracoes]
GO
ALTER TABLE [dbo].[Recebimentos]  WITH CHECK ADD  CONSTRAINT [FK_Recebimentos_Inquilinos] FOREIGN KEY([ID_Inquilino])
REFERENCES [dbo].[Inquilinos] ([Id])
GO
ALTER TABLE [dbo].[Recebimentos] CHECK CONSTRAINT [FK_Recebimentos_Inquilinos]
GO
ALTER TABLE [Identity].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Identity].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [Identity].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [Identity].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [Identity].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Identity].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [Identity].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [Identity].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [Identity].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Identity].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID da fração' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Recebimentos', @level2type=N'COLUMN',@level2name=N'ID_Propriedade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[ID]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[Tabela]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'Tabela'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[IdReg]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'IdReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[QuemCriou]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'QuemCriou'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[DataCriacao]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'DataCriacao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[QuemModificou]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'QuemModificou'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[DataUltimaAlteracao]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'COLUMN',@level2name=N'DataUltimaAlteracao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes].[PrimaryKey]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes', @level2type=N'CONSTRAINT',@level2name=N'tblLogOperacoes$PrimaryKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'Clinica2007.[tblLogOperacoes]' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblLogOperacoes'
GO
