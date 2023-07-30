CREATE TABLE  Employees(
  ID INT PRIMARY KEY IDENTITY,
  Name NVARCHAR(20),
  Birthday date,
  Email nvarchar(30),
  Position nvarchar(30),
  Department nvarchar(30)
)
/*2.1 dbo.SKU (ID identity, Code, Name)
   2.1.1 ����������� �� ������������ ���� Code
   2.1.2 ���� Code �����������: "s" + ID
2.2 dbo.Family (ID identity, SurName, BudgetValue)
2.3 dbo.Basket (ID identity, ID_SKU (������� ���� �� ������� dbo.SKU), ID_Family (������� ���� �� ������� dbo.Family) Quantity, Value, PurchaseDate, DiscountValue)
   2.3.1 �����������, ��� ���� Quantity � Value �� ����� ���� ������ 0
  2.3.2 �������� �������� �� ��������� ��� ���� PurchaseDate: ���� ���������� ������ (������� ����)*/