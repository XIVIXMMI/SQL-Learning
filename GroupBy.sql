-- GROUP BY

-- Xuất ra danh sách tên bộ môn và số lượng giáo viên của bộ đó
SELECT BM.TENBM, count(*) AS N'Số lượng Giáo Viên ' 
FROM BOMON AS BM, GIAOVIEN AS GV
WHERE BM.MABM = GV.MABM
GROUP BY BM.TENBM
-- Row hiển thị phải là thuộc tính nằm trong khối group by hoặc là Agreeate function 

-- Lấy ra danh sách giáo viên có lương > lương trung bình của Giáo Viên
SELECT * FROM GIAOVIEN
WHERE LUONG >
(SELECT SUM (LUONG) FROM GIAOVIEN)/
(SELECT COUNT(*) FROM GIAOVIEN)

-- Xuất ra tên giáo viên và số lượng đề tài giáo voeen đó đã làm 
SELECT GV.HOTEN, COUNT(*)
FROM GIAOVIEN AS GV, THAMGIADT AS TGDT
WHERE GV.MAGV = TGDT.MAGV
GROUP BY GV.MAGV, GV.HOTEN

/*
Bài tập
1. Xuất ra tên giáo viên và số lượng người thân của GV đó
2. Xuất ra tên giáo viên và số lượng đề tài đã hoàn thành mà gv đó đã tham gia
3. Xuất ra tên khoa có tổng số lương của gv trong khoa là lớn nhất
*/

/*
Aggreate function
AVG() Return the average value
COUNT() Return the number of rows
FIRST() Return the frist value
LAST() Return the last value
MAX() Return the largest value
MIN() Return the smallest value
ROUND() Rounds a numeric field to the number of decimals specified
SUM() Return the sum


String Function
CHARINDEX searches an expression in a string expression and returns its starting position if found
CONCAT()
LEFT()
LEN() / LENGTH() Return the lenght of the value un a text field
LOWER() / LCASE() Converts character data to lower case
LTRIM() / Cắt khoảng trắng bên trái
SUBSTRING() / MID() Extract character from a text field
PATINDEX()
REPLACE()
RIGHT()
RTRIM() / Cắt khoảng trắng bên phải 
UPPER() / UPCASE() Converts character data to upper case 

*/