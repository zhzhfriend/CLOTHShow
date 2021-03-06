USE [EPManageWeb.Entities.EPDataContext]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/08/2013 13:20:13 ******/
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [UserName], [Password], [RealName], [CreateDT], [ModifiedDT], [IsDeleted], [UserType]) VALUES (1, N'user', N'user', N'普通用户', CAST(0x0000A1F5009F0681 AS DateTime), CAST(0x0000A1F5009F0681 AS DateTime), 0, N'User')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [RealName], [CreateDT], [ModifiedDT], [IsDeleted], [UserType]) VALUES (2, N'admin', N'admin', N'张', CAST(0x0000A1F5009F066F AS DateTime), CAST(0x0000A1F5009F066F AS DateTime), 0, N'Admin')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[ClothesTypes]    Script Date: 07/08/2013 13:20:13 ******/
SET IDENTITY_INSERT [dbo].[ClothesTypes] ON
INSERT [dbo].[ClothesTypes] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id]) VALUES (1, N'上装', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, NULL)
INSERT [dbo].[ClothesTypes] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id]) VALUES (2, N'下装', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, NULL)
INSERT [dbo].[ClothesTypes] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id]) VALUES (3, N'裙子', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 2)
INSERT [dbo].[ClothesTypes] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id]) VALUES (4, N'裤子', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 2)
INSERT [dbo].[ClothesTypes] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id]) VALUES (5, N'毛衫', CAST(0x0000A1F5009F0660 AS DateTime), CAST(0x0000A1F5009F0660 AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[ClothesTypes] OFF
/****** Object:  Table [dbo].[ClothesParts]    Script Date: 07/08/2013 13:20:13 ******/
SET IDENTITY_INSERT [dbo].[ClothesParts] ON
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (1, N'品类', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, NULL, 1)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (2, N'衣身', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, NULL, 1)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (3, N'廓形', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 2, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (4, N'宽松风格', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 2, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (5, N'片数', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 2, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (6, N'造型特征', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 2, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (7, N'领型', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, NULL, 1)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (8, N'衣袖', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, NULL, 1)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (9, N'袖型', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 8, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (10, N'片数', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 8, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (11, N'长短', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 8, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (12, N'造型特征', CAST(0x0000A1F5009F0606 AS DateTime), CAST(0x0000A1F5009F0606 AS DateTime), 0, 8, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (13, N'裙身', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, NULL, 3)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (14, N'廓形', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 13, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (15, N'宽松风格', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 13, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (16, N'裙长', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 13, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (17, N'造型特征', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 13, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (18, N'腰头', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, NULL, 3)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (19, N'腰高', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 18, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (20, N'工艺', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 18, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (21, N'裤身', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, NULL, 4)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (22, N'廓形', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 21, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (23, N'宽松风格', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 21, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (24, N'裙长', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 21, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (25, N'造型特征', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 21, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (26, N'腰头', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, NULL, 4)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (27, N'腰高', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 26, NULL)
INSERT [dbo].[ClothesParts] ([Id], [Name], [CreateDT], [ModifiedDT], [IsDeleted], [Parent_Id], [ClothType_Id]) VALUES (28, N'工艺', CAST(0x0000A1F5009F064B AS DateTime), CAST(0x0000A1F5009F064B AS DateTime), 0, 26, NULL)
SET IDENTITY_INSERT [dbo].[ClothesParts] OFF
/****** Object:  Table [dbo].[Clothes]    Script Date: 07/08/2013 13:20:13 ******/
/****** Object:  Table [dbo].[SessionUsers]    Script Date: 07/08/2013 13:20:13 ******/
/****** Object:  Table [dbo].[OperationLogs]    Script Date: 07/08/2013 13:20:13 ******/
/****** Object:  Table [dbo].[UploadFiles]    Script Date: 07/08/2013 13:20:13 ******/
/****** Object:  Table [dbo].[ClothesPartTypes]    Script Date: 07/08/2013 13:20:13 ******/
SET IDENTITY_INSERT [dbo].[ClothesPartTypes] ON
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (1, N'外套', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (2, N'衬衫', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (3, N'小衫', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (4, N'风衣', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (5, N'大衣', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (6, N'棉衣/羽绒服', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (7, N'皮衣', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (8, N'连衣裙', 0, 1, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (9, N'H', 0, 3, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (10, N'X', 0, 3, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (11, N'A', 0, 3, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (12, N'O', 0, 3, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (13, N'宽松(B>105)', 0, 4, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (14, N'较宽松(B=95~105)', 0, 4, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (15, N'贴体(B=84~95)', 0, 4, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (16, N'2开身', 0, 5, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (17, N'3开身', 0, 5, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (18, N'4开身', 0, 5, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (19, N'多开身', 0, 5, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (20, N'分割', 0, 6, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (21, N'省道', 0, 6, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (22, N'折裥', 0, 6, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (23, N'抽摺', 0, 6, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (24, N'约克', 0, 6, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (25, N'无领', 0, 7, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (26, N'圆领', 0, 7, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (27, N'驳折领', 0, 7, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (28, N'连帽子', 0, 7, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (29, N'翻折领', 0, 7, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (30, N'装袖', 0, 9, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (31, N'无袖', 0, 9, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (32, N'连身袖', 0, 9, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (33, N'插肩袖', 0, 9, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (34, N'一片', 0, 10, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (35, N'两片', 0, 10, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (36, N'多片', 0, 10, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (37, N'无袖', 0, 11, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (38, N'短袖', 0, 11, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (39, N'五分袖', 0, 11, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (40, N'七分袖', 0, 11, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (41, N'长袖', 0, 11, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (42, N'直身袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (43, N'弯身袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (44, N'泡泡袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (45, N'喇叭袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (46, N'蝙蝠袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (47, N'羊腿袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (48, N'灯笼袖', 0, 12, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (49, N'直身裙', 0, 14, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (50, N'A字裙', 0, 14, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (51, N'波浪', 0, 14, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (52, N'宽松(H>98)', 0, 15, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (53, N'较宽松（H=93~98）', 0, 15, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (54, N'贴体（H=88~93）', 0, 15, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (55, N'3分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (56, N'4分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (57, N'5分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (58, N'6~7分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (59, N'8~9分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (60, N'10分', 0, 16, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (61, N'分割', 0, 17, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (62, N'横向', 0, NULL, 61)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (63, N'纵向', 0, NULL, 61)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (64, N'不规则', 0, NULL, 61)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (65, N'省道', 0, 17, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (66, N'折裥', 0, 17, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (67, N'抽褶', 0, 17, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (68, N'低腰', 0, 19, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (69, N'中腰', 0, 19, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (70, N'高腰', 0, 19, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (71, N'装腰', 0, 20, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (72, N'连腰', 0, 20, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (73, N'约克', 0, 20, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (74, N'直筒裤', 0, 22, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (75, N'窄脚裤', 0, 22, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (76, N'喇叭裤', 0, 22, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (77, N'哈伦裤', 0, 22, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (78, N'宽松(H>98)', 0, 23, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (79, N'较宽松（H=93~98）', 0, 23, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (80, N'贴体（H=88~93）', 0, 23, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (81, N'3分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (82, N'4分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (83, N'5分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (84, N'6~7分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (85, N'8~9分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (86, N'10分', 0, 24, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (87, N'分割', 0, 25, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (88, N'横向', 0, NULL, 87)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (89, N'纵向', 0, NULL, 87)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (90, N'不规则', 0, NULL, 87)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (91, N'省道', 0, 25, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (92, N'折裥', 0, 25, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (93, N'抽褶', 0, 25, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (94, N'低腰', 0, 27, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (95, N'中腰', 0, 27, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (96, N'高腰', 0, 27, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (97, N'装腰', 0, 28, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (98, N'连腰', 0, 28, NULL)
INSERT [dbo].[ClothesPartTypes] ([Id], [Name], [Order], [ClothesPart_Id], [Parent_Id]) VALUES (99, N'约克', 0, 28, NULL)
SET IDENTITY_INSERT [dbo].[ClothesPartTypes] OFF
GO
print 'Processed 100 total records'
