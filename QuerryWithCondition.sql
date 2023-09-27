USE HowKteam
GO

SELECT GV.MAGV, GV.HOTEN, NT.TEN
FROM dbo.GIAOVIEN AS GV,dbo.NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

SELECT *
FROM dbo.GIAOVIEN
WHERE LUONG > 2000
GO

SELECT *
FROM dbo.GIAOVIEN
WHERE PHAI = N'Nữ' AND LUONG > 2000
GO

SELECT GV.HOTEN,GV.NGSINH, YEAR(getdate()) - YEAR(NGSINH) AS 'Tuổi'
FROM dbo.GIAOVIEN AS GV
WHERE YEAR(getdate()) - YEAR(NGSINH) > 40
GO
-- getdate, lấy ngày hiện tại 

-- lấy ra giáo viên là trưởng bộ môn 
SELECT *
FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM
WHERE GV.MAGV = BM.TRUONGBM
GO

-- Đếm số lượng người thân của giáo viên 
-- COUNT(*) => đếm số lượng của tất cả record
-- COUNT(tên trường) => đếm số lượng của trường đó 
SELECT COUNT(*) AS N'Số lượng giáo viên'
FROM dbo.GIAOVIEN
GO
-- Đếm số lượng người thân của giáo viên có mã gv là 007
SELECT COUNT(*)
FROM dbo.GIAOVIEN AS GV,dbo.NGUOITHAN AS NT
WHERE GV.MAGV = 007 AND GV.MAGV = NT.MAGV
GO

-- Lấy ra tên giáo viên và tên đề tài giáo viên tham gia 
SELECT GV.HOTEN,DT.TENDT
FROM dbo.GIAOVIEN AS GV, dbo.DETAI AS DT, dbo.THAMGIADT AS TG
WHERE  TG.MADT = DT.MADT AND GV.MAGV = TG.MAGV
GO

-- Lấy ra tên giáo viên và tên đề tài giáo viên tham gia khi mà ng đó tham gia nhiều hơn 1 đề tài
SELECT GV.HOTEN,DT.TENDT
FROM dbo.GIAOVIEN AS GV, dbo.DETAI AS DT, dbo.THAMGIADT AS TG
WHERE  TG.MADT = DT.MADT AND GV.MAGV = TG.MAGV
GO

-- xuất ra thông tin và thông tin giáo viên chủ nhiệm của người đó 
SELECT gv1.HOTEN, gv2.HOTEN
FROM dbo.GIAOVIEN AS GV1, dbo.GIAOVIEN AS GV2
WHERE gv1.GVQLCM = gv2.MAGV
-- xuất ra số lượng giáo viên khoa công nghệ thông tin
SELECT COUNT(*)
FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM, dbo.KHOA AS KA
WHERE  KA.MAKHOA = 'CNTT' AND BM.MAKHOA = KA.MAKHOA AND GV.MABM = BM.MABM
-- xuất ra thông tin giáo viên và đề tài người đó tham gia khi mà kết quả là đạt 
SELECT GV.*
FROM dbo.GIAOVIEN AS GV, dbo.DETAI AS DT, dbo.THAMGIADT AS TG
WHERE TG.KETQUA = N'Đạt' 
AND DT.MADT = TG.MADT 
AND TG.MAGV = GV.MAGV


