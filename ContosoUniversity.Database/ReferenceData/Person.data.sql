IF NOT EXISTS (SELECT TOP 1 * FROM dbo.Person)
BEGIN
SET IDENTITY_INSERT [dbo].[Person] ON 
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (1, N'Alexander', N'Carson', NULL, CAST(N'2010-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (2, N'Alonso', N'Meredith', NULL, CAST(N'2012-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (3, N'Anand', N'Arturo', NULL, CAST(N'2013-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (4, N'Barzdukas', N'Gytis', NULL, CAST(N'2012-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (5, N'Li', N'Yan', NULL, CAST(N'2012-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (6, N'Justice', N'Peggy', NULL, CAST(N'2011-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (7, N'Norman', N'Laura', NULL, CAST(N'2013-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (8, N'Olivetto', N'Nino', NULL, CAST(N'2005-09-01 00:00:00.000' AS DateTime), N'Student')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (9, N'Abercrombie', N'Kim', CAST(N'1995-03-11 00:00:00.000' AS DateTime), NULL, N'Instructor')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (10, N'Fakhouri', N'Fadi', CAST(N'2002-07-06 00:00:00.000' AS DateTime), NULL, N'Instructor')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (11, N'Harui', N'Roger', CAST(N'1998-07-01 00:00:00.000' AS DateTime), NULL, N'Instructor')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (12, N'Kapoor', N'Candace', CAST(N'2001-01-15 00:00:00.000' AS DateTime), NULL, N'Instructor')
INSERT [dbo].[Person] ([ID], [LastName], [FirstName], [HireDate], [EnrollmentDate], [Discriminator]) VALUES (13, N'Zheng', N'Roger', CAST(N'2004-02-12 00:00:00.000' AS DateTime), NULL, N'Instructor')
SET IDENTITY_INSERT [dbo].[Person] OFF
END