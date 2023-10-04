-- GROUP BY HAVING

-- xuất ra giáo viên trong từng bộ môn mà số giáo viên > 2
-- HAVING -> giống như WHERE của SELECT nhưng dùng cho GROUP BY
-- HAVING là mệnh đề điều kiện cho GROUP BY 
SELECT BM.MABM, COUNT(*)
FROM GIAOVIEN AS GV, BOMON AS BM
WHERE GV.MABM = BM.MABM 
GROUP BY BM.MABM 
HAVING COUNT(*) > 2

-- xuất ra mức lương và tổng tuổi của giáo viên nhận mức lương đó
-- và có người thân  
-- và tuổi phải lớn hơn tuổi trung bình 
SELECT LUONG, SUM(YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH))
From GIAOVIEN,NGUOITHAN
WHERE GIAOVIEN.MAGV = NGUOITHAN.MAGV
AND GIAOVIEN.MAGV IN (SELECT MAGV FROM NGUOITHAN )
GROUP BY LUONG, GIAOVIEN.NGSINH
HAVING SUM(YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH)) > (
    SELECT SUM(SUM(YEAR(GETDATE()) - YEAR(GIAOVIEN.NGSINH))
    FROM GIAOVIEN)
    /(SELECT COUNT(*) FROM GIAOVIEN)
)