IF NOT EXISTS (SELECT TOP 1 * FROM dbo.CourseInstructor)
BEGIN
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (2021, 9)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (2042, 9)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (1045, 10)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (1050, 11)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (3141, 11)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (1050, 12)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (4022, 13)
INSERT [dbo].[CourseInstructor] ([CourseID], [InstructorID]) VALUES (4041, 13)
END