SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwAgendaMedico]
AS
SELECT        TOP (100) PERCENT MEDICO.MEDICO.APEMATMED AS LastName, MEDICO.MEDICO.APEPATMED AS FirstName, MEDICO.MEDICO.NOMMED AS Name, MEDICO.ESPECIALIDAD.NOMESP AS Specialty, 
                         MEDICO.MEDICO.DNIMED AS DNI, MEDICO.MEDICO.TELEFMED AS Telephone, MEDICO.MEDICO.EMAILMED AS Email
FROM            MEDICO.ESPECIALIDAD INNER JOIN
                         MEDICO.MEDICO_ESPECIALIDAD ON MEDICO.ESPECIALIDAD.CODESP = MEDICO.MEDICO_ESPECIALIDAD.CODESP INNER JOIN
                         MEDICO.MEDICO ON MEDICO.MEDICO_ESPECIALIDAD.CODMED = MEDICO.MEDICO.CODMED
ORDER BY LastName
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[30] 2[16] 3) )"
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
         Begin Table = "ESPECIALIDAD (MEDICO)"
            Begin Extent = 
               Top = 95
               Left = 581
               Bottom = 208
               Right = 751
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MEDICO (MEDICO)"
            Begin Extent = 
               Top = 18
               Left = 62
               Bottom = 252
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MEDICO_ESPECIALIDAD (MEDICO)"
            Begin Extent = 
               Top = 14
               Left = 326
               Bottom = 127
               Right = 496
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
         Alias = 1095
         Table = 2325
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwAgendaMedico', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwAgendaMedico', NULL, NULL
GO
