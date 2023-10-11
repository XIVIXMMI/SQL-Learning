-- IF - ELSE T-SQL 


-- VD 1
DECLARE @AverageSalary INT
DECLARE @TotalImployee INT

SELECT @TotalImployee = COUNT(*) FROM GIAOVIEN
SELECT @AverageSalary = SUM(LUONG)/@TotalImployee FROM GIAOVIEN

DECLARE @IdEmployee CHAR(10) = '002'
DECLARE @SalaryGV INT = 0

SELECT @SalaryGV = luong FROM GIAOVIEN WHERE MAGV = @IdEmployee

-- Nếu lương của @IdEmployee > @AverageSalary 
-- Xuất ra lớn hơn
-- Ngược lại
-- Xuất ra nhỏ hơn 

IF @SalaryGV > @AverageSalary
    BEGIN
        PRINT @SalaryGV
        PRINT @AverageSalary
        PRINT N'Bigger'
    END
ELSE   
    BEGIN
        PRINT @SalaryGV
        PRINT @AverageSalary
        PRINT N'Smaller'
    END


-- VD 2

