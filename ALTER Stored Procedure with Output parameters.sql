DECLARE @count INT, @amt DECIMAL

EXEC uspCUSTID_TotAmt
@CID = 5,
@TotAmt = 3000,
@Amount = @amt OUTPUT,
@Product_count = @count OUTPUT

SELECT @count AS 'Number of products ordered', @amt AS 'above'