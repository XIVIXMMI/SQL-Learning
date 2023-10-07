-- CHECK :  Đặt điều kiện cho dữ liệu nằm trong pham vi mong muốn 

-- TH1
CREATE TABLE testCheck
(
    Id INT PRIMARY KEY IDENTITY,
    Luong INT CHECK (Luong > 3000 AND Luong < 9000)
)
GO

INSERT testCheck
        (Luong)
VALUES (3500)


-- TH2
CREATE TABLE testCheck
(
    Id INT PRIMARY KEY IDENTITY,
    Luong INT 
    CONSTRAINT CK_LUONG CHECK (Luong > 3000 AND Luong < 9000)
)
GO

-- TH3
CREATE TABLE testCheck
(
    Id INT PRIMARY KEY IDENTITY,
    Luong INT 
)
GO

ALTER TABLE testCheck ADD CONSTRAINT CK_LUONG 
CHECK (Luong > 3000 AND Luong < 9000)
