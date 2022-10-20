-- 내장 함수들

-- MIN : 가장 작은 값
SELECT * FROM Products ORDER BY Price;
SELECT MIN(Price) FROM Products;

-- MAX : 가장 큰 값
SELECT * FROM Products ORDER BY Price DESC;
SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers;
SELECT MAX(CustomerName) FROM Customers;
SELECT * FROM Customers ORDER BY CustomerName DESC;

SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- COUNT : 몇 개의 데이터가 있는지 리턴
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;
-- COUNT 함수 NULL은 생략
INSERT INTO Customers (ContactName, City, Country) VALUES ('captain', 'ny', 'USA');
SELECT COUNT(*) FROM Customers; -- 63개
SELECT COUNT(CustomerName) FROM Customers; -- 64개 (null은 count하지 않는다)
SELECT COUNT(ContactName) FROM Customers; -- 64개

SELECT COUNT(*) FROM Products WHERE Price >= 100.00;
SELECT COUNT(*) FROM Employees WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

-- AVG : 평균
SELECT * FROM Products;
SELECT AVG(Price) FROM Products;
-- NULL 데이터 무시
INSERT INTO Products (ProductName) VALUES ('Limdaram');
SELECT AVG(Price) FROM Products; -- price값이 없는 Limdaram을 추가했을때 평균값은 변하지 않는다

-- 평균주문수량
SELECT AVG(Quantity) FROM OrderDetails;

-- SUM : 합계
SELECT * FROM Products;
SELECT SUM(Price) FROM Products;

-- OrderDetails에서 총 주문수량 조회
SELECT SUM(Quantity) FROM OrderDetails;
