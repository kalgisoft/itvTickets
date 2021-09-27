﻿CREATE TABLE [dbo].[DeviceInfo]
(
	[Code] NVARCHAR(10) NOT NULL PRIMARY KEY, 
    [TipoMacchina] NVARCHAR(50) NULL, 
    [SensoDiMarcia] NVARCHAR(50) NULL, 
    [Matricola] NVARCHAR(50) NULL, 
    [Cliente] NVARCHAR(50) NULL, 
    [CommessaNr] NVARCHAR(50) NULL, 
    [DataCollaudo] DATETIME NULL, 
    [DataConsegna] DATETIME NULL, 
    [CompilatoDa] NVARCHAR(50) NULL, 
    [Data] DATETIME NULL, 
    [TipoPC] NVARCHAR(50) NULL, 
    [HardDisk] NVARCHAR(50) NULL, 
    [RAM] NVARCHAR(50) NULL, 
    [Grabber] NVARCHAR(50) NULL, 
    [NumLed] INT NULL, 
    [TipoLedD] NVARCHAR(50) NULL, 
    [TipoLedN] NVARCHAR(50) NULL, 
    [DistanzaIlluminatore] INT NULL, 
    [Note1] NVARCHAR(256) NULL, 
    [RealizzatoDa] NVARCHAR(50) NULL, 
    [Data1] DATETIME NULL, 
    [QuadroRealDa] NVARCHAR(50) NULL, 
    [NumSchemaEl] INT NULL, 
    [installRealDa] NVARCHAR(50) NULL, 
    [GruppoCont] NVARCHAR(50) NULL, 
    [CollaudoRealDa] NVARCHAR(50) NULL, 
    [Condizionatore] NVARCHAR(50) NULL, 
    [Note2] NVARCHAR(256) NULL, 
    [VerSWTilevision] NVARCHAR(50) NULL, 
    [VerSWCalibroPlanar] NVARCHAR(50) NULL, 
    [NumSensPlanar] INT NULL, 
    [TipoSens] NVARCHAR(50) NULL, 
    [NoteAggiuntive] NVARCHAR(50) NULL, 
    [NomePC] NVARCHAR(50) NULL, 
    [TipoCinghia] NVARCHAR(50) NULL, 
    [LargCinghia] NVARCHAR(50) NULL, 
    [TipoMotori] NVARCHAR(50) NULL, 
    [TipoRiduttori] NVARCHAR(50) NULL, 
    [TipoMarcatura] NVARCHAR(50) NULL, 
    [Centratore] NVARCHAR(50) NULL, 
    [MotoreMovTraverse] NVARCHAR(50) NULL, 
    [TipoEncoder] NVARCHAR(50) NULL, 
    [TipoAzionamenti] NVARCHAR(50) NULL, 
    [MassimoFormato] INT NULL, 
    [MinimoFormato] INT NULL, 
    [TipoMotoriTLC] NVARCHAR(50) NULL, 
    [AltezzaTlcN] INT NULL, 
    [TipoTlcN] NVARCHAR(50) NULL, 
    [TipoTlcD] NVARCHAR(50) NULL, 
    [TipoObjN] NVARCHAR(50) NULL, 
    [TipoObjD] NVARCHAR(50) NULL, 
    [AperturaObjN] NVARCHAR(50) NULL, 
    [AperturaObjD] NVARCHAR(50) NULL, 
    [Note3] NVARCHAR(256) NULL, 
    [MontaggioDa] NVARCHAR(50) NULL, 
    [Data2] DATETIME NULL
)
