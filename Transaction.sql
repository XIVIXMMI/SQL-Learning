-- TRANSACTION 

SELECT * FROM NGUOITHAN WHERE TEN = 'Tes100042'

BEGIN TRANSACTION
DELETE NGUOITHAN WHERE TEN = 'Tes100042'
-- Giả dụ đây là 1 chuỗi thao tác phức tạo
ROLLBACK -- Hủy bỏ transaction 

BEGIN TRANSACTION
DELETE NGUOITHAN WHERE TEN = 'Tes100042'
-- Giả dụ đây là 1 chuỗi thao tác phức tạo
COMMIT -- chấp nhận transaction 


-- Đặt tên cho TRANSACTION 
DECLARE @trans1 VARCHAR(20)
SELECT @trans1 = 'Trans1'
BEGIN TRANSACTION @Trans1
DELETE NGUOITHAN WHERE TEN = 'Tes100042'
-- Giả dụ đây là 1 chuỗi thao tác phức tạo
COMMIT TRANSACTION @Trans1 -- chấp nhận transaction 
--------------------------------------------------------------------------------------------------
-- SAVE POINT
BEGIN TRANSACTION

SAVE TRANSACTION Trans1
DELETE NGUOITHAN WHERE TEN = 'Tes100000'

SAVE TRANSACTION Trans2
DELETE NGUOITHAN WHERE TEN = 'Tes100001'
ROLLBACK TRANSACTION Trans1

-- COMMIT và ROLLBACK sẽ kết thúc transaction 
