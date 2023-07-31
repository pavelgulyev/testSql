IF OBJECT_ID (N'dbo.dbo.udf_GetSKUPrice', N'FN') IS NOT NULL
    DROP FUNCTION dbo.udf_GetSKUPrice;
GO
CREATE FUNCTION dbo.udf_GetSKUPrice (@ID_SKU As INT)

RETURNS decimal(18, 2)
AS
BEGIN
    DECLARE @ret decimal(18, 2);
    SELECT @ret = SUM(b.Value)/SUM(b.Quantity)
    FROM Basket b
    WHERE b.ID_SKU = @ID_SKU
    RETURN @ret;
END;



