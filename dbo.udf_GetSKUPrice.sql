IF OBJECT_ID (N'dbo.dbo.udf_GetSKUPrice', N'FN') IS NOT NULL
    DROP FUNCTION dbo.udf_GetSKUPrice;
GO
CREATE FUNCTION dbo.udf_GetSKUPrice (@ID_SKU As INT)

RETURNS decimal(18, 2)
AS
BEGIN
    DECLARE @ret decimal(18, 2);
    SELECT @ret = SUM(b.Quantity)/SUM(b.Quantity)
    FROM Basket b
    WHERE b.ID_SKU = @ID_SKU
    RETURN @ret;
END;

/*Создать функцию (на выходе: файл в репозитории dbo.udf_GetSKUPrice.sql в ветке Functions)
--3.1 Входной параметр @ID_SKU
3.2 Рассчитывает стоимость передаваемого продукта из таблицы dbo.Basket по формуле
   3.1.1 сумма Value по переданному SKU / сумма Quantity по переданному SKU
3.3 На выходе значение типа decimal(18, 2)*/