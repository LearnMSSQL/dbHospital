CREATE TABLE [MEDICO].[MEDICO_ESPECIALIDAD]
(
[CODMED] [int] NOT NULL,
[CODESP] [int] NOT NULL,
[DESCESP] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [MEDICO].[MEDICO_ESPECIALIDAD] ADD CONSTRAINT [PK_CODMED_CCODESP] PRIMARY KEY CLUSTERED  ([CODMED], [CODESP]) ON [PRIMARY]
GO
ALTER TABLE [MEDICO].[MEDICO_ESPECIALIDAD] ADD CONSTRAINT [FK_MEDICO_ESPECIALIDAD_ESPECIALIDAD] FOREIGN KEY ([CODESP]) REFERENCES [MEDICO].[ESPECIALIDAD] ([CODESP])
GO
ALTER TABLE [MEDICO].[MEDICO_ESPECIALIDAD] ADD CONSTRAINT [FK_MEDICO_ESPECIALIDAD_MEDICO] FOREIGN KEY ([CODMED]) REFERENCES [MEDICO].[MEDICO] ([CODMED])
GO
