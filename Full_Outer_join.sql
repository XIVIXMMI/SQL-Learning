-- FULL OUTER JOIN 
-- gom 2 bảng lại theo điều kiện, bên nào không có dữ liệu thì để null.
SELECT *
FROM dbo.GIAOVIEN FULL OUTER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

-- CROSS JOIN 
-- là tổ hợp mỗi record của bảng A vào all record của bảng B

SELECT * FROM dbo.GIAOVIEN CROSS JOIN dbo.BOMON