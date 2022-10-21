USE mydb1;

-- data type
-- 문자 (VARCHAR, CHAR)
-- 수 (INT, DEC)
-- 날짜 (DATE, DATETIME)

-- 문자열
-- VARCHAR(size) : size까지의 문자열 저장
CREATE TABLE myTable01(
    col1 VARCHAR(5),
    col2 VARCHAR(2)
);

INSERT INTO myTable01 (col1, col2) VALUES ('abcde', 'ab');
SELECT * FROM myTable01;

INSERT INTO myTable01 (col1, col2) VALUES ('abc', 'a');
SELECT * FROM myTable01;

iNSERT INTO myTable01 (col1, col2) VALUES ('abcde', 'asdf');
-- col2의 size는 2개인데 4개를 넣을려고 해서 실패 (asdf -> 4개)

INSERT INTO myTable01 (col1, col2) VALUES ('daram', 'DR');
SELECT * FROM myTable01;

-- 이름 : VARCHAR(50)
-- 주소 : VARCHAR(255)

-- CHAR : 고정길이 데이터 저장
-- CHAR(size) : size 만큼 저장됨

CREATE TABLE myTable02 (
    col1 VARCHAR(3),
    col2 CHAR(3)
);

INSERT INTO myTable02 (col1, col2) VALUES ('abc', 'def');
SELECT * FROM myTable02;

INSERT INTO myTable02 (col1, col2) VALUES ('abc', 'abcd'); -- 실패

INSERT INTO myTable02 (col1, col2) VALUES ('ab', 'ab');
SELECT * FROM myTable02; -- ab와 ab 가 입력 (ab스페이스)


