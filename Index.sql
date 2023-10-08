-- Indexes

-- tạo index trên bảng NGUOITHAN
-- Tăng tốc độ tìm kiếm nhưng chậm tốc độ thêm xóa sửa 

-- Cho phép các trường trùng nhau
CREATE INDEX IndexName ON NGUOITHAN(MAGV)


-- Không cho phép các trường trùng nhau
CREATE UNIQUE INDEX IndexNameUnique ON NGUOITHAN(MAGV)

DECLARE @i int = 1
WHILE (@i < 100000)
BEGIN 
    INSERT NGUOITHAN
            (MAGV,TEN,NGSINH,PHAI)
    VALUES (N'001',N'Tes' + CAST(@i as NCHAR(12)),
            GETDATE(),
            N'Nam'
            )
    SET @i += 1
END

SELECT * FROM NGUOITHAN