-- '1996-07-04'에 주문된 상품명들 조회
SELECT p.ProductName FROM OrderDetails od JOIN Products p
ON od.ProductId = p.ProductId
JOIN Orders o
ON od.OrderId = o.OrderId
WHERE o.OrderDate = '1996-07-04';

SELECT p.ProductName FROM Orders o JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductId = p.ProductId
WHERE o.OrderDate = '1996-07-04';

-- 고객별 주문 총 금액 조회
SELECT c.CustomerID, c.CustomerName, SUM(od.Quantity * p.Price) FROM Customers c JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductId = p.ProductId
GROUP BY c.CustomerID
ORDER BY c.CustomerID;

-- 총 금액 10000 이상인 고객들
SELECT c.CustomerID, c.CustomerName, SUM(od.Quantity * p.Price) Total FROM Customers c JOIN Orders o
      ON c.CustomerID = o.CustomerID
 JOIN OrderDetails od
      ON o.OrderID = od.OrderID
 JOIN Products p
      ON od.ProductId = p.ProductId
GROUP BY c.CustomerID
HAVING Total >= 10000
ORDER BY c.CustomerID;


