-- ALIAS : 컬럼/테이블에 별칭을 줄 수 있다
-- AS

SELECT CustomerID, CustomerName FROM Customers;
SELECT CustomerID AS id, CustomerName AS name from Customers;

SELECT CustomerID AS id, IFNULL(CustomerName, 'Anonymous') AS name from Customers;

SELECT EmployeeID As id, FirstName AS fname, LastName AS lname, BirthDate AS birth FROM Employees;

-- AS 키워드는 생략 가능하다
SELECT EmployeeID id, FirstName fname, LastName lname, BirthDate birth FROM Employees;

SELECT IFNULL(Price, 0.00) Price FROM Products;