﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
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
GO
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
GO
IF NOT EXISTS (SELECT TOP 1 * FROM dbo.Course)
BEGIN
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1045, N'Calculus', 4, 3)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (1050, N'Chemistry', 3, 4)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2021, N'Composition', 3, 2)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (2042, N'Literature', 4, 2)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (3141, N'Trigonometry', 4, 3)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4022, N'Microeconomics', 3, 5)
INSERT [dbo].[Course] ([CourseID], [Title], [Credits], [DepartmentID]) VALUES (4041, N'Macroeconomics', 3, 5)
END
GO
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
GO
IF NOT EXISTS (SELECT TOP 1 * FROM dbo.Enrollment)
BEGIN
SET IDENTITY_INSERT [dbo].[Enrollment] ON 
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (1, 1050, 1, 0)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (2, 4022, 1, 2)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (3, 4041, 1, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (4, 1045, 2, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (5, 3141, 2, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (6, 2021, 2, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (7, 1050, 3, NULL)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (8, 4022, 3, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (9, 1050, 4, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (10, 2021, 5, 1)
INSERT [dbo].[Enrollment] ([EnrollmentID], [CourseID], [StudentID], [Grade]) VALUES (11, 2042, 6, 1)
SET IDENTITY_INSERT [dbo].[Enrollment] OFF
END
GO
IF NOT EXISTS (SELECT TOP 1 * FROM dbo.OfficeAssignment)
BEGIN
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (10, N'Smith 17')
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (11, N'Gowan 27')
INSERT [dbo].[OfficeAssignment] ([InstructorID], [Location]) VALUES (12, N'Thompson 304')
END
GO
