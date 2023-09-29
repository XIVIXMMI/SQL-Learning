-- LEFT JOIN
SELECT *
FROM dbo.BOMON LEFT JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM
-- LEFT JOIN giữ hết tất cả các bảng ghi (record) của bảng bên trái,
-- ví dụ như trên, bên phải là bảng giáo viên trái là bộ môn
-- dữ liệu 2 bảng được gom lại nếu dữ liệu nào bên phải có mà trái ko có
-- thì bảng bên phải sẽ là null
-- bên trái có mà bên phải không có sẽ không trả ra kết quả!


-- RIGHT JOIN 
SELECT *
FROM dbo.BOMON RIGHT JOIN dbo.GIAOVIEN
ON BOMON.MABM = GIAOVIEN.MABM

-- được xem như 1 bảng chính và 1 bảng phụ
-- nếu là LEFT JOIN thì từ bảng bên phải sẽ nhập vào bảng bên trái 
-- nếu là RIGHT JOIN thì bảng bên trái sẽ nhập vào bảng bên phải 
-- Đôi khi chỉ cần đổi vị trí bảng với nhau cũng giống left - right join rồi

-- Tóm lại chỉ cần hiểu
-- LEFT JOIN: Bảng bên phải nhập vào bảng bên trái
-- record nào bảng phải không có thì để null
-- record nào bảng trái không có thì để trống