-- Kiểu dư liệu tự định nghĩa 

-- EXEC sp_addtype 'Tên kiểu dữ liệu', 'Kiểu dữ liệu thực tế', 'Not Null'(có hay không đều đc)
-- Kiểu dữ liệu đc tạo sẽ lưu trong Programmability/Types/User-Defined Data Types

EXEC sp_addtype 'NNAME','nvarchar(100)','Not Null'

CREATE TABLE TestType1(
    Name NNAME,
    Address NVARCHAR(500)
)
GO

EXEC sp_addtype 'NADDRESS','nvarchar(500)'

CREATE TABLE TestType2(
    Name NNAME,
    Address NADDRESS
)

-- Xóa type: trước khi xóa kiểu dữ liệu thì phải đảm bảo không có bảng nào sử dụng kiểu dữ liệu này
EXEC sp_droptype 'NADDRESS'




