USE w3schools;
SELECT * FROM Customers ORDER BY CustomerID DESC;
INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Lim', 'daram', 'seoul', 'gangnam', '1111', 'korea');

SELECT MAX(CustomerID) FROM Customers;
-- MAX를 SELECT 하는 순간에도 동시에 값이 늘어나고 있기 때문에 쓰면 안된다
