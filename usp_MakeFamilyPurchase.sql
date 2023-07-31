CREATE PROCEDURE AddProduct
    @FamilySurName VARCHAR(255)
  AS
    BEGIN
	BEGIN TRY
	 UPDATE Family 
     SET BudgetValue=dbo.Family.BudgetValue-(SELECT sum(Basket.Value) FROM Basket WHERE Basket.ID_Family=Family.ID)
	 WHERE Family.SurName=@FamilySurName
	END TRY
	 BEGIN CATCH
		PRINT 'такой семьи нет'
	END CATCH
    END

