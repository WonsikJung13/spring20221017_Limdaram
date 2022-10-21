CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE Products AS SELECT * FROM w3schools.Products;
create TABLE Categories AS SELECT * FROM w3schools.Categories;

DESC Products;
DESC Categories;

ALTER TABLE Products ADD PRIMARY KEY (ProductID);

ALTER TABLE Categories ADD PRIMARY KEY (CategoryID);
ALTER TABLE Products ADD FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID);

SELECT * FROM Categories;

INSERT into Products(ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('toy', 1, 9, '1ea' 38); -- foreign key 제약사항 위반
-- categoryID (foreign key)는 1부터 8까지 있다
-- 없는 값 9를 새로 입력하려고 하니 실패

