-- SELECT INTO 


-- Lấy hết dữ liệu của bảng GV đưa vào bảng mới 'TableA'
-- Bảng này có các record tương ứng như bảng GV 
SELECT * INTO TableA
FROM dbo.GIAOVIEN

-- Tạo ra 1 bảng TableB mới có 1 cột dữ liệu là HoTen tương ứng như là bảng GV
-- Dữ liệu của bảng TableB lấy từ GV ra
-- Điều kiện lương > 2000 
SELECT HoTen INTO TableB
FROM dbo.GIAOVIEN
WHERE LUONG > 2000

-- tạo 1 bảng mới từ nhiều bảng
SELECT MAGV,HOTEN,TENBM INTO GVBackup 
FROM dbo.GIAOVIEN, dbo.BOMON
WHERE BOMON.MABM = GIAOVIEN.MABM

-- Tạo 1 bảng GVBK nhưng không có dữ liệu
SELECT * INTO GVBK FROM dbo.GIAOVIEN WHERE 6 > 9
-- Dù sai điều kiện nhưng record trả về vẫn tạo ra 1 bảng mới, rỗng không có dữ liệu 