/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BakerySupplier]') AND type in (N'U'))
ALTER TABLE [dbo].[BakerySupplier] DROP CONSTRAINT IF EXISTS [FK_BakerySupplier_Supplier]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BakerySupplier]') AND type in (N'U'))
ALTER TABLE [dbo].[BakerySupplier] DROP CONSTRAINT IF EXISTS [FK_BakerySupplier_Bakery]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bakery]') AND type in (N'U'))
ALTER TABLE [dbo].[Bakery] DROP CONSTRAINT IF EXISTS [FK_Bakery_TreatStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bakery]') AND type in (N'U'))
ALTER TABLE [dbo].[Bakery] DROP CONSTRAINT IF EXISTS [FK_Bakery_TreatCategory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bakery]') AND type in (N'U'))
ALTER TABLE [dbo].[Bakery] DROP CONSTRAINT IF EXISTS [FK_Bakery_Season]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bakery]') AND type in (N'U'))
ALTER TABLE [dbo].[Bakery] DROP CONSTRAINT IF EXISTS [FK_Bakery_HasGluten]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[TreatStatus]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[TreatStatus]
GO
/****** Object:  Table [dbo].[TreatCategory]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[TreatCategory]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[Season]
GO
/****** Object:  Table [dbo].[HasGluten]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[HasGluten]
GO
/****** Object:  Table [dbo].[BakerySupplier]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[BakerySupplier]
GO
/****** Object:  Table [dbo].[Bakery]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[Bakery]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/18/2019 1:29:27 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Bakery]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bakery]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Bakery](
	[BakeryTreatID] [int] IDENTITY(1,1) NOT NULL,
	[TreatName] [varchar](150) NOT NULL,
	[TreatCategoryID] [int] NOT NULL,
	[Cost] [smallmoney] NOT NULL,
	[Price] [smallmoney] NOT NULL,
	[UnitsSold] [int] NULL,
	[Quantity] [int] NOT NULL,
	[TreatStatusID] [int] NOT NULL,
	[HasGlutenID] [int] NOT NULL,
	[Calories] [int] NOT NULL,
	[Description] [varchar](250) NULL,
	[SeasonID] [int] NOT NULL,
	[Ingredients] [varchar](200) NULL,
	[ImageFileName] [varchar](100) NULL,
 CONSTRAINT [PK_Bakery] PRIMARY KEY CLUSTERED 
(
	[BakeryTreatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BakerySupplier]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BakerySupplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BakerySupplier](
	[BakeryTreatSupplierID] [int] IDENTITY(1,1) NOT NULL,
	[BakeryTreatID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_BakerySupplier] PRIMARY KEY CLUSTERED 
(
	[BakeryTreatSupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HasGluten]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HasGluten]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HasGluten](
	[HasGlutenID] [int] IDENTITY(1,1) NOT NULL,
	[GlutenStatus] [varchar](20) NOT NULL,
 CONSTRAINT [PK_HasGluten] PRIMARY KEY CLUSTERED 
(
	[HasGlutenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Season]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Season]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[State] [char](2) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TreatCategory]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TreatCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TreatCategory](
	[TreatCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[TreatCategoryName] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TreatCategory] PRIMARY KEY CLUSTERED 
(
	[TreatCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TreatStatus]    Script Date: 10/18/2019 1:29:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TreatStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TreatStatus](
	[TreatStatusID] [int] IDENTITY(1,1) NOT NULL,
	[TreatStatusName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TreatStatus] PRIMARY KEY CLUSTERED 
(
	[TreatStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201910081815494_InitialCreate', N'StoreFront.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416592B97EE621BD85B649DA40DBAB9609D2CFAB6A025DA1156A2B412952628FA657DE827F5173A94A81B2FBAD88AED14058A581C9E190E67C8E170B8FFFEFDCFF8E747DF331E7014BB01999807A37DD3C0C40E1C972C27664217AFDE9A3FBFFBF69BF199E33F1A9F72BA2346073D493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF641D1C5818204CC0328CF1C78450D7C7E90FF8390D888D439A20EF3270B017F3EFD0324B518D2BE4E33844369E98331A44F83C0A081DDD5D8C2E3F4D47591FD338F15C04F2CCB0B7300D4448401105698FEF623CA3D061390BE103F26E9F420C740BE4C5988FE2B824EF3AA0FD433620ABEC9843D9494C03BF27E0C111D79025765F49CF66A141D0E119E89A3EB151A77A9C98170E4E3F7D0C3C5080C8F078EA458C78625E162C4EE2F00AD351DE7194419E4700F747107D195511F78CCEFDF60A8B3A1CEDB3FFF68C69E2D124C21382131A216FCFB849E69E6BFF869F6E832F984C8E0EE68BA3B7AFDF20E7E8CD8FF8E87575A43056A0AB7D804F375110E20864C38B62FCA661D5FB5962C7A25BA54FA615B025700ED3B8448F1F3059D27B709BC3B7A671EE3E6227FFC28DEB8EB8E04BD0894609FCBC4A3C0FCD3D5CB45B8D3CD9FF1BB81EBE7E3308D72BF4E02ED3A917F883E344E0571FB197B6C6F76E98B9576DBE3F7332F0499FFDAEDB57D6FA79162491CD061368496E51B4C4B42EDDD82A8DB7934933A8E1CD3A47DD7DD36692CAE6AD2465035AC51372169BF6865CDEE7E5DBD9E24EC210262F352DA6912683D36D59230163CF90284B333AE86A460486F77F5E15CF7CE47A032C8B1DB8405CB270231F17A37C1F801122D25BE61B14C7B02A38BFA2F8BE4174F87300D167D84E2230D619457EF8ECDC6EEE0382AF127FCE7C6073BC069B9ADB3F82736483DF9D11D66B6DBC0F81FD2548E819714E11C577D4CE01D9CF5BD7EF0E30883827B68DE3F81C8C193BD300C2EE1CF082D0A3C3DE706C99DA765832F590EBABE3126141FD9C9396B1899A428A4F3464AA18A549D40FC1D225DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D560515F3A43C3877D29ECEEC77DEB6DDEBAB5A0A2C63432F905131CC132E6DC204A7144CA19E8B26E6C235848A78F317DF6BD29E5F40979C9D0AC56F286741118DE1B52D8DDF786544CF8FCE03A2C2AE97018CA8901BE13BDFA9CD5EE7382649B7687DA3037CD7C336B80CE5D4EE238B0DDD40B1469309EC4A8CB0F319CD19ED1C846236645606060E82EDBF2E00B8CCD148DEA9A9C620F536C9CD8599A708A621B39B21A61404E0FC1F21D552158991DA90BF783C4132C1D47AC136287A0183CD52554760B97D86E88BC562D093D3B6E616CEC050FB1E51487983086AD9AE8C25C9D0C6102147C844969D3D0D8AA585CB3216AA256DD9CB785B0E5BC4B398A8DD8644BECACB14B1EBF3D8B61366B6C03C6D9AC922E0268137BDB30507E56E96A00E2C165D70C543831690C9487541B31D0BAC6B660A07595BC3803CD8EA85DE75F38AFEE9A79D60FCA9BDFD61BD5B505DBACE963C74C338B3DA10F851E3892CDF374CE1AF123551CCE404E7E3E8B79A82B9A08039F615A4FD994F1AE320EB59A4144236A022C0DAD05945F094A409243F5102ECFE5354AC7A3881EB079DEAD1196AFFD026CC50664ECEAD56885507F812A1A67A7D34731B2C21A2423EF7458A8E0280C425CBCEA03EFA0145D5E56564C9758B84F345C19189F8C0605B544AE1A25E583195C4BB969B66B491590F509C9D6D292103E69B4940F66702D711B6D57922228E81116ACA5A2FA163E90B3E5998E62B729DAC6565637C53F8C2D4D81D5F81285A14B9695822BFEC59865D556D357B3FE05487E8661D9B1A20EA990B6E04483082DB1D00AAC41D273378AE929A2688E589E67EAF81299726FD52CFF39CBEAF6294F62BE0FE4D4EC6F7EB3AABBC8AFEDB87248C291CE619C3E8B6B521C8515A8BB1BAC0C0E792852E4EFA78197F8441F66E97B67B778D5FED91719616C09F24B6194A43329D8AD4F40A7E9915D63D0A92A6299D5A74B0FA1537A1E8956D5AE8B4EF52879B2AA8AA24B606D6DFA7441CD0A5326468DFD67AC15E1797C8C97AA5401F8A79E18956A0709ACD2D61DB55E9052C5ACB7744714AA4EAA9042530F29ABB5253521AB0D2BE16934AAA6E8CE41AE26A9A2CBADDD91157525556845F30AD80A99C5B6EEA88AD2932AB0A2B93B765987222EA53BBC8B69CF326B6E63D9A177BD7D4C83F13CEBE230DB60E56EBF0A54F9DC138BDFDE4B60FCFB4EDA94F6E4B7A64D65198FF56C4A83A15F856A77E3F545A8F1425F8F59BBF0AE2DF44D17FE7ABC7E96FBACF6211DFF4492827B710C148E7B637EF46A7F74239DC53212D3C8D50856F51453EC8F18C168F6D59B7A2E664B7A4E708988BBC031CD8A3CCCC3FD8343E1C5CEEEBC9EB1E2D8F1144757DD139AFA9C6DA05E8B3CA0C8BE47915C3DB1C60B9312544A4C5F10073F4ECC3FD35EC7698E83FD957EDE332EE23BE27E4DA0E1364AB0F1975C0D3A4CC57D87371E85A07FBD88C713DD557EF1FBE7ACEB9E711D813B1D1BFB82A25799FEFA938A5ED2645DD79066E587162FD7DB6A2F1794A882B7ACFE5061EED2411E29E4527EE7A3C7EFFB8AA67C88B016A2E2B1C1507883A850F79860152CED4302077ED2F42141BFC1AA1F16AC229AF651814BFA83894F0ABA2F4379CF2DEE438A63D32696A454CFAD25D96BD5676E7B6F922AB7D77274B93ABB07DCA015D8EB85282FACB279B0AD5351B83C18F636EDFED9AB9577A540B90CDAB75B97BCC952E4862BA6FF5505F20ED4CC296A80B65F67BC695BD3E58177BC58B35F35F18E191BDFE6B75F33BC6963D3258877DCD87A5506EF98AD6D6BFFDCB2A575DE42B75EE72B972C69EE735459E4B63ADE2CE50EC7FF790046904594D9F34B75E15853D16B0BC39244CF545FB12632961C47E22B5134B3ED3756BEE1370E96D334B3D5D47936F1E6EB7F236F4ED3CC5B533DB98D0A6465FDA2AA2ABC651D6B2AA87A4915C7B591B414B8B7C5AC8D97F32FA9C07810A5D4BC4773BBFC72EA890751C990AED3A37E58BE2886BDB3F26F38C2FE1DBBCB1282FD8B8E04DBB55DB3A0B9208B20DFBC05897212214373892972604B3D89A8BB4036856696804EDF8FA7493D760D32C7CE05B94E6898501832F6E75E2DE1C5828026FE6991745DE6F175C87EC5430C01C47459E2FE9ABC4F5CCF29E43E57E48434102CBAE0E95E369794A57D974F05D255403A0271F51541D12DF6430FC0E26B32430F7815D9C0FC3EE025B29FCA0CA00EA47D22EA6A1F9FBA6819213FE618657FF80936ECF88FEFFE031800276BCA540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'91539671-009d-46fd-9a3d-0ac59057bef4', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'dbc12042-a7a3-41e1-be49-8905afd6d4b9', N'Customer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3ae0df6b-0815-4a1e-aa92-c4269d764bb5', N'91539671-009d-46fd-9a3d-0ac59057bef4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'995fd820-50ce-43b8-8964-f0f0ca261c66', N'91539671-009d-46fd-9a3d-0ac59057bef4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e50c944-72f1-41f0-9814-e91de539b469', N'dbc12042-a7a3-41e1-be49-8905afd6d4b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cb375dbb-e492-42ea-8211-afd7a8ff1c5a', N'dbc12042-a7a3-41e1-be49-8905afd6d4b9')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1e50c944-72f1-41f0-9814-e91de539b469', N'customer2@cupcakery.com', 0, N'ACVRa92MAhD6L5eaJfalsISa3jpsae/tYmeUtu556rvzWdGuXgE+9cUUs0rtXS7etw==', N'55c106ba-30cb-44da-9ee4-e442aa8366ba', NULL, 0, 0, NULL, 1, 0, N'customer2@cupcakery.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3ae0df6b-0815-4a1e-aa92-c4269d764bb5', N'admin@cupcakesandcookies.com', 0, N'AAzstuRdLjk+v4cXbTfTI0yEJeMOYLDdr/RWeDNK0XANsQuLK+sBvXUxglmbbEYmOA==', N'2618fd9e-15ba-4c4e-93b7-050d862c32bb', NULL, 0, 0, NULL, 1, 0, N'admin@cupcakesandcookies.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8823a963-c4d5-44da-a0e9-bc1812e83917', N'customer@cupcakery.com', 0, N'AKKTX5nvS6q0TRE4Ax70lShjrnL+nmf5ml430RnQRWlhupa5iTQFSi8P2kTl1iWH3g==', N'e6e8db42-4d5d-4d26-a350-ee057b3c2b42', NULL, 0, 0, NULL, 1, 0, N'customer@cupcakery.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'995fd820-50ce-43b8-8964-f0f0ca261c66', N'admin@example.com', 0, N'AGjg8hDXnJiQUeW85IHAmpNmXcj/3ruP2uI6C/CZ2zOPNFrcgRdK8CiwkrOCOT7pdw==', N'692b46e5-4135-45d8-b0c3-b3eb3d22e046', NULL, 0, 0, NULL, 0, 0, N'admin@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cb375dbb-e492-42ea-8211-afd7a8ff1c5a', N'jazzyb.207@gmail.com', 0, N'AHSlih1Hfo2NNQkMm5eY93I6kn5mp+f6OZPOXH6YKAnTRrQfsstbxigCdVzgUAWYbA==', N'cfa10b08-08fc-4984-9514-eb4c96a6fd9e', NULL, 0, 0, NULL, 1, 0, N'jazzyb.207@gmail.com')
SET IDENTITY_INSERT [dbo].[Bakery] ON 

INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (6, N'Peppermint Bark', 2, 2.9900, 5.9900, 473, 28, 1, 1, 500, N'A seasonal treat', 1, N'marshmellow, chocolate, graham crackers', N'yoori-koo-FmGpqW7e-O4-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (7, N'Chocolate Chip', 1, 1.5000, 3.9900, 200, 32, 1, 2, 120, N'ooey gooey goodness', 5, N'Blanch bread can coddle cube deep fry degrease partially set', N'food-photographer-jennifer-pallian-OfdDiqx8Cz8-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (8, N'Pina Colada', 1, 1.2500, 3.0000, 22, 5, 1, 1, 200, N'Do you like Pina Coladas? ', 3, N'chunk deglaze devil melt mince mois', N'jennie-brown-MKBoRZEGeiM-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (9, N'Pumpkin Spice', 1, 2.0000, 6.5000, 817, 8, 1, 1, 450, N'it is autum in your mouth', 4, N' stuff apple caramels chupa dessert snaps', N'leo-roza-5uerZn9OXTA-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (10, N'Oreo', 1, 4.9900, 6.9900, 280, 12, 1, 1, 500, N'the classic cookie in cupcake form', 5, N'chocolate cream and more chocolate', N'hello-i-m-nik-bZb99nH5VoU-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (11, N'Vanilla', 1, 1.9900, 2.9900, 123, 8, 1, 2, 350, N'vanilla in small cake form', 5, N'vanilla, vanilla bean, all the ways to get vanilla', N'yonko-kilasi-sl7jqLgd7lo-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (12, N'Smores', 1, 3.0000, 5.0000, 313, 0, 2, 1, 550, N'smores is a favorite summer treat', 3, N'marshmellow, chocolate, graham crackers', N'ohtilly-9sKcBBMII6Q-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (13, N'Snickerdoodle', 2, 1.0000, 1.9900, 1500, 50, 1, 1, 120, N'We put the snicker in doodle', 5, N'snickers and doodles', N'mollie-sivaram-eSFEvmcIu2w-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (14, N'GingerBread', 2, 2.9900, 3.9900, 220, 20, 1, 1, 170, N'Not the gum drop buttons', 1, N'not the gum drop buttons', N'dilyara-garifullina-cZaUWl1Lse4-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (15, N'Peanut Butter', 2, 1.5000, 2.5000, 137, 42, 1, 1, 125, N'Peanut butter goodness', 5, N'Apple applicake bears biscuit bonbon cake', N'madison-kaminski-2c6_d8svbkY-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (17, N'Flower Power', 2, 2.0000, 6.0000, 357, 45, 1, 1, 220, N'We put the flower into power', 5, N'Sugar, spice, and everything nice', N'eve-lina-lVf3t9JWS0E-unsplash.jpg')
INSERT [dbo].[Bakery] ([BakeryTreatID], [TreatName], [TreatCategoryID], [Cost], [Price], [UnitsSold], [Quantity], [TreatStatusID], [HasGlutenID], [Calories], [Description], [SeasonID], [Ingredients], [ImageFileName]) VALUES (18, N'Unicorn Swirl', 1, 5.0000, 6.5000, 566, 26, 1, 1, 680, N'Rainbows swirls on a piece of cake', 5, N'Unicorn drops and sweetner', N'deva-williamson-ymy-t_sKkNk-unsplash.jpg')
SET IDENTITY_INSERT [dbo].[Bakery] OFF
SET IDENTITY_INSERT [dbo].[BakerySupplier] ON 

INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (13, 6, 1)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (14, 6, 2)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (15, 7, 2)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (16, 8, 4)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (17, 9, 2)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (18, 9, 5)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (19, 10, 1)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (20, 10, 2)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (21, 12, 1)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (22, 12, 2)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (23, 12, 3)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (24, 13, 5)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (25, 14, 4)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (26, 14, 5)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (27, 15, 1)
INSERT [dbo].[BakerySupplier] ([BakeryTreatSupplierID], [BakeryTreatID], [SupplierID]) VALUES (28, 15, 4)
SET IDENTITY_INSERT [dbo].[BakerySupplier] OFF
SET IDENTITY_INSERT [dbo].[HasGluten] ON 

INSERT [dbo].[HasGluten] ([HasGlutenID], [GlutenStatus]) VALUES (1, N'Gluten')
INSERT [dbo].[HasGluten] ([HasGlutenID], [GlutenStatus]) VALUES (2, N'No Gluten')
SET IDENTITY_INSERT [dbo].[HasGluten] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'Winter')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (3, N'Summer')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (4, N'Fall')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (5, N'Every Season')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [City], [State]) VALUES (1, N'Quality Ingredients, Inc', N'Kansas City', N'MO')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [City], [State]) VALUES (2, N'All the Spices, LLC', N'St. Louis', N'MO')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [City], [State]) VALUES (3, N'Sugar by the Pound, LLC', N'Austin', N'TX')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [City], [State]) VALUES (4, N'Fresh Cuts, Inc', N'Miami', N'FL')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [City], [State]) VALUES (5, N'All the Snacks, Inc', N'Long Beach', N'CA')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[TreatCategory] ON 

INSERT [dbo].[TreatCategory] ([TreatCategoryID], [TreatCategoryName]) VALUES (1, N'CupCake')
INSERT [dbo].[TreatCategory] ([TreatCategoryID], [TreatCategoryName]) VALUES (2, N'Cookie')
SET IDENTITY_INSERT [dbo].[TreatCategory] OFF
SET IDENTITY_INSERT [dbo].[TreatStatus] ON 

INSERT [dbo].[TreatStatus] ([TreatStatusID], [TreatStatusName]) VALUES (1, N'In stock')
INSERT [dbo].[TreatStatus] ([TreatStatusID], [TreatStatusName]) VALUES (2, N'Out of stock')
SET IDENTITY_INSERT [dbo].[TreatStatus] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_HasGluten]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery]  WITH CHECK ADD  CONSTRAINT [FK_Bakery_HasGluten] FOREIGN KEY([HasGlutenID])
REFERENCES [dbo].[HasGluten] ([HasGlutenID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_HasGluten]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery] CHECK CONSTRAINT [FK_Bakery_HasGluten]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery]  WITH CHECK ADD  CONSTRAINT [FK_Bakery_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_Season]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery] CHECK CONSTRAINT [FK_Bakery_Season]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_TreatCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery]  WITH CHECK ADD  CONSTRAINT [FK_Bakery_TreatCategory] FOREIGN KEY([TreatCategoryID])
REFERENCES [dbo].[TreatCategory] ([TreatCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_TreatCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery] CHECK CONSTRAINT [FK_Bakery_TreatCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_TreatStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery]  WITH CHECK ADD  CONSTRAINT [FK_Bakery_TreatStatus] FOREIGN KEY([TreatStatusID])
REFERENCES [dbo].[TreatStatus] ([TreatStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bakery_TreatStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bakery]'))
ALTER TABLE [dbo].[Bakery] CHECK CONSTRAINT [FK_Bakery_TreatStatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BakerySupplier_Bakery]') AND parent_object_id = OBJECT_ID(N'[dbo].[BakerySupplier]'))
ALTER TABLE [dbo].[BakerySupplier]  WITH CHECK ADD  CONSTRAINT [FK_BakerySupplier_Bakery] FOREIGN KEY([BakeryTreatID])
REFERENCES [dbo].[Bakery] ([BakeryTreatID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BakerySupplier_Bakery]') AND parent_object_id = OBJECT_ID(N'[dbo].[BakerySupplier]'))
ALTER TABLE [dbo].[BakerySupplier] CHECK CONSTRAINT [FK_BakerySupplier_Bakery]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BakerySupplier_Supplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[BakerySupplier]'))
ALTER TABLE [dbo].[BakerySupplier]  WITH CHECK ADD  CONSTRAINT [FK_BakerySupplier_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BakerySupplier_Supplier]') AND parent_object_id = OBJECT_ID(N'[dbo].[BakerySupplier]'))
ALTER TABLE [dbo].[BakerySupplier] CHECK CONSTRAINT [FK_BakerySupplier_Supplier]
GO
