
CREATE TRIGGER TR_Basket_insert_update    
on Basket
FOR  INSERT

AS
IF @@ROWCOUNT > 2  
BEGIN  
   INSERT INTO Basket (DiscountValue)
 VALUE(Basket.Value*0.5)
END
ELSE
BEGIN
	INSERT INTO Basket (DiscountValue)
	VALUE(Basket.Value*0.5)
END;

