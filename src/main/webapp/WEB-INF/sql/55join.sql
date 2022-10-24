SELECT * FROM Customers c JOIN Orders o JOIN Employees e;

-- 총 rows : c row * o row * e row
-- 총 col : c col + o col + e col

SELECT COUNT(*) FROM Customers; -- 91
SELECT COUNT(*) FROM Orders; -- 830
SELECT COUNT(*) FROM Employees; -- 9
SELECT COUNT(*) FROM Customers c JOIN Orders o JOIN Employees e; -- 679770

DESC Customers; -- 7
DESC Orders; -- 5
DESC Employees; -- 6

SELECT c.CustomerName, e.FirstName, e.LastName FROM Customers c JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN Employees e
    ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- '1996-07-04'에 주문을 처리한 직원이름과 배송한 배송자명 조회
SELECT e.FirstName, e.LastName, s.ShipperName FROM Shippers s JOIN Orders o
ON s.ShipperID = o.ShipperID
JOIN Employees e
ON e.EmployeeID = o.EmployeeID
WHERE o.OrderDate = '1996-07-04';

