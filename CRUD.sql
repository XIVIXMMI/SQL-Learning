CREATE TABLE People(
    Id INT,
    Name NVARCHAR(50),
    Birthday DATE,
    Gender BIT,
    Address CHAR(100),
    Salary FLOAT,
)
 INSERT [dbo].[People](
    Id  ,
    Name    ,
    Birthday    ,
    Gender  ,
    Address ,
    Salary  
    )
VALUES(
    8,
    N'Lê Thái Khôi Nguyên',
    '20010914',
    1,
    '702 Le Duc Tho',
    184.63
)



INSERT [dbo].[People]
VALUES(
    10,
    N'Nguyễn Thị Thanh Thủy',
    '20060805',
    0,
    'Ngu Hanh Son',
    82.06
)
INSERT [dbo].[People]
VALUES(
    3,
    N'Lê Ngọc Thanh Vy',
    '20010108',
    0,
    'QL22',
    205.15
)
INSERT [dbo].[People]
VALUES(
    7,
    N'Trần Gia Nghi',
    '20010904',
    0,
    '69 Nguyen Cuu Dam',
    184.63
)
INSERT [dbo].[People]
VALUES(
    2,
    N'Trần Đình Sang',
    '20010702',
    1,
    'QL22',
    369.27
)
INSERT [dbo].[People]
VALUES(
    4,
    N'Ngô Thị Kim Bình',
    '20041024',
    0,
    '201 Nguyen Xi',
    123.09
)
INSERT [dbo].[People]
VALUES(
    11,
    N'Nguyễn Vũ Minh Anh',
    '20001026',
    0,
    'Thi Tran',
    0
)

-- xóa toàn bộ dữ liệu của bảng
DELETE [dbo].People 
--Xóa dữ liệu bảng với điều kiện
DELETE [dbo].People WHERE Id < 5 AND Salary > 200 

-- cập nhật toàn bộ bảng với 1 trường salary = 1000$
UPDATE [dbo].People SET Salary = 1000.00 
-- cập nhật toàn bộ bảng với nhiều trường dữ liệu 
UPDATE [dbo].People SET Salary = 1299.99, Address = 'Ho Chi Minh' 
-- Cập nhật bản với điều kiện
UPDATE [dbo].People SET Salary = 1999.99 WHERE Gender = 1








-- thêm dữ liệu
-- Kiểu số => số bình thường không cần để trong cặp nháy đơn
-- kiểu ký tự hoặc ngày cần để trong cặp nháy đơn ''
-- nếu là unicode thì cần N trước cặp nháy đơn N''
INSERT dbo.Student
        (Id, Name, Birthday)
VALUES  (N'1911062505', -- Id - nvarchar(10)  
         N'Lê Thái Khôi Nguyên', -- Name - nvarchar(100)
         '20010914' -- Birthday - date                            
        )