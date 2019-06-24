SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwAtencionPaciente]
AS
SELECT        PACIENTE.PACIENTE.NOMPAC, PACIENTE.PACIENTE.APEPATPAC, PACIENTE.PACIENTE.APEMATPAC, MEDICO.ESPECIALIDAD.NOMESP, MEDICO.MEDICO.NOMMED, MEDICO.MEDICO.APEPATMED, 
                         MEDICO.MEDICO.APEMATMED
FROM            MEDICO.ESPECIALIDAD INNER JOIN
                         MEDICO.MEDICO_ESPECIALIDAD ON MEDICO.ESPECIALIDAD.CODESP = MEDICO.MEDICO_ESPECIALIDAD.CODESP INNER JOIN
                         MEDICO.MEDICO ON MEDICO.MEDICO_ESPECIALIDAD.CODMED = MEDICO.MEDICO.CODMED INNER JOIN
                         PACIENTE.TURNO_PACIENTE ON MEDICO.MEDICO.CODMED = PACIENTE.TURNO_PACIENTE.CODMED AND MEDICO.MEDICO.CODMED = PACIENTE.TURNO_PACIENTE.CODMED INNER JOIN
                         PACIENTE.PACIENTE ON PACIENTE.TURNO_PACIENTE.CODPAC = PACIENTE.PACIENTE.CODPAC AND PACIENTE.TURNO_PACIENTE.CODPAC = PACIENTE.PACIENTE.CODPAC
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
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
         Begin Table = "ESPECIALIDAD (MEDICO)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MEDICO (MEDICO)"
            Begin Extent = 
               Top = 82
               Left = 222
               Bottom = 212
               Right = 392
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MEDICO_ESPECIALIDAD (MEDICO)"
            Begin Extent = 
               Top = 2
               Left = 454
               Bottom = 115
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PACIENTE (PACIENTE)"
            Begin Extent = 
               Top = 33
               Left = 746
               Bottom = 163
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TURNO_PACIENTE (PACIENTE)"
            Begin Extent = 
               Top = 120
               Left = 456
               Bottom = 233
               Right = 626
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
         ', 'SCHEMA', N'dbo', 'VIEW', N'vwAtencionPaciente', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vwAtencionPaciente', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vwAtencionPaciente', NULL, NULL
GO
