-- LOOP


Use HowKteam
Go

DECLARE @i INT = 0 
DECLARE @n INT = 10000

-- Điều kiện thực hiện 
WHILE (@i < @n)
BEGIN
    INSERT testCheck
    ( 
     Luong
    )
    VALUES
    (
     @i 
    )
    SET @i += 1
END

SELECT * from testCheck

-- Insert 10000 record vào bảng BoMon
-- Mà không trùng ID
-- Tên bộ môn tăng dần

DECLARE @i INT = 100
DECLARE @n INT = 10100

-- Điều kiện thực hiện 
WHILE (@i < @n)
BEGIN
    -- Insert rows into table 'TableName' in schema '[dbo]'
    INSERT INTO [dbo].[BOMON]
    ( -- Columns to insert data into
     [MABM], [TENBM], [PHONG],[DIENTHOAI],[TRUONGBM],[MAKHOA],[NGAYNHANCHUC]
    )
    VALUES
    ( -- First row: values for the columns in the list above
     @i, @i, 'A10','035 6401579', null, N'CNTT',GETDATE()
    )
    
    SET @i += 1
END
SELECT * FROM BOMON