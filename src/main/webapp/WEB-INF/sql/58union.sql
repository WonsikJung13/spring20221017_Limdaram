USE mydb6;
SELECT * FROM TableA UNION SELECT * FROM TableB; -- 중복 제거

SELECT * FROM TableA UNION ALL SELECT * FROM TableB; -- 중복 허용

-- 합집합
SELECT * FROM TableA a LEFT JOIN TableB b ON a.col1 = b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.col1 = b.c1;

