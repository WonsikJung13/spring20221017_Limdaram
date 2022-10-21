-- UNIQUE : 같은 값을 가질 수 없음
CREATE TABLE MyTable15 (
    col1 INT,
    col2 INT UNIQUE
);
INSERT INTO MyTable15 (col1, col2) VALUES (1, 1);
SELECT * FROM MyTable15;

INSERT INTO MyTable15 (col1, col2) VALUES (1, 2);
SELECT * FROM MyTable15;

INSERT INTO MyTable15 (col1, col2) VALUES (1, 1);
-- col2에는 같은값을 넣을 수 없다 (실패)

INSERT INTO MyTable15 (col1) VALUES (1);
SELECT * FROM MyTable15;
-- NOT NULL 제약사항을 준건 아니니까 null은 가능

-- 제약사항 확인하기
DESC MyTable15;
DESC MyTable14;
DESC MyTable13;
DESC MyTable12;
