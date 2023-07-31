

CREATE VIEW dbo.vw_SKUPrice AS
SELECT SKU.ID AS SKU_ID, 
        SKU.Name,
        SKU.Code,
		dbo.udf_GetSKUPrice(ID) as Price
FROM SKU 
