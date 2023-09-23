-- PRIMARY KEY
-- IDENTITY : Dùng để định danh 
-- UNIQUE : Duy nhất, không bị trùng giá trị
-- Tiền đề để khóa ngoại tham chiếu tới 
-- NOT NULL 
-- Khóa chính có thể là 1 cột duy nhất hoặc tập hợp các cột được gọi là COMPOSITE PRIMARY KEY

-- Tạo khóa chính ngay trong khi tạo bảng 
CREATE TABLE PrimaryKeyTest1(
    Id INT IDENTITY PRIMARY KEY, 
    Name NVARCHAR(100) UNIQUE NOT NULL,-- UNIQUE: trong trường nào có UNIQUE thì không thể có 2 giá trị trùng nhau 
)
GO 

CREATE TABLE PrimaryKeyTest2(
    Id INT NOT NULL,
    Name NVARCHAR(100) UNIQUE NOT NULL,

    CONSTRAINT PK_Test2 -- dễ xóa về sau 
    PRIMARY KEY (Id)
)
GO 

CREATE TABLE PrimaryKeyTest3(
    Id INT NOT NULL,
    Name NVARCHAR(100) DEFAULT N'Xin Chào',
)
GO 
ALTER TABLE dbo.PrimaryKeyTest3 
ADD CONSTRAINT PK_Test4 
PRIMARY KEY (Id)

-- Tạo khóa chính với 2 trường dữ liệu 
CREATE TABLE PrimaryKeyTest4(
    ID1 INT NOT NULL,
    ID2 INT NOT NULL,
    Name NVARCHAR(100) DEFAULT N'Xin Chào'

    PRIMARY KEY (ID2, ID1)
)

-- Khi đã tạo bảng và cần set khóa chính 
ALTER TABLE dbo.People ADD PRIMARY KEY (Id)