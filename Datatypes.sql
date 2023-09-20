-- Các kiểu dữ liệu thường dùng
-- int : số nguyên, tập hợp N Ex: -9,8,2,1,0
-- float : số thực tập hợp R Ex: 0,1 ; 0,2; 9,4;
-- char : kiểu ký tự, bộ nhớ cấp phát cứng , Ex: A a B b C c , char(10) => dù có dữ liệu hay không vẫn sử dụng 10 ô nhớ
-- varchar : kiểu ký tự, bộ nhớ cấp phát động Ex: varchar(10) => chỉ lấy khi có dữ liệu bên trong 
-- nchar : kiểu ký tự có thể lưu ký tự unicode, bộ nhớ cấp phát cứng 
-- nvarchar : kiểu ký tư có thể lưu ký tự unicode, bộ nhớ cấp phát động.
-- date : lưu trữ ngày tháng năm giờ
-- time : lưu trữ giờ phút giây ...
-- bit : lưu giá trị 0 và 1
-- text : lưu văn bản lớn
-- ntext : lưu văn bản lớn có chứa ký tự unicode

CREATE TABLE Employee(
    Id CHAR(10), -- Khai báo trường dữ liệu kiểu char cấp phát 10 ô nhớ cứng
    Name NVARCHAR(50), -- khai báo trường dữ liệu kiểu nvarchar cấp phát 50 ô nhớ động 
    Gender BIT, -- giá trị lưu 1 hoặc 0
    Birthday DATE,
    Note text
)

-- Id lưu 10 ô nhớ, Id = "1911062505DTHJA1" --> kết quả lưu trữ sẽ cắt về bên trái hay bên phải ?
-- Id = "1911062505" or Id = "2505DTHJA1" ?