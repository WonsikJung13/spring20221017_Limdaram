-- NULL 관련 함수
SELECT * FROm Products;
SELECT COUNT(*) FROM Products;
SELECT COUNT(Price) FROM Products;
SELECT AVG(Price) FROM Products;

-- IFNULL : 값이 없으면 (NULL) 다른 값으로 바꿔서 조회
SELECT Price FROM Products;
SELECT IFNULL(Price, 0) FROM Products; -- null의 값이 있다면 0으로 바꾸기

SELECT ProductID, ProductName, SupplierID, CategoryID, IFNULL(Price, 0) FROM Products;
SELECT  AVG(Price) FROM Products; -- 28.866
SELECT AVG(IFNULL(Price, 0)) FROM Products; -- null까지 추가(0으로 해서) -- 28.4962

-- customers 테이블에 customerName이 null이면 'Anonymous'라고 출력
SELECT IFNULL(CustomerName, 'Anonymous') FROM Customers;

