USE [GYM]
GO
/****** Object:  Table [dbo].[Billing]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing](
	[Bid] [int] NOT NULL,
	[Period] [varchar](50) NULL,
	[BillingDate] [varchar](40) NULL,
	[Amount] [decimal](18, 0) NULL,
	[Mid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coach]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[Cid] [int] NOT NULL,
	[Cname] [varchar](40) NULL,
	[gender] [varchar](40) NULL,
	[DateOfBirth] [varchar](40) NULL,
	[phone] [varchar](50) NULL,
	[Experience] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Devices]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[Did] [int] NOT NULL,
	[Dname] [varchar](50) NULL,
	[Dcost] [decimal](18, 0) NULL,
	[yearsguarantee] [int] NULL,
	[shId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Mid] [int] NOT NULL,
	[Mname] [varchar](50) NULL,
	[gender] [varchar](40) NULL,
	[DateOfBirth] [varchar](40) NULL,
	[phone] [varchar](50) NULL,
	[JoinDate] [varchar](40) NULL,
	[Cid] [int] NULL,
	[Status] [varchar](50) NULL,
	[Timing] [varchar](50) NULL,
	[shId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberShips]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberShips](
	[shId] [int] NOT NULL,
	[shName] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Goal] [varchar](200) NULL,
	[Cost] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[shId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptionsts]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptionsts](
	[Rname] [varchar](50) NULL,
	[gender] [varchar](40) NULL,
	[DateOfBirth] [varchar](40) NULL,
	[phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Billing]  WITH CHECK ADD  CONSTRAINT [FK_MemsBill] FOREIGN KEY([Mid])
REFERENCES [dbo].[Members] ([Mid])
GO
ALTER TABLE [dbo].[Billing] CHECK CONSTRAINT [FK_MemsBill]
GO
ALTER TABLE [dbo].[Devices]  WITH CHECK ADD  CONSTRAINT [FK_MemsDivice] FOREIGN KEY([shId])
REFERENCES [dbo].[MemberShips] ([shId])
GO
ALTER TABLE [dbo].[Devices] CHECK CONSTRAINT [FK_MemsDivice]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_MemberCoach] FOREIGN KEY([Cid])
REFERENCES [dbo].[Coach] ([Cid])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_MemberCoach]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Memship] FOREIGN KEY([shId])
REFERENCES [dbo].[MemberShips] ([shId])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Memship]
GO
/****** Object:  StoredProcedure [dbo].[allBilling]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allBilling]
as
select Bid,Period,BillingDate,Amount,Mid
from Billing
where Bid is not null
GO
/****** Object:  StoredProcedure [dbo].[allCoach]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[allCoach]
as
select Cid,Cname,gender,DateOfBirth,phone,Experience,Address,Password
from Coach
where Cid is not null
GO
/****** Object:  StoredProcedure [dbo].[allDevices]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allDevices]
as
select Did,Dname,Dcost,yearsguarantee,shId
from Devices
where Did is not null
GO
/****** Object:  StoredProcedure [dbo].[allMemberShips]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[allMemberShips]
as
select shId,shName,Duration,Goal,Cost
from MemberShips
where shId is not null
GO
/****** Object:  StoredProcedure [dbo].[allMemberss]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allMemberss]
as
select Mid,Mname,gender,DateOfBirth,phone,JoinDate,cid,Status,Timing,shId
from Members
where Mid is not null
GO
/****** Object:  StoredProcedure [dbo].[allReceptionsts]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allReceptionsts]
as
select Rname,gender,DateOfBirth,phone,Address,Password
from Receptionsts
where Rname is not null
GO
/****** Object:  StoredProcedure [dbo].[deleteCoach]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteCoach]
@Cid int
as
delete Coach
where Cid=@Cid
GO
/****** Object:  StoredProcedure [dbo].[deleteMemberShips]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[deleteMemberShips]
@shId int
as
delete MemberShips
where shId=@shId
GO
/****** Object:  StoredProcedure [dbo].[insertCoach]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertCoach]
@Cid int,@Cname varchar(50),@gender varchar(40),@DateOfBirth varchar(40),
@phone varchar(40),@Experience varchar(40),@Address varchar(40),@Password varchar(40)

as
insert into Coach(Cid,Cname,gender,DateOfBirth,phone,Experience,Address,Password)
values(@Cid ,@Cname ,@gender ,@DateOfBirth,@phone,@Experience,@Address,@Password)
GO
/****** Object:  StoredProcedure [dbo].[insertMemberShips]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertMemberShips]
@shId int,@shName varchar(50),@Duration varchar(40),@Goal varchar(40), @Cost decimal(18,0)

as
insert into MemberShips(shId,shName,Duration,Goal,Cost)
values(@shId ,@shName ,@Duration ,@Goal,@Cost)
GO
/****** Object:  StoredProcedure [dbo].[updateCoach]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[updateCoach]
@Cid int,@Cname varchar(50),@gender varchar(40),@DateOfBirth varchar(40), @phone varchar(40),
@Experience varchar(40),@Address varchar(50),@Password varchar(40)
as
update Coach
set Cid=@Cid,Cname=@Cname,gender=@gender,DateOfBirth=@DateOfBirth,phone=@phone,
Experience=@Experience,
Address=@Address,
Password=@Password
where Cid is not null and  Cid=@Cid
GO
/****** Object:  StoredProcedure [dbo].[updateMemberShips]    Script Date: 12/6/2022 10:56:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateMemberShips]
@shId int,@shName varchar(50),@Duration varchar(40),@Goal varchar(40), @Cost decimal(18,0)as
update MemberShips
set shId=@shId,shName=@shName,Duration=@Duration,Goal=@Goal,Cost=@Cost
where shId is not null and  shId=@shId
GO
