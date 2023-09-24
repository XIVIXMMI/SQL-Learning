CREATE DATABASE UniversityDatabase
GO
USE UniversityDatabase
GO

CREATE TABLE Course (
    IdCourse CHAR(10) PRIMARY KEY,
    Name NVARCHAR(200) DEFAULT N'Course Name',
    Credit INT DEFAULT 3,
)
GO

CREATE TABLE Class (
    IdClass CHAR(10),
    RoomNumber INT DEFAULT 1,
    PRIMARY KEY(IdClass)
)
GO

CREATE TABLE Lecturer (
    IdLecturer CHAR(10) NOT NULL,
    Name NVARCHAR(100) DEFAULT N'Lecturer Name',
    Birthday DATE,
    Gender BIT,
    PhoneNumber CHAR(10) DEFAULT '090677xxxx',
    Address NVARCHAR(100) DEFAULT N'Ho Chi Minh',

-- tạo khóa ngoại ngay khi khởi tạo bảng 
    IdCourse CHAR(10) FOREIGN KEY(IdCourse) REFERENCES dbo.Course(IdCourse),
)
ALTER TABLE dbo.Lecturer ADD PRIMARY KEY (IdLecturer)
GO 

CREATE TABLE Student (
    IdStudent CHAR(10) NOT NULL,
    Name NVARCHAR(100) DEFAULT N'Student Name',
    Birthday DATE,
    Gender BIT,
    PhoneNumber CHAR(10) DEFAULT '090677xxxx',
    Address NVARCHAR(100) DEFAULT N'Ho Chi Minh',
    IdClass CHAR(10), 

    PRIMARY KEY(IdStudent)
)
-- Tạo khóa ngoại sau khi khởi tạo bảng 
ALTER TABLE dbo.Student ADD CONSTRAINT FK_Student FOREIGN KEY (IdClass) REFERENCES dbo.Class(IdClass)
GO

-- FOREIGN KEY : Khóa ngoại, dùng để bảo đảm tính toàn vẹn dũ liệu, không có trường hợp tham chiếu tới dữ liệu không tồn tại 
-- Tham chiếu tới khóa chính
-- Unique, not null 
-- Cùng kiểu dữ liệu với khóa chính 
-- Cùng số trường dữ liệu có sắp xếp 

-- xóa khóa ngoại 
ALTER TABLE dbo.Student DROP CONSTRAINT FK_Student;
-- xóa DB 
-- DROP DATABASE UniversityDB;



-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Student]
( -- Columns to insert data into
 [IdStudent], [Name],[Birthday],[Gender],[PhoneNumber],[Address],[IdClass]
)
VALUES
( -- First row: values for the columns in the list above
 1911062505, N'Lê Thái Khôi Nguyên','20010914', 1, '0938698391','702 Le Duc Tho','A1209'
),
( -- Second row: values for the columns in the list above
 2282300108, N'Ngô Thị Kim Bình','20041024',0, '0356401579','201 Nguyen Xi', 'A1209'
)
-- Add more rows here
GO
