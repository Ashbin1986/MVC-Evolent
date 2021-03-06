CREATE  [HealthCare]
USE [HealthCare]
GO
/****** Object:  Table [dbo].[PatientContacts]    Script Date: 07/23/2018 23:17:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PatientContacts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PatientContacts](
	[ContactID] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](20) NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PatientContacts] ([ContactID], [FirstName], [LastName], [Email], [PhoneNumber], [Status], [CreatedDate], [UpdatedDate]) VALUES (N'3c1b8100-a8e5-471c-b10a-9321272526b8', N'Ashbin', N'Singh', N'ak.ezshield.com', N'18783244892         ', 1, CAST(0x0000A92501813590 AS DateTime), NULL)
INSERT [dbo].[PatientContacts] ([ContactID], [FirstName], [LastName], [Email], [PhoneNumber], [Status], [CreatedDate], [UpdatedDate]) VALUES (N'54762e8a-f260-49bb-b80e-cd676f203904', N'Ashvin', N'Kumar', N'ashbin.kumar@gmail.com', N'16238127            ', 1, CAST(0x0000A92601725420 AS DateTime), NULL)
INSERT [dbo].[PatientContacts] ([ContactID], [FirstName], [LastName], [Email], [PhoneNumber], [Status], [CreatedDate], [UpdatedDate]) VALUES (N'fed50bed-4463-464d-91d0-89e962e76995', N'Surbhi', N'Kumari', N'surubhi@gmail.com', N'566789              ', 1, CAST(0x0000A9250181F99B AS DateTime), NULL)
/****** Object:  Default [DF_Contact_CreatedDate]    Script Date: 07/23/2018 23:17:04 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Contact_CreatedDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[PatientContacts]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Contact_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PatientContacts] ADD  CONSTRAINT [DF_Contact_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END


End
GO
