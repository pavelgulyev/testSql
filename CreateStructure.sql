CREATE TABLE  SKU(
  ID INT PRIMARY KEY IDENTITY,
  Name NVARCHAR(20),
  Code AS ('s' + ID) PERSISTED UNIQUE  
)
CREATE TABLE  Family(
  ID INT PRIMARY KEY IDENTITY,
  SurName NVARCHAR(20),
  BudgetValue REAL 
)
CREATE TABLE  Basket(
  ID INT PRIMARY KEY IDENTITY,
  ID_SKU INT REFERENCES SKU (ID),
  ID_Family INT REFERENCES Family (ID),
<<<<<<< Updated upstream
  Quantity INT CHECK(Quantity >0),
  Value REAL CHECK(Value >0), 
=======
  Quantity decimal CHECK(Quantity >0),
  Value INT CHECK(Value >0), 
>>>>>>> Stashed changes
  PurchaseDate DATE DEFAULT GETDATE(), 
  DiscountValue REAL
)
