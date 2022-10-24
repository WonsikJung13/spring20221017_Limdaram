CREATE DATABASE mydb5;
USE mydb5;

CREATE TABLE Categories AS
SELECT CategoryID, CategoryName
FROM w3schools.Categories;
CREATE TABLE Products AS
SELECT ProductID, productName, CategoryID
FROM w3schools.Products;

SELECT *
FROM Products;
SELECT *
FROM Categories;

-- 'Chais' 상품이 어떤 카테고리명에 소속되어 있는가
SELECT *
FROM Products
WHERE productName = 'Chais';
SELECT *
FROM Categories
WHERE CategoryID = 1;

SELECT *
FROM Categories
WHERE CategoryID = (SELECT CategoryID
                    FROM Products
                    WHERE productName = 'Chais');

-- JOIN : 두 개 이상의 테이블을 연결해서 조회할 수 있다

-- CARTESIAN PRODUCT
-- 결과행 = A row * B row
-- 결과열 = A col + B col

SELECT COUNT(*)
FROM Products; -- Products : 77개
DESC Products; -- 3 cols

SELECT COUNT(*)
FROM Categories; -- Categories : 8개
DESC Categories;
-- 2 cols

-- Products와 Categories 를 Cartesian Product
-- 결과행의 수 : 77 * 8
-- 결과열의 수 : 3 + 2

-- Cartesian Product
SELECT *
FROM Products
         JOIN Categories; -- 행 : 616, 열 : 5
SELECT COUNT(*)
FROM Products
         JOIN Categories;

SELECT *
FROM Products
         JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID;

SELECT *
FROM Products
         JOIN Categories ON Products.CategoryID = Categories.CategoryID;

SELECT *
FROM Products
         JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.productName = 'Chais';

SELECT *
FROM Products
         JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
  AND Products.productName = 'Chais';

-- Ikura 라는 상품의 카테고리명 조회
-- Seafood 카테고리에 속한 상품명들 조회

SELECT CategoryName
FROM Products
JOIN Categories C ON Products.CategoryID = C.CategoryID
WHERE Products.ProductName = 'Ikura';

SELECT CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.productName = 'Ikura';

SELECT P.ProductName
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
WHERE C.CategoryName = 'Seafood';

-- ALTER : 테이블명, 컬럼명에 별칭
SELECT p.ProductName
-- FROM Categories AS c JOIN Products AS p
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE c.CategoryName = 'Seafood';





