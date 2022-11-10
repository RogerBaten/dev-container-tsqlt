CREATE TABLE [dbo].[Director]
(
    [Id]            INT         NOT NULL IDENTITY   CONSTRAINT Director_PK PRIMARY KEY CLUSTERED
,   [Name]          VARCHAR(50) NOT NULL            CONSTRAINT Director_Name_UIX UNIQUE
,   [DateAdded]     DATETIME    NOT NULL            CONSTRAINT Director_DateAdded_DF DEFAULT (GETDATE())
,   [DateModified]  DATETIME        NULL
);
