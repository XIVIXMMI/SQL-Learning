-- Store procedure

/*
- Là chương trình hay thủ tục 
- có thể dùng TRANSACT-SQL EXECUTE (EXEC) để thực thi các stored procedure
- stored procedure khác với các hàm xử lý ở chỗ giá trị của chúng (không có giá trị trả về)
- không chứa trong tên và chúng không được sử dụng trực tiếp trong biểu thức

TÍNH CHẤT: 
Động: có thể chỉnh sửa khối lệnh, tái sử dụng code 
Nhanh hơn: tự phân tích cú pháp cho tối ưu, và tạo bản sao để lần sau không cần phải thực thi lại từ đầu
Bảo mật: giới hạn quyền cho user nào sử dụng, user nào không sử dụng
Giảm bandwidth: với gói transaction lớn , vài ngàn dòng code thực hiện cùng lúc thì dùng store để đảm bảo

Cú pháp: 

CREAT PROC <Tên Procedure>
[Parameter nếu có]

AS
BEGIN
    <Code xử lý>
END

nếu chỉ là câu truy vấn thì không cần begin và end 
*/

CREATE PROC USP_Test
@MaGV NVARCHAR(10), @Luong INT
AS 
BEGIN
    SELECT * FROM GIAOVIEN where MAGV = @MaGV AND LUONG = @Luong
END
GO

EXEC USP_Test @MaGV = N'', @Luong = 0

EXEC USP_Test N'',0

EXECUTE USP_Test @MaGV = N'', @Luong = 0

EXECUTE USP_Test N'',0
GO

CREATE PROC USP_SellectAllGV 
AS SELECT * FROM GIAOVIEN
GO

EXEC USP_SellectAllGV