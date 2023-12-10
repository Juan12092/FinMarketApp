CREATE DATABASE FinMarketDB;
GO

USE [FinMarketDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BudgetGoals]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BudgetGoals](
	[BudgetGoalId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Target] [float] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_BudgetGoals] PRIMARY KEY CLUSTERED 
(
	[BudgetGoalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenses](
	[ExpenseId] [int] IDENTITY(1,1) NOT NULL,
	[GoalId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Amount] [float] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED 
(
	[ExpenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Keys]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keys](
	[Id] [nvarchar](450) NOT NULL,
	[Version] [int] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[Use] [nvarchar](450) NULL,
	[Algorithm] [nvarchar](100) NOT NULL,
	[IsX509Certificate] [bit] NOT NULL,
	[DataProtected] [bit] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Keys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 10/12/2023 8:45:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[SessionId] [nvarchar](100) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[ConsumedTime] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231209183830_YourMigrationName', N'7.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', N'john@gmail.com', N'JOHN@GMAIL.COM', N'john@gmail.com', N'JOHN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAECT0tDR1LFz2VyXng4m6zIrhfn5ewk9WMeglRKkki4SdjkA3od+XLX7Zes77fUxKmA==', N'K7LDRTBIMUCLJDQYTC5DKJSVT44VYKN5', N'529c0f44-1022-46c8-b455-80c89af65232', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', N'test@example.com', N'TEST@EXAMPLE.COM', N'test@example.com', N'TEST@EXAMPLE.COM', 1, N'AQAAAAIAAYagAAAAEHb5Xa5c17BS/gmd/KvlZPhaMdAEdlgS9Sw/sPO72K2j7OPJpaUVjlfrB4nLNPDnOA==', N'SZB7WQBV3H7JBMTVNDAQRVLMEZIOO4QH', N'9fd39452-2415-4596-9045-633fe2741e6b', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BudgetGoals] ON 

INSERT [dbo].[BudgetGoals] ([BudgetGoalId], [Name], [Target], [ApplicationUserId], [Date]) VALUES (1, N'First', 100, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T02:35:13.2510000' AS DateTime2))
INSERT [dbo].[BudgetGoals] ([BudgetGoalId], [Name], [Target], [ApplicationUserId], [Date]) VALUES (2, N'Test Budget', 10, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T03:17:20.6030000' AS DateTime2))
INSERT [dbo].[BudgetGoals] ([BudgetGoalId], [Name], [Target], [ApplicationUserId], [Date]) VALUES (3, N'Test', 600, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T15:36:57.3580000' AS DateTime2))
INSERT [dbo].[BudgetGoals] ([BudgetGoalId], [Name], [Target], [ApplicationUserId], [Date]) VALUES (4, N'New Budget', 1000, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:36:06.4870000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[BudgetGoals] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [ApplicationUserId]) VALUES (1, N'Transport', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ApplicationUserId]) VALUES (2, N'Food', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ApplicationUserId]) VALUES (3, N'Others', NULL)
INSERT [dbo].[Category] ([CategoryId], [Name], [ApplicationUserId]) VALUES (4, N'Beverage', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Expenses] ON 

INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (1, 1, N'Carrot', N'Food', 2, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T03:07:53.6800000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (2, 1, N'Grab', N'', 13.5, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T03:08:32.6300000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (3, 1, N'Grab', N'', 13.5, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T03:08:32.6300000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (4, 1, N'Grab', N'', 13, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T03:08:32.6300000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (5, 1, N'Netflix', N'Others', 25.5, N'3d4d846c-56e2-411f-b40b-5a5eea35f1fc', CAST(N'2023-12-10T03:10:16.1530000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (18, 2, N'potato', N'Food', 10, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T16:52:20.8930000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (19, 2, N'Netflix', N'Others', 20, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T16:58:52.3840000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (20, 2, N'Grab', N'Transport', 16, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T16:59:11.1720000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (22, 2, N'Pepsi', N'Beverage', 4, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:09:01.1870000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (23, 3, N'pepsi', N'Beverage', 400, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:09:42.6000000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (24, 3, N'Gojek', N'Transport', 30, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:09:52.1470000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (25, 3, N'Buffet', N'Beverage', 100, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:30:03.5250000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (27, 4, N'drink', N'Beverage', 5, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:36:50.4530000' AS DateTime2))
INSERT [dbo].[Expenses] ([ExpenseId], [GoalId], [Name], [Category], [Amount], [ApplicationUserId], [Date]) VALUES (28, 4, N'otak', N'Food', 190, N'd64029e8-ebf3-4d5c-8ce7-c2824e35db4f', CAST(N'2023-12-10T20:36:58.2020000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Expenses] OFF
GO
INSERT [dbo].[Keys] ([Id], [Version], [Created], [Use], [Algorithm], [IsX509Certificate], [DataProtected], [Data]) VALUES (N'E963120204653B8B4B26234F7D81B995', 1, CAST(N'2023-12-09T18:34:34.7423259' AS DateTime2), N'signing', N'RS256', 0, 1, N'CfDJ8Gqk_hJeqxFDjQqtWVXlq-MsaATR8lJP7w5w-mBU-V2YWJK_r2w2iRR2MojwabGd7MI9KpHCsEtZ9gXWAFU2Rd4oHNpfHZgk3Rs4uU6FKvlu-guSdbG08IgDyn5wOKbHAFyB3BPcKd899iX8qgw3i4GOp7qZYcnNP_IRynhAGBuDjvtjaAbo2SZ3uKe63xMKKJ4bCMsqmLTKwHx7nKmGtVk7FxzHARP3nXgRcDndkAQoleK4L-s08f_Lv294yeSyD9PFcF1jcIECdiMcrxA600zkBw7EF2WAlb62e5r3o37zUAHFC5qpq3GXW83kOuIcc4jo1v3P98V2ACQHVrZR669gSemvQQ33KlL9AnqcFX1TqYa2PbP_3d1gdi9_U0yjTQ5ZB84Bm6RZ6ea3uq8EXasr82YjYgI4SOgLc2XExorX-0MfottSJfvl9WcO43HEiFOzkwWE2ItjrgsLDkwyoAQ2kb3UkFeWmWrKWdIXM9Jqz9KUBFlHdqQcKfbTa9v3vNTNPGuJPwsh-W6jnODJKudoe1Hk4x2N5FbweQobh1t1XU2jUONs7KWYNmfRE9YeBNdQE39nVXVyntElcZ2IpyFWWmyd1fDRuQC0vhTCSP8epiWviUal_67jjhrL2orl0o-mycagZPGsKnl1j-RGxEGILUThYHq4S8vDRQk1X8oeFMOO5cUf07QytJahNq01ujlFwdYW0NKyC2y3GgJomBfhc7801oLm-s6SmL-UbP2b9e9GnvXkFejmPveejXb4-RxowV67et9V9fOH_RGYcwRD_pLJZnxybVFtrb0SHTGVqIYvbu8QXcyLskkJa-h2yZ8X_w0A5nOlnvSgOTNDVwAafuOhcUnocZJRIRLIbH9dh1LEoXB-CWUDfTKlS2LHz3tA4v-KuQKaDGqwjpXYax7pWmF7kXgxhdxdr7Pkr4R6d944GtKg1CllnNgddFTGrOuR0UQ8EKVdMLIubOznxqBrolL3jO2lW0yCV6wqknvVuY79RfiXL5CknJPjhrLhxcQ26o-zLtIOfUYR3hE8OUHtRh3F4K-Qp-jiQsIU7tfWDZI9RFXlTi59PX5zp91TOPORSzaflIciEAn9IdX-k6F3LrPJoVF3QpdyRjhgb0qq9RoNJIa_NRfuDQDEBNI1H_io_YIm2iCSw4D2vMuuVdDV55g9-rqw85QkKbqpjMp7rFZnVKlKU-odhmHiFcacpSBi4XbPVQ7NJZLV3TMB78TYhwNgvY2H2FrvuefP0qm1U_yPgR8-YxGkxeRHzF8IFkaG4v0cQ7UEEYko09SgmljsfTgQcps_MTTrEFlm0-998b-WSqtYOHQRaR0-oOFuk82ROm6sthmnR50_fQuv9y7f_WrV2tqRdGwC6TiKAJ_abpKp-sa7U2tUWLxHzD_pTY_vn9G--clFiHyuouWA4qa5HPx0-pu8qD117eA21nV93J88bfkoChTvfzzlbMPXllF08HgLUOcP6cuvrEEk5WC1xFVlaE9WFnIqKGTwQBTiJR4FHXOnGHac-9RiofFQvoMadO22VtDHbye93BZJWpxT2_GXD_LitBX7jDJmpabzGXsjCvSmJyhxnjOxLEdKZqrzAdHZsETTvh2EofFUgkMoK_X77i3xfTSTwWHC9TVY2VMLcSntFvAzm3fP4uQ5_zbaNiSmYuGCRsLop_MSot8-7w3Xy9QZLk-WkGIqTzNjhoeSsPLJjg-qC3KQEhhWL8ilw8Yav3ZYts9dPUqopyLG0_gW6BZXk3wnLOPuGCFDVUdV_9XsbvHK7AhQBdhmVsTPMsjsIVvOZJ3yvwX0WW9F13lV6rPRmbC1XXQevbPYOI1IPL8u-FiNgHH-02eE36ClrVWo4BetjqW2nG95bPQYRiOY6iFll1fWKgo9gxd9AdgqIOjINugjtS-knhJrQS8QF9lSKAXaf4tAJfFJttuZsAH68IPLhVv-Ynfb9-u5-wJVB3Xdj0XoLVJnVMyC1tqPUJjLz6nqQ6oxen0ndnH1alBouBrIpvxJec1sNxQgDx1_8ksubOSvmuOcANylenZnEUES5sjOD7zo2a8yh7TtzfEqrhE5j76BmXfxKF5kxhIytmkPrYygfUS5jxZwALch2jUWlm7qHL7P4mkDG7w_KstVZhByRkcN4gcY7eVJp4tqX1CcvKbWA2Hmege6KGr88gNYbgodxkc8rjd9akwHwW_XuKeHTLRQ8KlhTHo4z8cVmoGpwNpJ-TnVC-s0AkefGcviDs3KxlDpBUYOpuSyejKUitGzJraArVwHuiioDcTWkXjo7Mmcad7eRSAzkBexFa6yq-D1qPam8nYhMODXXhARM6kCmKJxF6x0c23q1B2Mu71l-hlvr0-vxt8PHTj4N7hmgZKyhOH_T1Q8eh09bhyUmJ1rcvMQqDdLZSt42sPJnSvn2oBBr1h3tnH26FIXFA02OGTO37pGbFwHvnYOdTfQYP4goc7APILo1BWJ')
GO
ALTER TABLE [dbo].[BudgetGoals] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[Expenses] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BudgetGoals]  WITH CHECK ADD  CONSTRAINT [FK_BudgetGoals_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BudgetGoals] CHECK CONSTRAINT [FK_BudgetGoals_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Expenses]  WITH CHECK ADD  CONSTRAINT [FK_Expenses_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Expenses] CHECK CONSTRAINT [FK_Expenses_AspNetUsers_ApplicationUserId]
GO
