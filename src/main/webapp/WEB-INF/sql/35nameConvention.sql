-- table명, 컬럼명 작성 관습
-- 회사의 규칙을 따름

-- 대소문자 구분 안함
-- snake_lower_case
CREATE TABLE myTable09 (
    yourCarName VARCHAR(255) -- your_car_name
);
INSERT INTO myTable09 (yourCarName) VALUES ('tesla');
SELECT * FROM myTable09;

-- 테이블명 대소문자 구분 함 (현재 버전에서는)
SELECT * FROM myTable09;
-- SELECT * FROM mytable09; -- 안됨

