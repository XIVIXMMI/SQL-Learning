-- DECLARE

-- tìm ra giáo viên có lương cao nhất
SELECT MAGV FROM GIAOVIEN WHERE LUONG = (SELECT MAX(LUONG) FROM GIAOVIEN)

-- Lấy ra tuổi của giáo viên với Mã GV 001
SELECT YEAR(GETDATE()) - YEAR(NGSINH) FROM GIAOVIEN WHERE MAGV = '001'

-- Xuất ra tuổi của GV có lương cao nhất
SELECT YEAR(GETDATE()) - YEAR(NGSINH) FROM GIAOVIEN 
WHERE MAGV = (SELECT MAGV FROM GIAOVIEN WHERE LUONG = (SELECT MAX(LUONG) FROM GIAOVIEN))

------------------------------------------------------------------------------------------

-- Tạo ra một biến kiểu char lưu mã giáo viên lương thấp nhất
DECLARE @MinSalaryMAGV CHAR(10)

SELECT @MinSalaryMAGV = MAGV FROM GIAOVIEN WHERE LUONG = (SELECT MAX(LUONG) FROM GIAOVIEN)

SELECT YEAR(GETDATE()) - YEAR(NGSINH) FROM GIAOVIEN 
WHERE MAGV = @MinSalaryMAGV

------------------------------------------------------------------------------------------
-- Khởi tạo với kiểu dữ liệu
-- Biến bắt đầu bằng ký hiệu @
DECLARE @i INT 

-- Khởi tạo với giá trị mặc định
DECLARE @j INT = 0

-- set dữ liệu cho biến
SET @i = @i + 1
SET @i += 1
SET @j += @i

-- set thông qua select
DECLARE @MaxSalary INT 

SELECT @MaxSalary = MAX(LUONG) FROM GIAOVIEN
------------------------------------------------------------------------------------------
-- 1. Xuất ra số lượng người thân của giáo viên 001

-- Lưu mã GV 001
-- Tìm ra số lượng người thân tương ứng MAGV
  
DECLARE @MAGV char(10) = '003'

SELECT COUNT(*) FROM NGUOITHAN WHERE MAGV = @MAGV

-- Xuất ra tên GV có lương thấp nhất
DECLARE @MinLuong INT 
DECLARE @Name NVARCHAR(100)

SELECT @MinLuong = MIN(LUONG) FROM GIAOVIEN
SELECT @Name = HoTen From GIAOVIEN WHERE LUONG = @MinLuong

PRINT @Name
-- chỉ print đc giá trị đơn chứ không xuất đc câu truy vấn 

