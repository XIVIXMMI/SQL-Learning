CREATE DATABASE SQLDBQuery
GO

USE SQLDBQuery 
GO

-- Create table
CREATE TABLE Teacher
(
    Id NVARCHAR(10),
    Name NVARCHAR(100)
)
GO

CREATE TABLE Student
(
    Id NVARCHAR(10),
    Name NVARCHAR(100)
)
GO

-- Edit table
ALTER TABLE Student ADD Birthday DATE

-- Delete table 
DROP TABLE Student
GO

