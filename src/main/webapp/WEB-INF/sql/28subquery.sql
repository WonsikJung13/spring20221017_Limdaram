-- 서브 쿼리 : 쿼리가 다른 쿼리안에 작성될 수 있다

SELECT productName, max(Price) FROM Products; -- 잘못된 결괏값

-- 가장 높은 가격의 상품명 조회
SELECT ProductName, Price FROM Products WHERE Price = (SELECT  max(Price) FROM Products);

-- 가장 낮은 가격의 상품명 조회
SELECT ProductName, Price FROM Products WHERE Price = (SELECT min(Price) FROM Products);

-- 평균 가격보다 높은 상품들 조회
SELECT avg(price) FROM Products;
SELECT ProductName, Price FROM Products WHERE Price > (SELECT avg(Price) FROM Products);

-- 카테고리별 평균
SELECT * FROM (SELECT CategoryID, avg(Price) average FROM Products GROUP BY CategoryID) A
WHERE average > 30;