-- INSERT INTO SELECT : Copy dữ liệu vào 1 bảng đã tồn tại 

SELECT * INTO CloneGV
FROM dbo.GIAOVIEN
where 1 = 0

INSERT INTO CloneGV
SELECT * FROM dbo.GIAOVIEN

-- tạo 1 bảng cloneGV rỗng và bắt đầu thêm dữ liệu vào bằng INSERT INTO ( thêm toàn bộ dữ liệu của GIAOVIEN vào CloneGV)
-- nghĩa là từ 1 bảng có sẵn và đưa dữ liệu từ bảng khác vào
-- lưu ý trường dữ liệu phải tương đồng mới đưa vào được 
-- có thể đưa vào từ nhiều hoặc 1 trường dữ liệu của các bảng khác nhau 