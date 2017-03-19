/****** Object:  Table [dbo].[trf_variance_check]    Script Date: 03/13/2017 02:40:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trf_variance_check]') AND type in (N'U'))
DROP TABLE [dbo].[trf_variance_check]
GO


/****** Object:  Table [dbo].[trf_variance_check]    Script Date: 03/13/2017 02:40:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[trf_variance_check](
	[measure] [char](6) NULL,
	[country_id] [char](2) NULL,
	[variance_percentage] [float] NULL,
	[add_dt] [datetime] NULL,
	[end_dt] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
