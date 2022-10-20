-- CONCAT : 스트링을 연결한 결과 리턴

SELECT CONCAT('ab', 'cd');
SELECT CONCAT('def', ' ', 'xyz', ' captain');

SELECT CustomerID, CustomerName, CONCAT(Address, ' ', City) FROM Customers;

SELECT CONCAT(FirstName, ' ', LastName) fullName FROM Employees;