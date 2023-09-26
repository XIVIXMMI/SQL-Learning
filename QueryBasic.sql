USE HowKteam
GO
-- lấy toàn bộ dữ liệu của bảng BOMON
SELECT * FROM dbo.BOMON
-- lấy mã đề tài + tên đề tài
SELECT MABM, TENBM FROM dbo.BOMON
-- Đổi tên cột hiển thị
SELECT MABM as N'Mã bộ môn', TENBM as N'Tên bộ Môn' FROM dbo.BOMON

SELECT * FROM dbo.GIAOVIEN, BOMON 
-- 1 , 2 , 3
-- A , B
-- 1 - A
-- 2 - A
-- 3 - A
-- 1 - B
-- 2 - B
-- 3 - B 

-- xuất ra mã gv + tên gv + tên bộ môn của gv
SELECT GV.MAGV, GV.HOTEN, BM.TENBM 
FROM DBO.GIAOVIEN AS GV, DBO.BOMON AS BM

-- TRUY XUẤT THÔNG TIN CỦA BẢNG THAM GIA ĐỀ TÀI
SELECT * FROM dbo.THAMGIADT
-- LẤY RA MÃ KHOA VÀ TÊN KHOA TƯƠNG ỨNG
SELECT Tenkhoa AS N'Tên Khoa', makhoa AS N'Mã Khoa'  FROM [dbo].[KHOA]
GO
-- LẤY RA HỌ MÃ GV, TÊN GV VÀ HỌ TÊN NGƯỜI THÂN TƯƠNG ỨNG
SELECT GV.MAGV,GV.HOTEN,NT.TEN FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT
GO
-- LẤY RA MÃ GV, TÊN GV VÀ TÊN KHOA CỦA GV ĐÓ LÀM VIỆC: BỘ MÔN NẰM TRONG KHOA 
SELECT GV.MAGV,GV.HOTEN,KA.TENKHOA
FROM dbo.GIAOVIEN AS GV, dbo.KHOA AS KA,dbo.BOMON AS BM
GO
