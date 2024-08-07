USE [PropertyManagerDB]
GO
/****** Object:  View [dbo].[vwArrendamentos]    Script Date: 23/01/2024 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwArrendamentos]
AS
SELECT        Ar.Id, Ar.Valor_Renda, Ar.Data_Inicio, Ar.Data_Fim, Ar.Data_Pagamento, Ar.EstadoPagamento, Ar.RenovacaoAutomatica, Fr.Descricao AS Fracao, Inq.Nome AS NomeInquilino, Im.Descricao AS DescricaoImovel, 
                         Im.Numero AS Porta
FROM            dbo.Arrendamentos AS Ar INNER JOIN
                         dbo.Inquilinos AS Inq ON Ar.ID_Inquilino = Inq.Id INNER JOIN
                         dbo.Fracoes AS Fr ON Ar.ID_Fracao = Fr.Id INNER JOIN
                         dbo.Imoveis AS Im ON Fr.Id_Imovel = Im.Id
GO
/****** Object:  View [dbo].[vwFracoes]    Script Date: 23/01/2024 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwFracoes] AS 
SELECT F.Id, F.Descricao, I.Numero, I.Descricao AS DescrImovel,
F.Andar, F.Lado, F.Situacao AS CodSituacao, F.AnoUltAvaliacao AS AnoA, 
F.ValorUltAvaliacao AS ValorA, TF.Descricao Tipologia, SF.Descricao AS Situacao, 
EC.Descricao AS Conservacao, TP.Descricao AS TipoFracao 
FROM Fracoes F INNER JOIN Imoveis I ON F.Id_Imovel = I.Id 
INNER JOIN EstadoConservacao EC ON F.Conservacao = EC.Id INNER JOIN TipoPropriedade TP ON F.ID_TipoPropriedade = TP.Id 
INNER JOIN SituacaoFracao SF ON F.Situacao = SF.Id INNER JOIN TipologiaFracao TF ON F.Tipologia = TF.Id
GO
/****** Object:  View [dbo].[vwFracoesComArrendamentos]    Script Date: 23/01/2024 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwFracoesComArrendamentos] AS 
SELECT f.* FROM Fracoes f INNER JOIN Arrendamento a ON f.Id = a.ID_Fracao 
GO
/****** Object:  View [dbo].[vwHelp]    Script Date: 23/01/2024 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwHelp] AS SELECT H.Id, H.NomeForm, H.Descricao AS TextoAjuda, H.Titulo AS TituloProjeto, HP.Id AS Id_Projeto, HP.NomeProjeto, HP.Descricao AS DescricaoProjeto 
FROM HelpIndex H INNER JOIN HelpIndex_Parent HP ON H.ID_Parent = HP.Id
GO
/****** Object:  View [dbo].[vwRecebimentos]    Script Date: 23/01/2024 10:44:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwRecebimentos] AS 
SELECT R.ID, R.DataMovimento, R.ID_TipoRecebimento, R.ValorRecebido, F.Descricao AS Fracao,  
TR.Descricao AS TipoTransacao, Ar.Data_Pagamento, Ar.Valor_Renda, Ar.RenovacaoAutomatica, 
Inq.Id Inq_Id, Inq.Nome 
FROM Recebimentos R INNER JOIN fracoes F ON 
	R.ID_Propriedade = F.Id 
	INNER JOIN TipoRecebimento TR ON R.ID_TipoRecebimento = TR.Id 
	INNER JOIN Arrendamento Ar ON R.ID_Propriedade = Ar.ID_Fracao 
	INNER JOIN Inquilinos Inq ON R.ID_Inquilino = Inq.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Inq"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 423
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Fr"
            Begin Extent = 
               Top = 72
               Left = 38
               Bottom = 202
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Im"
            Begin Extent = 
               Top = 204
               Left = 38
               Bottom = 334
               Right = 288
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ar"
            Begin Extent = 
               Top = 6
               Left = 461
               Bottom = 136
               Right = 670
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwArrendamentos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwArrendamentos'
GO
