-- VIEW 

-- Tạo ra 1 bảng lưu thông tin giáo viên tên bộ môn và lương của giáo viên

SELECT HOTEN, TENBM, LUONG
INTO LuongGV
FROM GIAOVIEN, BOMON
WHERE GIAOVIEN.MABM = BOMON.MABM

UPDATE GIAOVIEN SET LUONG = 6000
WHERE MAGV = '006'

select * from GIAOVIEN

-- View là bảng ảo cập nhật dữ liệu theo bảng mà view truy vấn tới mỗi khi lấy view sử dụng 

-- tạo ra view TestView từ câu truy vấn
CREATE VIEW TestView AS
SELECT * FROM GIAOVIEN


SELECT * FROM TestView

-- xóa view 
DROP VIEW TestView

-- sửa view 
ALTER VIEW TestView AS
SELECT HOTEN FROM GIAOVIEN


-- tạo view có dấu 
CREATE VIEW [Giáo dục miễn phí] AS
select * from KHOA

SELECT * FROM [Giáo dục miễn phí]

-- Là bảng ảo và cập nhật theo dữ liệu truy vấn 