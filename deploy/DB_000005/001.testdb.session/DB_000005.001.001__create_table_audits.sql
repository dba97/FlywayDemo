
/****** Object:  Table [dbo].[est_restricted_official]    Script Date: 01/31/2017 12:51:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[est_restricted_official](
	[estimate_id] [int] NOT NULL,
	[activation_dt] [datetime] NOT NULL,
	[ibes_tkr] [char](6) NOT NULL,
	[measure] [char](6) NOT NULL,
	[periodicity] [char](3) NOT NULL,
	[prd_yr] [smallint] NOT NULL,
	[prd_mon] [tinyint] NOT NULL,
	[estimator] [char](8) NOT NULL,
	[val] [float] NOT NULL,
	[pd_flg] [char](1) NOT NULL,
	[ex_item_flg] [char](1) NOT NULL,
	[currency] [char](3) NOT NULL,
	[buy_side_flg] [char](1) NOT NULL,
	[non_std_prd_flg] [char](1) NOT NULL,
	[est_ela_flg] [char](1) NOT NULL,
	[announce_dt] [datetime] NOT NULL,
	[confirm_dt] [datetime] NOT NULL,
	[footnote_flg] [char](1) NOT NULL,
	[local_activation_dt] [datetime] NOT NULL,
	[server_path] [char](32) NOT NULL,
 CONSTRAINT [est_restricted_official_index2] PRIMARY KEY NONCLUSTERED 
(
	[estimate_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Index [est_restricted_official_index]    Script Date: 01/31/2017 12:51:46 ******/
CREATE UNIQUE CLUSTERED INDEX [est_restricted_official_index] ON [dbo].[est_restricted_official] 
(
	[ibes_tkr] ASC,
	[measure] ASC,
	[periodicity] ASC,
	[prd_yr] ASC,
	[prd_mon] ASC,
	[estimator] ASC,
	[activation_dt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_index3]    Script Date: 01/31/2017 12:51:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_index3] ON [dbo].[est_restricted_official] 
(
	[estimator] ASC,
	[ibes_tkr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_index4]    Script Date: 01/31/2017 12:51:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_index4] ON [dbo].[est_restricted_official] 
(
	[activation_dt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_index5]    Script Date: 01/31/2017 12:51:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_index5] ON [dbo].[est_restricted_official] 
(
	[local_activation_dt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_index6]    Script Date: 01/31/2017 12:51:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_index6] ON [dbo].[est_restricted_official] 
(
	[confirm_dt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[est_restricted_official_a]    Script Date: 01/31/2017 12:53:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[est_restricted_official_a](
	[estimate_id] [int] NOT NULL,
	[activation_dt] [datetime] NOT NULL,
	[ibes_tkr] [char](6) NOT NULL,
	[measure] [char](6) NOT NULL,
	[periodicity] [char](3) NOT NULL,
	[prd_yr] [smallint] NOT NULL,
	[prd_mon] [tinyint] NOT NULL,
	[estimator] [char](8) NOT NULL,
	[val] [float] NOT NULL,
	[pd_flg] [char](1) NOT NULL,
	[ex_item_flg] [char](1) NOT NULL,
	[currency] [char](3) NOT NULL,
	[buy_side_flg] [char](1) NOT NULL,
	[non_std_prd_flg] [char](1) NOT NULL,
	[est_ela_flg] [char](1) NOT NULL,
	[announce_dt] [datetime] NOT NULL,
	[confirm_dt] [datetime] NOT NULL,
	[footnote_flg] [char](1) NOT NULL,
	[local_activation_dt] [datetime] NOT NULL,
	[server_path] [char](32) NOT NULL,
	[audit_user] [char](30) NOT NULL,
	[audit_time] [datetime] NOT NULL,
	[audit_action] [char](1) NOT NULL,
	[local_audit_time] [datetime] NOT NULL,
	[audit_server_path] [char](32) NOT NULL,
 CONSTRAINT [est_restricted_official_a_index] PRIMARY KEY CLUSTERED 
(
	[audit_time] ASC,
	[audit_action] ASC,
	[audit_user] ASC,
	[estimate_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



/****** Object:  Index [est_restricted_official_a_index_tred_1]    Script Date: 01/31/2017 12:53:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_a_index_tred_1] ON [dbo].[est_restricted_official_a] 
(
	[ibes_tkr] ASC,
	[measure] ASC,
	[periodicity] ASC,
	[prd_yr] ASC,
	[prd_mon] ASC,
	[estimator] ASC,
	[audit_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_a_index2]    Script Date: 01/31/2017 12:53:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_a_index2] ON [dbo].[est_restricted_official_a] 
(
	[local_audit_time] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO



/****** Object:  Index [est_restricted_official_a_index3]    Script Date: 01/31/2017 12:53:46 ******/
CREATE NONCLUSTERED INDEX [est_restricted_official_a_index3] ON [dbo].[est_restricted_official_a] 
(
	[estimate_id] ASC
)
INCLUDE ( [audit_time]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
GO



