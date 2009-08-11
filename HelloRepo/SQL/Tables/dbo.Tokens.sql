CREATE TABLE [dbo].[Tokens]
(
[TokenID] [int] NOT NULL,
[CampaignID] [int] NOT NULL,
[Token] [varchar] (10) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tokens] ADD CONSTRAINT [PK_Tokens] PRIMARY KEY CLUSTERED  ([TokenID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tokens] ADD CONSTRAINT [FK_Tokens_Campaigns] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaigns] ([CampaignID])
GO