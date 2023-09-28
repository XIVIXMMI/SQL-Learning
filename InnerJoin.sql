-- INNER JOIN : kết hợp 2 trường của 2 bản thỏa mãn điều kiện. 
SELECT * 
FROM dbo.GIAOVIEN INNER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

-- JOIN phải bắt buộc có thêm điều kiện ON vào
-- có thể viết tắt inner join thành join 
SELECT * 
FROM dbo.KHOA JOIN dbo.BOMON
ON BOMON.MAKHOA = KHOA.MAKHOA