-- AUTO INCREASE

CREATE TABLE testAuto
(
    ID INT PRIMARY KEY IDENTITY, -- tự tăng trường này (phải là số). Mặc định bắt đầu từ 1 và tăng 1 đơn vị
    Name NVARCHAR(100)
)
GO

INSERT [dbo].[testAuto]
( [Name])
VALUES
( N'Lê Thái Khôi Nguyên')
GO

INSERT [dbo].[testAuto]
( [Name])
VALUES
( N'Lê Ngọc Thanh Vy')
GO


INSERT [dbo].[testAuto]
( [Name])
VALUES
( N'Minh Anh')
GO

INSERT [dbo].[testAuto]
( [Name])
VALUES
( N'Khản Nhi')
GO

CREATE TABLE testAuto2
(
    ID INT PRIMARY KEY IDENTITY(5,10), -- tự tăng bắt đầu từ 5 mỗi lần tăng 10 đơn vị 
    Name NVARCHAR(100)
)
GO 
INSERT testAuto2 (Name) VALUES(N'ABC')
INSERT testAuto2 (Name) VALUES(N'ABC')
INSERT testAuto2 (Name) VALUES(N'ABC')
INSERT testAuto2 (Name) VALUES(N'ABC')
INSERT testAuto2 (Name) VALUES(N'ABC')

SELECT * FROM testAuto