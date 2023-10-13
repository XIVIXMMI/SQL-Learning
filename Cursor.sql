-- Cursor 

-- Khi có nhu cầu duyệt từng record của bảng. Với mỗi record có kết quả xử lý riêng thì dùng cursor
-- Open <Tên con trở>

-- FETCH NEXT FROM  <tên con trỏ> INTO <Danh sách các biến tương ứng kết quả truy vấn >

-- WHILE @@FETCH_STATUS = 0
-- BEGIN 
-- Câu lệnh thực hiện 
-- FETCH NEXT lại lần nữa
-- FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng kết quả truy vấn >
-- END

-- CLOSE <tên con trỏ>
-- DEALLOCATE <tên con trỏ>

--------------------------------------------------------------------------------------------------------------
-- Từ tuổi của giáo viên 
-- Nếu lớn hơn 40 thì luong là 2500
-- Nếu nhỏ hơn 40 và lớn hơn 30 thì lương là 2000
-- Ngược lại lương là 1500

-- Lấy danh sách mã giáo viên và tuổi đưa vào con trỏ GiaoVienCursor
DECLARE GiaoVienCursor CURSOR FOR SELECT MAGV, YEAR(GETDATE()) - YEAR(NGSINH) FROM GIAOVIEN

OPEN  GiaoVienCursor

DECLARE @MaGV Char(10)
DECLARE @Tuoi INT

FETCH NEXT FROM GiaoVienCursor INTO @MaGV, @Tuoi

WHILE  @@FETCH_STATUS = 0
BEGIN 
    IF @Tuoi > 40 
    BEGIN
        UPDATE GIAOVIEN SET LUONG = 2500 WHERE MAGV = MAGV
    END
    ELSE
    IF @Tuoi > 30 
    BEGIN
        UPDATE GIAOVIEN SET LUONG = 2000 WHERE MAGV = MAGV
    END
    ELSE
    BEGIN
        UPDATE GIAOVIEN SET LUONG = 1500 WHERE MAGV = MAGV
    END
    FETCH NEXT FROM GiaoVienCursor INTO @MaGV, @Tuoi
END

CLOSE GiaoVienCursor

DEALLOCATE GiaoVienCursor

select * from GIAOVIEN

-- Hạn chế sử dụng con trỏ vì tốc độ chậm 