IF NOT EXISTS (SELECT TOP 1 * FROM dbo.Department)
BEGIN
SET IDENTITY_INSERT [dbo].[Department] ON 
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (1, N'Temp', 0.0000, CAST(N'2017-02-25 20:46:46.333' AS DateTime), NULL)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (2, N'English', 350000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (3, N'Mathematics', 100000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (4, N'Engineering', 350000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 11)
INSERT [dbo].[Department] ([DepartmentID], [Name], [Budget], [StartDate], [InstructorID]) VALUES (5, N'Economics', 100000.0000, CAST(N'2007-09-01 00:00:00.000' AS DateTime), 12)
SET IDENTITY_INSERT [dbo].[Department] OFF
END