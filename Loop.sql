-- LOOP

-- Insert 10000 record vào bảng BoMon
-- Mà không trùng ID
-- Tên bộ môn tăng dần

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
