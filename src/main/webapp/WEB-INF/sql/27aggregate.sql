-- aggregate function : 집합 함수, 그룹 함수

SELECT * FROM Products;
SELECT * FROM Products ORDER BY CategoryID, Price DESC;
SELECT MAX(Price) FROM Products;

SELECT CategoryID, max(Price) FROM Products GROUP BY CategoryID;
-- categoryId 별 가장 높은 가격

SELECT CategoryID, min(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, avg(Price) FROM Products GROUP BY CategoryID;
SELECT CategoryID, sum(Price) FROM Products GROUP BY CategoryID;

SELECT Country, count(CustomerName) FROM Customers GROUP BY Country;
SELECT City, count(SupplierName) count FROM Suppliers GROUP BY City;

-- 여러 컬럼으로도 그룹을 묶을 수 있다
SELECT Country, city, count(CustomerName) FROM Customers GROUP BY Country, city;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country, count(*) FROM Customers GROUP BY Country HAVING count(*) > 5;

SELECT CategoryID, avg(Price) avg FROM Products GROUP BY CategoryID HaVING avg(Price) > 30;