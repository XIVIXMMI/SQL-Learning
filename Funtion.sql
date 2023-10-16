-- FUNCTION

-- Tạo function không có parameter
CREATE FUNCTION UF_SellectAllGiaoVien()
RETURNS TABLE
AS RETURN SELECT * FROM GIAOVIEN
GO

-- sử dụng function
select * from UF_SellectAllGiaoVien()
GO

-- Tạo function có parameter
CREATE FUNCTION UF_SellectSalary(@MaGV Char(10))
RETURNS INT 
AS 
BEGIN 
    DECLARE @Luong INT 
    select @Luong = LUONG From GIAOVIEN WHERE MAGV = @MaGV
    RETURN @Luong
END
GO
-- sử dụng function
SELECT dbo.UF_SellectSalary('006') AS Salary
GO
-- sử dụng function
SELECT dbo.UF_SellectSalary(MaGV) AS Salary FROM GIAOVIEN
GO

-- hủy function
DROP FUNCTION UF_SellectSalary
GO
-- Sửa function
ALTER FUNCTION UF_SellectSalary(@MaGV Char(10))
RETURNS INT 
AS 
BEGIN 
    DECLARE @Luong INT 
    select @Luong = LUONG From GIAOVIEN WHERE MAGV = @MaGV
    RETURN @Luong
END
GO
----------------------------------------------------------------------------------------------------------------
-- Tạo 1 function tính một số truyền vào có phải là số chẵn hay không
CREATE FUNCTION UF_IsOdd(@Num int)
RETURNS NVARCHAR(20)
AS 
BEGIN
    IF (@Num % 2 = 0)
        RETURN N'Số chẵn'
    ELSE 
        RETURN N'Số Lẻ'

    RETURN N'Không xác định'
END
GO

SELECT dbo.UF_IsOdd(6) AS N'Kết quả'
GO

SELECT YEAR(GETDATE()) - YEAR(NGSINH), dbo.UF_IsOdd(YEAR(GETDATE()) - YEAR(NGSINH)) AS N'Years Old' FROM dbo.GIAOVIEN
GO

select * from GIAOVIEN