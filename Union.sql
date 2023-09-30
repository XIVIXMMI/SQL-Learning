-- UNION 

SELECT MAGV
FROM dbo.GIAOVIEN

SELECT MAGV 
FROM dbo.NGUOITHAN

SELECT MAGV
FROM dbo.GIAOVIEN
WHERE LUONG < 2500
UNION
SELECT MAGV 
FROM dbo.NGUOITHAN
WHERE PHAI = N'Nữ'

-- UNION kết hợp các phần tử từ SELECT thành 1 tập hợp duy nhất loại bỏ các record trùng lặp
