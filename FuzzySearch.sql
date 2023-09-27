-- Tìm kiếm gần đúng 

-- xuất ra thông tin giáo viên mà tên bắt đầu bằng chữ L
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN like 'l%'

-- xuất ra thông tin giáo viên kết thúc bằng N
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN like '%n'

-- xuất ra thông tin giáo viên có tồn tại chữ N 
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN like '%n%'

-- xuất ra thông tin giáo viên có tồn tại chữ ế
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN like N'%ế%'