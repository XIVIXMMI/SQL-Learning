USE HowKteam
GO

-- Trigger sẽ được gọi mỗi khi có thao tác thay đổi với bảng 
-- INSERTED: Chứa những trường đã insert OR update vào bảng
-- DELETED: Chứa những trường đã bị xóa khỏi bảng

-- Tạo trigger
CREATE TRIGGER UTG_InsertGV ON dbo.GIAOVIEN
FOR INSERT, UPDATE
AS
BEGIN
    -- ROLLBACK TRAN
    PRINT 'TRIGGER'
END
GO
-- Sửa trigger
ALTER TRIGGER UTG_InsertGV ON dbo.GIAOVIEN
FOR INSERT, UPDATE
AS
BEGIN
    -- ROLLBACK TRAN -- Hủy bỏ thay đổi cập nhật bảng 
    PRINT N'Đã chỉnh sửa bảng'
END
GO

-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT [dbo].[GIAOVIEN]
( -- Columns to insert data into
 [MaGV], [HOTEN], [LUONG],[PHAI],[NGSINH],[DIACHI],[GVQLCM],[MABM]
)
VALUES
( -- First row: values for the columns in the list above
 N'241', N'Ngô Thị  Kim Bình', 1400.0,N'Nữ','2004-10-24',N'201 Nguyễn Xí, Bình Thạnh',null,N'CNTT'
),
( -- Second row: values for the columns in the list above
 N'508', N'Nguyễn Thị Thanh Thủy', 1500.0,N'Nữ','2006-08-05',N'Ngũ Hành Sơn, Đà Nẵng',null,N'CNTT'
)
-- Add more rows here
GO

select * from GIAOVIEN
GO
------------------------------------------------------------------------------------------------------------------------------------
-- Không cho phép xóa thông tin của giáo viên có tuổi lớn hơn 40 
ALTER TRIGGER UTG_AbortOlderThan20
ON dbo.GIAOVIEN
FOR DELETE
AS
BEGIN
    DECLARE @Count INT = 0
    SELECT @Count = Count(*) FROM deleted
    WHERE YEAR(GETDATE()) - YEAR(deleted.NGSINH) < 20
    IF  (@Count > 0)
    BEGIN
    PRINT N'Không được xóa người nhỏ hơn 20 tuổi'
    ROLLBACK TRAN 
    END
END 
GO

DELETE GIAOVIEN WHERE YEAR(GETDATE()) - year(NGSINH) < 20

select * from GIAOVIEN WHERE YEAR(GETDATE()) - year(NGSINH) < 20