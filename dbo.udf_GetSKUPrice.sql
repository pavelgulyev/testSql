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

/*������� ������� (�� ������: ���� � ����������� dbo.udf_GetSKUPrice.sql � ����� Functions)
--3.1 ������� �������� @ID_SKU
3.2 ������������ ��������� ������������� �������� �� ������� dbo.Basket �� �������
   3.1.1 ����� Value �� ����������� SKU / ����� Quantity �� ����������� SKU
3.3 �� ������ �������� ���� decimal(18, 2)*/