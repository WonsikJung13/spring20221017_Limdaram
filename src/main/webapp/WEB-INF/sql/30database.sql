-- DATABASE(SCHEMA) 스키마 만들기
CREATE DATABASE mydb1;

-- 데이터베이스 사용하기
USE mydb1;

-- 다른 스키마(데이터베이스)에 있는 테이블 사용하기
-- 앞에 스키마명 붙여서 사용
USE mydb1;
SELECT * FROM w3schools.Customers;

-- 데이터베이스 삭제하기
DROP DATABASE w3schools;
