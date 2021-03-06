USE [UserDB]
GO
/****** Object:  Table [dbo].[ArticleInfo]    Script Date: 2019/2/23 18:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArticleInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[contents] [nvarchar](max) NULL,
	[author] [varchar](20) NULL,
	[create_time] [datetime2](7) NOT NULL,
	[viewCount] [int] NOT NULL,
	[clickCount] [int] NOT NULL,
	[photo] [varchar](100) NULL,
 CONSTRAINT [PK_ArticleInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommentInfo]    Script Date: 2019/2/23 18:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommentInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[author] [varchar](20) NULL,
	[contents] [nvarchar](max) NULL,
	[create_time] [datetime2](7) NOT NULL,
	[article_id] [int] NOT NULL,
	[clickCount] [int] NULL,
 CONSTRAINT [PK_CommentInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MessageInfo]    Script Date: 2019/2/23 18:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MessageInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[author] [varchar](20) NULL,
	[contents] [varchar](max) NULL,
	[create_time] [datetime] NULL,
	[clickCount] [int] NULL,
 CONSTRAINT [PK_MessageInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2019/2/23 18:15:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[Age] [int] NOT NULL,
	[email] [varchar](200) NULL,
	[mobile] [varchar](20) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ArticleInfo] ON 

INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (11, N'拥有诗意的心态,才能拥有诗意的生活', N'<p>父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。</p><p><img src="https://www.layui.com/template/xianyan/demo/res/static/images/item.png" alt="" layer-index="0">

</p>', N'小明', CAST(0x07B875E941B3E73D0B AS DateTime2), 0, 0, N'')
INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (12, N'12拥有诗意的心态,才能拥有诗意的生活', N'<p>父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。</p><p><img src="https://www.layui.com/template/xianyan/demo/res/static/images/item.png" alt="" layer-index="0">

</p>', N'小明', CAST(0x0791C04342B3163F0B AS DateTime2), 0, 0, N'')
INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (13, N'13拥有诗意的心态,才能拥有诗意的生活', N'<p>父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。</p><p><img src="https://www.layui.com/template/xianyan/demo/res/static/images/item.png" alt="" layer-index="0">

</p>', N'小明', CAST(0x070CBA02A1B3163F0B AS DateTime2), 0, 0, N'')
INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (14, N'14拥有诗意的心态,才能拥有诗意的生活', N'<p>父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。</p><p><img src="https://www.layui.com/template/xianyan/demo/res/static/images/item.png" alt="" layer-index="0">

</p>', N'小明', CAST(0x0771A16DF4B3163F0B AS DateTime2), 13, 4, N'')
INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (1001, N'2019', N'<p>大家元旦快乐</p>', N'小明', CAST(0x07F4F53C1462223F0B AS DateTime2), 4, 0, N'')
INSERT [dbo].[ArticleInfo] ([Id], [title], [contents], [author], [create_time], [viewCount], [clickCount], [photo]) VALUES (1002, N'2019', N'<p>大家元旦快乐</p>', N'小明', CAST(0x07A657F63162223F0B AS DateTime2), 11, 2, N'')
SET IDENTITY_INSERT [dbo].[ArticleInfo] OFF
SET IDENTITY_INSERT [dbo].[CommentInfo] ON 

INSERT [dbo].[CommentInfo] ([Id], [author], [contents], [create_time], [article_id], [clickCount]) VALUES (1003, N'', N'天天开心', CAST(0x070768686168223F0B AS DateTime2), 1001, 0)
INSERT [dbo].[CommentInfo] ([Id], [author], [contents], [create_time], [article_id], [clickCount]) VALUES (1004, N'', N'444', CAST(0x077ED915FD6C223F0B AS DateTime2), 1002, 10)
INSERT [dbo].[CommentInfo] ([Id], [author], [contents], [create_time], [article_id], [clickCount]) VALUES (1005, N'', N'今天天气不错啊', CAST(0x07C26B2E059F513F0B AS DateTime2), 1002, 1)
SET IDENTITY_INSERT [dbo].[CommentInfo] OFF
SET IDENTITY_INSERT [dbo].[MessageInfo] ON 

INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (2, N'', N'新的评论', CAST(0x0000A9FD00DEE479 AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (3, N'', N'999', CAST(0x0000A9FD00DF2BA2 AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (4, N'', N'测试', CAST(0x0000A9FD01137DA0 AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (5, N'', N'明天天气不错', CAST(0x0000A9FD011394D6 AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (6, N'', N'11', CAST(0x0000A9FD0113A0EA AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (7, N'', N'222', CAST(0x0000A9FD0113A3D7 AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (8, N'', N'222', CAST(0x0000A9FD0113ADDC AS DateTime), 0)
INSERT [dbo].[MessageInfo] ([id], [author], [contents], [create_time], [clickCount]) VALUES (9, N'', N'新的一天', CAST(0x0000A9FD01151CE7 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[MessageInfo] OFF
ALTER TABLE [dbo].[CommentInfo]  WITH CHECK ADD  CONSTRAINT [FK_CommentInfo_ArticleInfo_article_id] FOREIGN KEY([article_id])
REFERENCES [dbo].[ArticleInfo] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CommentInfo] CHECK CONSTRAINT [FK_CommentInfo_ArticleInfo_article_id]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点赞数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CommentInfo', @level2type=N'COLUMN',@level2name=N'clickCount'
GO
