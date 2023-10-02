 -- Truy vấn lồng 


 -- Kiểm tra xem giáo viên 001 có phải là giáo viên chủ nhiệm hay không 
SELECT *
FROM dbo.GIAOVIEN
WHERE MAGV = '001'
/*001 tồn tại trong danh sách */
AND MAGV IN (
    SELECT GVQLCM FROM dbo.GIAOVIEN
)

-- truy vấn lồng trong from 
SELECT * from dbo.GIAOVIEN, (Select * from dbo.DETAI) AS DT

-- 1. Xuất ra danh sách giáo viên tham gia nhiều hơn 1 đề tài 

-- Lấy ra tất cả những thông tin của giáo viên 
SELECT * from dbo.GIAOVIEN AS GV
-- Khi mà số lượng đề tài giáo viên tham gia lớn hơn 1
WHERE 1 < (
    SELECT COUNT(*) FROM dbo.THAMGIADT
    WHERE MAGV = GV.MAGV
)

-- 2. Xuát ra thông tin của Khoa có nhiều hơn 2 giáo viên 

-- Lấy ra danh sách bộ môn nằm trong khoa hiện tại 
SELECT * from KHOA AS K
WHERE 2 < (
    SELECT COUNT(*) FROM GIAOVIEN AS GV, BOMON AS BM
    WHERE BM.MAKHOA = K.MAKHOA
    AND BM.MABM = GV.MABM
)


-- sắp xếp giảm dần
Select MAGV from GIAOVIEN
ORDER by MAGV DESC
-- sắp xếp tăng dần
Select MAGV from GIAOVIEN
ORDER by MAGV ASC
-- Lấy ra top 5 phần tử
SELECT TOP(5) * from GIAOVIEN

/*
Bài tập:
1. Xuất ra thông tin giáo viên có 2 người thân
2. Xuất ra danh sách các giáo viên lớn tuổi hơn ít nhất 5 người trong các giáo viên tại trường
-- Lấy ra danh sách (MaGV,Tuoi) as GVT
-- sắp xếp giảm dần 
-- lấy ra danh sách GVT2 với số lượng phần tử = count(*)/2
-- Kiểm tra mã giáo viên tồn tại trong GVT2 là đúng 
*/