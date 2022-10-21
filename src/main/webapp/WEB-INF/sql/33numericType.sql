-- DATA TYPE
-- Numeric

-- INT : 정수
-- DEC : 소수점 있는 형식

USE mydb1;
CREATE TABLE myTable03 (
    col1 INT(3) ZEROFILL,
    col2 INT(4),
    col3 INT
);
INSERT INTO myTable03 (col1,col2, col3) VALUES (99, 9999, 9999999);
SELECT * FROM myTable03;

INSERT INTO myTable03 (col1,col2,col3) VALUES (9999, 9999, 9999999);
SELECT * FROM myTable03;
-- size와 상관없이 전부 저장 가능하다
-- int(숫자)는 출력의 차이

INSERT INTO myTable03 (col1,col2,col3) VALUES (9999, 9999, 99999999999999);
SELECT * FROM myTable03;
-- int의 범위는 -21억 ~ 21억이기 때문에 그 범위를 넘어서 실패

-- DEC : 소수점 있는 형식 수 저장
CREATE TABLE myTable05 (
  col1 DEC(3,1), -- 총 길이는 3, 소수점 아래는 1 : 00.0
  col2 DEC(5,2) -- 총 길이는 5, 소수점 아래는 2 : 000.00
);

INSERT INTO myTable05 (col1, col2) VALUES (10.5, 251.24);
SELECT * FROM myTable05;

INSERT INTO myTable05 (col1, col2) VALUES (100.5, 200.55);
-- 총 길이는 3인데 4개의 자리수를 입력했기 때문에 실패

INSERT INTO myTable05 (col1,col2) VALUES (10.55, 200.55);
SELECT * FROM myTable05;
-- 짤려서 입력 (10.55를 입력했지만 실제 들어간 값은 뒷 자리수가 짤려서 10.5)

-- INT -> java int, long
-- DEC -> java double, BigDecimal